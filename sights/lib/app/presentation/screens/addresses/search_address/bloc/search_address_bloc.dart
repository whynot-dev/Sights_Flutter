import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sights/domain/entities/address_item_entity.dart';
import 'package:sights/domain/enums/address_type.dart';

part 'search_address_state.dart';

part 'search_address_event.dart';

part 'search_address_bloc.freezed.dart';

class SearchAddressBloc extends Bloc<SearchAddressEvent, SearchAddressState> {
  SearchAddressBloc({
    List<AddressItemEntity>? myAddresses,
    required this.currentCoordinate,
  }) : super(SearchAddressState(myAddresses: myAddresses ?? [], needShowMyAddresses: myAddresses?.isNotEmpty == true)) {
    on<Init>(_init);
    on<CancelClicked>(_cancelClicked);
    on<SearchChanged>(_searchChanged);
    on<AddressClicked>(_addressClicked);
  }

  Point currentCoordinate;

  FutureOr<void> _init(Init event, Emitter<SearchAddressState> emit) {
    emit(state.copyWith());
  }

  FutureOr<void> _cancelClicked(CancelClicked event, Emitter<SearchAddressState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: NavigateBack()));
  }

  FutureOr<void> _searchChanged(SearchChanged event, Emitter<SearchAddressState> emit) async {
    SearchSessionResult result = await YandexSearch.searchByText(
      searchText: event.text,
      geometry: Geometry.fromPoint(Point(latitude: 47.247439, longitude: 39.720526)),
      searchOptions: SearchOptions(searchType: SearchType.geo),
    ).result;

    Map<AddressItemEntity, Point?> searchAddresses = {};

    for (SearchItem item in result.items ?? []) {
      Map<SearchComponentKind, String>? _addressComponents = item.toponymMetadata?.address.addressComponents;
      String _address = _addressComponents?[SearchComponentKind.street]?.isNotEmpty == true
          ? (_addressComponents?[SearchComponentKind.street] ?? '') +
              ' ' +
              (_addressComponents?[SearchComponentKind.house] ?? '')
          : item.toponymMetadata?.address.formattedAddress ?? '';

      searchAddresses.putIfAbsent(
        AddressItemEntity(
          id: 0,
          isDefault: false,
          type: AddressType.delivery,
          address: _address,
          city: item.toponymMetadata?.address.addressComponents[SearchComponentKind.locality] ?? '',
          street: item.toponymMetadata?.address.addressComponents[SearchComponentKind.street] ?? '',
          house: item.toponymMetadata?.address.addressComponents[SearchComponentKind.house] ?? '',
          country: item.toponymMetadata?.address.addressComponents[SearchComponentKind.country] ?? '',
        ),
        () => item.geometry.first.point,
      );
    }

    emit(state.copyWith(
      searchAddresses: searchAddresses,
      needShowMyAddresses: !event.text.isNotEmpty,
    ));
  }

  FutureOr<void> _addressClicked(AddressClicked event, Emitter<SearchAddressState> emit) {
    emit(state.copyWith(action: null));
    if (event.isSearchAddress) {
      emit(state.copyWith(action: NavigateBack(result: state.searchAddresses[event.addressItemEntity])));
    }
  }
}

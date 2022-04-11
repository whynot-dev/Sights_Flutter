import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/navigation/navigation_type.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sights/core/failures.dart';
import 'package:sights/data/gateways/local/preferences_local_gateway.dart';
import 'package:sights/data/repositories/profile_repository.dart';
import 'package:sights/domain/entities/address_item_entity.dart';
import 'package:sights/domain/entities/profile_entity.dart';
import 'package:sights/domain/enums/address_type.dart';

part 'addresses_state.dart';

part 'addresses_event.dart';

part 'addresses_bloc.freezed.dart';

class AddressesBloc extends Bloc<AddressesEvent, AddressesState> {
  AddressesBloc({
    this.profile,
    required this.profileRepository,
    required this.preferencesLocalGateway,
  }) : super(
          AddressesState(
            addresses: profile?.address?.items.where((item) => item.type == AddressType.delivery).toList() ?? [],
          ),
        ) {
    on<Init>(_init);
    on<NewAddressClicked>(_newAddressClicked);
    on<AddressClicked>(_addressClicked);
    on<GetProfile>(_getProfile);
    this.add(AddressesEvent.init());
  }

  final ProfileEntity? profile;
  final ProfileRepository profileRepository;
  final PreferencesLocalGateway preferencesLocalGateway;

  FutureOr<void> _init(Init event, Emitter<AddressesState> emit) {}

  FutureOr<void> _getProfile(GetProfile event, Emitter<AddressesState> emit) async {
    String token = (await preferencesLocalGateway.getToken()) ?? '';

    ProfileEntity? profile;

    Either<dynamic, Failure> result = await profileRepository.getProfile(token: token);
    result.fold(
      (data) {
        profile = data;
      },
      (error) {},
    );
    if (profile != null) {
      emit(
        state.copyWith(
          addresses: profile?.address?.items.where((item) => item.type == AddressType.delivery).toList() ?? [],
        ),
      );
    }
  }

  FutureOr<void> _newAddressClicked(NewAddressClicked event, Emitter<AddressesState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(
      action: NavigateAction.navigateToAddressOnMap(
        NavigateType.push,
        myAddresses: state.addresses,
        addressesBloc: this,
        actionForPopUntil: NavigateAction.navigateToAddresses(NavigateType.popUntil),
      ),
    ));
  }

  FutureOr<void> _addressClicked(AddressClicked event, Emitter<AddressesState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(
      action: NavigateAction.navigateToEditAddress(
        NavigateType.push,
        addressItemEntity: event.addressItemEntity,
        addressesBloc: this,
        actionForPopUntil: NavigateAction.navigateToAddresses(NavigateType.popUntil),
      ),
    ));
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/navigation/navigation_type.dart';
import 'package:sights/app/presentation/screens/addresses/bloc/addresses_bloc.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sights/core/failures.dart';
import 'package:sights/data/gateways/local/preferences_local_gateway.dart';
import 'package:sights/data/repositories/profile_repository.dart';
import 'package:sights/domain/entities/address_item_entity.dart';
import 'package:sights/domain/entities/network/request/save_address_body.dart';

part 'edit_address_state.dart';

part 'edit_address_event.dart';

part 'edit_address_bloc.freezed.dart';

class EditAddressBloc extends Bloc<EditAddressEvent, EditAddressState> {
  EditAddressBloc({
    this.addressItemEntity,
    this.address,
    required this.preferencesLocalGateway,
    required this.profileRepository,
    this.addressesBloc,
    this.isNewAddress = false,
    required this.actionForPopUntil,
  }) : super(EditAddressState(
          address: addressItemEntity?.address ?? '',
          comment: addressItemEntity?.comment,
          entrance: addressItemEntity?.structure,
          floor: addressItemEntity?.floor,
          apartment: addressItemEntity?.apartment,
        )) {
    on<Init>(_init);
    on<ApartmentChanged>(_apartmentChanged);
    on<EntranceChanged>(_entranceChanged);
    on<FloorChanged>(_floorChanged);
    on<CommentChanged>(_commentChanged);
    on<SaveClicked>(_saveClicked);
    on<DeleteClicked>(_deleteClicked);
  }

  final PreferencesLocalGateway preferencesLocalGateway;
  final ProfileRepository profileRepository;
  final AddressesBloc? addressesBloc;
  final AddressItemEntity? addressItemEntity;
  final String? address;
  final bool isNewAddress;
  final NavigateAction actionForPopUntil;

  FutureOr<void> _init(Init event, Emitter<EditAddressState> emit) {
    emit(state.copyWith());
  }

  FutureOr<void> _apartmentChanged(ApartmentChanged event, Emitter<EditAddressState> emit) {
    emit(state.copyWith(apartment: event.text));
  }

  FutureOr<void> _entranceChanged(EntranceChanged event, Emitter<EditAddressState> emit) {
    emit(state.copyWith(entrance: event.text));
  }

  FutureOr<void> _floorChanged(FloorChanged event, Emitter<EditAddressState> emit) {
    emit(state.copyWith(floor: event.text));
  }

  FutureOr<void> _commentChanged(CommentChanged event, Emitter<EditAddressState> emit) {
    emit(state.copyWith(comment: event.text));
  }

  FutureOr<void> _saveClicked(SaveClicked event, Emitter<EditAddressState> emit) async {
    emit(state.copyWith(action: null));
    if (addressItemEntity != null) {
      if (isNewAddress) {
        String token = await preferencesLocalGateway.getToken() ?? '';
        bool success = false;
        Either<bool, Failure> result = await profileRepository.newAddress(
          token: token,
          saveAddressBody: SaveAddressBody(
            type: addressItemEntity!.type.name,
            city: addressItemEntity!.city,
            street: addressItemEntity!.street,
            house: addressItemEntity!.house,
            name: addressItemEntity!.name,
            floor: state.floor,
            apartment: state.apartment,
            structure: state.entrance,
            intercom: addressItemEntity!.intercom,
            comment: state.comment,
          ),
        );
        result.fold(
          (data) {
            success = data;
          },
          (error) {},
        );
        if (success) {
          addressesBloc?.add(AddressesEvent.getProfile());
          emit(state.copyWith(action: actionForPopUntil));
        }
      } else {
        String token = await preferencesLocalGateway.getToken() ?? '';
        bool success = false;
        Either<bool, Failure> result = await profileRepository.updateAddress(
          token: token,
          idAddress: addressItemEntity!.id,
          saveAddressBody: SaveAddressBody(
            type: addressItemEntity!.type.name,
            city: addressItemEntity!.city,
            street: addressItemEntity!.street,
            house: addressItemEntity!.house,
            name: addressItemEntity!.name,
            floor: state.floor,
            apartment: state.apartment,
            structure: state.entrance,
            intercom: addressItemEntity!.intercom,
            comment: state.comment,
          ),
        );
        result.fold(
          (data) {
            success = data;
          },
          (error) {},
        );
        if (success) {
          addressesBloc?.add(AddressesEvent.getProfile());
          emit(state.copyWith(action: NavigateAction.navigateBack()));
        }
      }
    }
  }

  FutureOr<void> _deleteClicked(DeleteClicked event, Emitter<EditAddressState> emit) async {
    emit(state.copyWith(action: null));
    if (addressItemEntity != null) {
      String token = await preferencesLocalGateway.getToken() ?? '';
      bool success = false;
      Either<bool, Failure> result = await profileRepository.deleteAddress(
        token: token,
        idAddress: addressItemEntity!.id,
      );
      result.fold(
        (data) {
          success = data;
        },
        (error) {},
      );
      if (success) {
        addressesBloc?.add(AddressesEvent.getProfile());
        emit(state.copyWith(action: NavigateAction.navigateBack()));
      }
    }
  }
}

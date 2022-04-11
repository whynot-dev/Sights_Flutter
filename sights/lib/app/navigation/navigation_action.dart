import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/local_auth.dart';
import 'package:sights/app/presentation/screens/addresses/bloc/addresses_bloc.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/domain/entities/address_item_entity.dart';
import 'package:sights/domain/entities/profile_entity.dart';
import 'package:sights/domain/entities/story_entity.dart';
import 'package:sights/domain/enums/enter_code_type.dart';

import 'navigation_type.dart';

part 'navigation_action.freezed.dart';

@freezed
class NavigateAction with _$NavigateAction implements BlocAction {
  factory NavigateAction.navigateBack({@Default(null) dynamic result}) = NavigateBack;

  factory NavigateAction.navigateToEnterPhoneNumber(NavigateType navigateType) = NavigateToEnterPhoneNumber;

  factory NavigateAction.navigateToEnterPinCode(
    NavigateType navigateType, {
    required EnterCodeType enterCodeType,
  }) = NavigateToEnterPinCode;

  factory NavigateAction.navigateToConfirmAccount(NavigateType navigateType) = NavigateToConfirmAccount;

  factory NavigateAction.navigateToConfirmPhone(
    NavigateType navigateType, {
    required String phoneNumber,
  }) = NavigateToConfirmPhone;

  factory NavigateAction.navigateToConfirmationSteps(
    NavigateType navigateType, {
    ProfileEntity? profile,
  }) = NavigateToConfirmationSteps;


  factory NavigateAction.navigateToNavigation(NavigateType navigateType) = NavigateToNavigation;

  factory NavigateAction.navigateToAddresses(NavigateType navigateType, {ProfileEntity? profile}) = NavigateToAddresses;

  factory NavigateAction.navigateToEditAddress(
    NavigateType navigateType, {
    AddressItemEntity? addressItemEntity,
    @Default(false) bool isNewAddress,
    AddressesBloc? addressesBloc,
    required NavigateAction actionForPopUntil,
  }) = NavigateToEditAddress;

  factory NavigateAction.navigateToAddressOnMap(
    NavigateType navigateType, {
    List<AddressItemEntity>? myAddresses,
    AddressesBloc? addressesBloc,
    required NavigateAction actionForPopUntil,
  }) = NavigateToAddressOnMap;

  factory NavigateAction.showSelectAddressBottomSheet(
    NavigateType navigateType, {
    required List<AddressItemEntity> addresses,
  }) = ShowSelectAddressBottomSheet;
}

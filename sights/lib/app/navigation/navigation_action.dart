import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/domain/enums/enter_code_type.dart';

import 'navigation_type.dart';

part 'navigation_action.freezed.dart';

@freezed
class NavigateAction with _$NavigateAction implements BlocAction {
  const factory NavigateAction.navigateBack({@Default(null) dynamic result}) = NavigateBack;

  const factory NavigateAction.navigateToEnterPhoneNumber(NavigateType navigateType) = NavigateToEnterPhoneNumber;

  const factory NavigateAction.navigateToEnterPinCode(
    NavigateType navigateType, {
    required EnterCodeType enterCodeType,
  }) = NavigateToEnterPinCode;

  const factory NavigateAction.navigateToConfirmPhone(
    NavigateType navigateType, {
    required String phoneNumber,
  }) = NavigateToConfirmPhone;

  const factory NavigateAction.navigateToNavigation(NavigateType navigateType) = NavigateToNavigation;
//factory NavigateAction.navigateToNavigation(NavigateType navigateType) = NavigateToNavigation;
}

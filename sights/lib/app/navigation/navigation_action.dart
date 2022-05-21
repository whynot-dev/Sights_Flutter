import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/domain/enums/map_mode.dart';

import 'navigation_type.dart';

part 'navigation_action.freezed.dart';

@freezed
class NavigateAction with _$NavigateAction implements BlocAction {
  const factory NavigateAction.navigateBack({@Default(null) dynamic result}) = NavigateBack;

  const factory NavigateAction.navigateToMap(NavigateType navigateType, {required MapMode mapMode}) = NavigateToMap;

  const factory NavigateAction.navigateToRoutes(NavigateType navigateType) = NavigateToRoutes;

  const factory NavigateAction.navigateToBuildingRoute(NavigateType navigateType) = NavigateToBuildingRoute;

  const factory NavigateAction.navigateToWebView(NavigateType navigateType, {required String url}) = NavigateToWebView;
//factory NavigateAction.navigateToNavigation(NavigateType navigateType) = NavigateToNavigation;
}

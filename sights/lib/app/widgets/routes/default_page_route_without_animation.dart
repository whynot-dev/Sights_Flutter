import 'package:flutter/material.dart';

class DefaultPageRouteWithoutAnimation<T> extends MaterialPageRoute {
  DefaultPageRouteWithoutAnimation({
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(builder: builder, settings: settings);

  @override
  Duration get transitionDuration => Duration.zero;
}

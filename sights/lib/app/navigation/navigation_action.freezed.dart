// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'navigation_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavigateActionTearOff {
  const _$NavigateActionTearOff();

  NavigateBack navigateBack({dynamic result = null}) {
    return NavigateBack(
      result: result,
    );
  }

  NavigateToMap navigateToMap(NavigateType navigateType,
      {required MapMode mapMode}) {
    return NavigateToMap(
      navigateType,
      mapMode: mapMode,
    );
  }

  NavigateToRoutes navigateToRoutes(NavigateType navigateType) {
    return NavigateToRoutes(
      navigateType,
    );
  }

  NavigateToBuildingRoute navigateToBuildingRoute(NavigateType navigateType) {
    return NavigateToBuildingRoute(
      navigateType,
    );
  }

  NavigateToWebView navigateToWebView(NavigateType navigateType,
      {required String url}) {
    return NavigateToWebView(
      navigateType,
      url: url,
    );
  }
}

/// @nodoc
const $NavigateAction = _$NavigateActionTearOff();

/// @nodoc
mixin _$NavigateAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType, MapMode mapMode)
        navigateToMap,
    required TResult Function(NavigateType navigateType) navigateToRoutes,
    required TResult Function(NavigateType navigateType)
        navigateToBuildingRoute,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType, MapMode mapMode)? navigateToMap,
    TResult Function(NavigateType navigateType)? navigateToRoutes,
    TResult Function(NavigateType navigateType)? navigateToBuildingRoute,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToMap value) navigateToMap,
    required TResult Function(NavigateToRoutes value) navigateToRoutes,
    required TResult Function(NavigateToBuildingRoute value)
        navigateToBuildingRoute,
    required TResult Function(NavigateToWebView value) navigateToWebView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToMap value)? navigateToMap,
    TResult Function(NavigateToRoutes value)? navigateToRoutes,
    TResult Function(NavigateToBuildingRoute value)? navigateToBuildingRoute,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateActionCopyWith<$Res> {
  factory $NavigateActionCopyWith(
          NavigateAction value, $Res Function(NavigateAction) then) =
      _$NavigateActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateActionCopyWith<$Res> {
  _$NavigateActionCopyWithImpl(this._value, this._then);

  final NavigateAction _value;
  // ignore: unused_field
  final $Res Function(NavigateAction) _then;
}

/// @nodoc
abstract class $NavigateBackCopyWith<$Res> {
  factory $NavigateBackCopyWith(
          NavigateBack value, $Res Function(NavigateBack) then) =
      _$NavigateBackCopyWithImpl<$Res>;
  $Res call({dynamic result});
}

/// @nodoc
class _$NavigateBackCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateBackCopyWith<$Res> {
  _$NavigateBackCopyWithImpl(
      NavigateBack _value, $Res Function(NavigateBack) _then)
      : super(_value, (v) => _then(v as NavigateBack));

  @override
  NavigateBack get _value => super._value as NavigateBack;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(NavigateBack(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$NavigateBack implements NavigateBack {
  const _$NavigateBack({this.result = null});

  @JsonKey(defaultValue: null)
  @override
  final dynamic result;

  @override
  String toString() {
    return 'NavigateAction.navigateBack(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateBack &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $NavigateBackCopyWith<NavigateBack> get copyWith =>
      _$NavigateBackCopyWithImpl<NavigateBack>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType, MapMode mapMode)
        navigateToMap,
    required TResult Function(NavigateType navigateType) navigateToRoutes,
    required TResult Function(NavigateType navigateType)
        navigateToBuildingRoute,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
  }) {
    return navigateBack(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType, MapMode mapMode)? navigateToMap,
    TResult Function(NavigateType navigateType)? navigateToRoutes,
    TResult Function(NavigateType navigateType)? navigateToBuildingRoute,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    required TResult orElse(),
  }) {
    if (navigateBack != null) {
      return navigateBack(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToMap value) navigateToMap,
    required TResult Function(NavigateToRoutes value) navigateToRoutes,
    required TResult Function(NavigateToBuildingRoute value)
        navigateToBuildingRoute,
    required TResult Function(NavigateToWebView value) navigateToWebView,
  }) {
    return navigateBack(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToMap value)? navigateToMap,
    TResult Function(NavigateToRoutes value)? navigateToRoutes,
    TResult Function(NavigateToBuildingRoute value)? navigateToBuildingRoute,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    required TResult orElse(),
  }) {
    if (navigateBack != null) {
      return navigateBack(this);
    }
    return orElse();
  }
}

abstract class NavigateBack implements NavigateAction {
  const factory NavigateBack({dynamic result}) = _$NavigateBack;

  dynamic get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateBackCopyWith<NavigateBack> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToMapCopyWith<$Res> {
  factory $NavigateToMapCopyWith(
          NavigateToMap value, $Res Function(NavigateToMap) then) =
      _$NavigateToMapCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType, MapMode mapMode});
}

/// @nodoc
class _$NavigateToMapCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToMapCopyWith<$Res> {
  _$NavigateToMapCopyWithImpl(
      NavigateToMap _value, $Res Function(NavigateToMap) _then)
      : super(_value, (v) => _then(v as NavigateToMap));

  @override
  NavigateToMap get _value => super._value as NavigateToMap;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? mapMode = freezed,
  }) {
    return _then(NavigateToMap(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      mapMode: mapMode == freezed
          ? _value.mapMode
          : mapMode // ignore: cast_nullable_to_non_nullable
              as MapMode,
    ));
  }
}

/// @nodoc

class _$NavigateToMap implements NavigateToMap {
  const _$NavigateToMap(this.navigateType, {required this.mapMode});

  @override
  final NavigateType navigateType;
  @override
  final MapMode mapMode;

  @override
  String toString() {
    return 'NavigateAction.navigateToMap(navigateType: $navigateType, mapMode: $mapMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToMap &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.mapMode, mapMode) ||
                const DeepCollectionEquality().equals(other.mapMode, mapMode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(mapMode);

  @JsonKey(ignore: true)
  @override
  $NavigateToMapCopyWith<NavigateToMap> get copyWith =>
      _$NavigateToMapCopyWithImpl<NavigateToMap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType, MapMode mapMode)
        navigateToMap,
    required TResult Function(NavigateType navigateType) navigateToRoutes,
    required TResult Function(NavigateType navigateType)
        navigateToBuildingRoute,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
  }) {
    return navigateToMap(navigateType, mapMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType, MapMode mapMode)? navigateToMap,
    TResult Function(NavigateType navigateType)? navigateToRoutes,
    TResult Function(NavigateType navigateType)? navigateToBuildingRoute,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    required TResult orElse(),
  }) {
    if (navigateToMap != null) {
      return navigateToMap(navigateType, mapMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToMap value) navigateToMap,
    required TResult Function(NavigateToRoutes value) navigateToRoutes,
    required TResult Function(NavigateToBuildingRoute value)
        navigateToBuildingRoute,
    required TResult Function(NavigateToWebView value) navigateToWebView,
  }) {
    return navigateToMap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToMap value)? navigateToMap,
    TResult Function(NavigateToRoutes value)? navigateToRoutes,
    TResult Function(NavigateToBuildingRoute value)? navigateToBuildingRoute,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    required TResult orElse(),
  }) {
    if (navigateToMap != null) {
      return navigateToMap(this);
    }
    return orElse();
  }
}

abstract class NavigateToMap implements NavigateAction {
  const factory NavigateToMap(NavigateType navigateType,
      {required MapMode mapMode}) = _$NavigateToMap;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  MapMode get mapMode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToMapCopyWith<NavigateToMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToRoutesCopyWith<$Res> {
  factory $NavigateToRoutesCopyWith(
          NavigateToRoutes value, $Res Function(NavigateToRoutes) then) =
      _$NavigateToRoutesCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType});
}

/// @nodoc
class _$NavigateToRoutesCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToRoutesCopyWith<$Res> {
  _$NavigateToRoutesCopyWithImpl(
      NavigateToRoutes _value, $Res Function(NavigateToRoutes) _then)
      : super(_value, (v) => _then(v as NavigateToRoutes));

  @override
  NavigateToRoutes get _value => super._value as NavigateToRoutes;

  @override
  $Res call({
    Object? navigateType = freezed,
  }) {
    return _then(NavigateToRoutes(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
    ));
  }
}

/// @nodoc

class _$NavigateToRoutes implements NavigateToRoutes {
  const _$NavigateToRoutes(this.navigateType);

  @override
  final NavigateType navigateType;

  @override
  String toString() {
    return 'NavigateAction.navigateToRoutes(navigateType: $navigateType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToRoutes &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(navigateType);

  @JsonKey(ignore: true)
  @override
  $NavigateToRoutesCopyWith<NavigateToRoutes> get copyWith =>
      _$NavigateToRoutesCopyWithImpl<NavigateToRoutes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType, MapMode mapMode)
        navigateToMap,
    required TResult Function(NavigateType navigateType) navigateToRoutes,
    required TResult Function(NavigateType navigateType)
        navigateToBuildingRoute,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
  }) {
    return navigateToRoutes(navigateType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType, MapMode mapMode)? navigateToMap,
    TResult Function(NavigateType navigateType)? navigateToRoutes,
    TResult Function(NavigateType navigateType)? navigateToBuildingRoute,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    required TResult orElse(),
  }) {
    if (navigateToRoutes != null) {
      return navigateToRoutes(navigateType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToMap value) navigateToMap,
    required TResult Function(NavigateToRoutes value) navigateToRoutes,
    required TResult Function(NavigateToBuildingRoute value)
        navigateToBuildingRoute,
    required TResult Function(NavigateToWebView value) navigateToWebView,
  }) {
    return navigateToRoutes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToMap value)? navigateToMap,
    TResult Function(NavigateToRoutes value)? navigateToRoutes,
    TResult Function(NavigateToBuildingRoute value)? navigateToBuildingRoute,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    required TResult orElse(),
  }) {
    if (navigateToRoutes != null) {
      return navigateToRoutes(this);
    }
    return orElse();
  }
}

abstract class NavigateToRoutes implements NavigateAction {
  const factory NavigateToRoutes(NavigateType navigateType) =
      _$NavigateToRoutes;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToRoutesCopyWith<NavigateToRoutes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToBuildingRouteCopyWith<$Res> {
  factory $NavigateToBuildingRouteCopyWith(NavigateToBuildingRoute value,
          $Res Function(NavigateToBuildingRoute) then) =
      _$NavigateToBuildingRouteCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType});
}

/// @nodoc
class _$NavigateToBuildingRouteCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToBuildingRouteCopyWith<$Res> {
  _$NavigateToBuildingRouteCopyWithImpl(NavigateToBuildingRoute _value,
      $Res Function(NavigateToBuildingRoute) _then)
      : super(_value, (v) => _then(v as NavigateToBuildingRoute));

  @override
  NavigateToBuildingRoute get _value => super._value as NavigateToBuildingRoute;

  @override
  $Res call({
    Object? navigateType = freezed,
  }) {
    return _then(NavigateToBuildingRoute(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
    ));
  }
}

/// @nodoc

class _$NavigateToBuildingRoute implements NavigateToBuildingRoute {
  const _$NavigateToBuildingRoute(this.navigateType);

  @override
  final NavigateType navigateType;

  @override
  String toString() {
    return 'NavigateAction.navigateToBuildingRoute(navigateType: $navigateType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToBuildingRoute &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(navigateType);

  @JsonKey(ignore: true)
  @override
  $NavigateToBuildingRouteCopyWith<NavigateToBuildingRoute> get copyWith =>
      _$NavigateToBuildingRouteCopyWithImpl<NavigateToBuildingRoute>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType, MapMode mapMode)
        navigateToMap,
    required TResult Function(NavigateType navigateType) navigateToRoutes,
    required TResult Function(NavigateType navigateType)
        navigateToBuildingRoute,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
  }) {
    return navigateToBuildingRoute(navigateType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType, MapMode mapMode)? navigateToMap,
    TResult Function(NavigateType navigateType)? navigateToRoutes,
    TResult Function(NavigateType navigateType)? navigateToBuildingRoute,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    required TResult orElse(),
  }) {
    if (navigateToBuildingRoute != null) {
      return navigateToBuildingRoute(navigateType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToMap value) navigateToMap,
    required TResult Function(NavigateToRoutes value) navigateToRoutes,
    required TResult Function(NavigateToBuildingRoute value)
        navigateToBuildingRoute,
    required TResult Function(NavigateToWebView value) navigateToWebView,
  }) {
    return navigateToBuildingRoute(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToMap value)? navigateToMap,
    TResult Function(NavigateToRoutes value)? navigateToRoutes,
    TResult Function(NavigateToBuildingRoute value)? navigateToBuildingRoute,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    required TResult orElse(),
  }) {
    if (navigateToBuildingRoute != null) {
      return navigateToBuildingRoute(this);
    }
    return orElse();
  }
}

abstract class NavigateToBuildingRoute implements NavigateAction {
  const factory NavigateToBuildingRoute(NavigateType navigateType) =
      _$NavigateToBuildingRoute;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToBuildingRouteCopyWith<NavigateToBuildingRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToWebViewCopyWith<$Res> {
  factory $NavigateToWebViewCopyWith(
          NavigateToWebView value, $Res Function(NavigateToWebView) then) =
      _$NavigateToWebViewCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType, String url});
}

/// @nodoc
class _$NavigateToWebViewCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToWebViewCopyWith<$Res> {
  _$NavigateToWebViewCopyWithImpl(
      NavigateToWebView _value, $Res Function(NavigateToWebView) _then)
      : super(_value, (v) => _then(v as NavigateToWebView));

  @override
  NavigateToWebView get _value => super._value as NavigateToWebView;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? url = freezed,
  }) {
    return _then(NavigateToWebView(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NavigateToWebView implements NavigateToWebView {
  const _$NavigateToWebView(this.navigateType, {required this.url});

  @override
  final NavigateType navigateType;
  @override
  final String url;

  @override
  String toString() {
    return 'NavigateAction.navigateToWebView(navigateType: $navigateType, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToWebView &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  $NavigateToWebViewCopyWith<NavigateToWebView> get copyWith =>
      _$NavigateToWebViewCopyWithImpl<NavigateToWebView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType, MapMode mapMode)
        navigateToMap,
    required TResult Function(NavigateType navigateType) navigateToRoutes,
    required TResult Function(NavigateType navigateType)
        navigateToBuildingRoute,
    required TResult Function(NavigateType navigateType, String url)
        navigateToWebView,
  }) {
    return navigateToWebView(navigateType, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType, MapMode mapMode)? navigateToMap,
    TResult Function(NavigateType navigateType)? navigateToRoutes,
    TResult Function(NavigateType navigateType)? navigateToBuildingRoute,
    TResult Function(NavigateType navigateType, String url)? navigateToWebView,
    required TResult orElse(),
  }) {
    if (navigateToWebView != null) {
      return navigateToWebView(navigateType, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToMap value) navigateToMap,
    required TResult Function(NavigateToRoutes value) navigateToRoutes,
    required TResult Function(NavigateToBuildingRoute value)
        navigateToBuildingRoute,
    required TResult Function(NavigateToWebView value) navigateToWebView,
  }) {
    return navigateToWebView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToMap value)? navigateToMap,
    TResult Function(NavigateToRoutes value)? navigateToRoutes,
    TResult Function(NavigateToBuildingRoute value)? navigateToBuildingRoute,
    TResult Function(NavigateToWebView value)? navigateToWebView,
    required TResult orElse(),
  }) {
    if (navigateToWebView != null) {
      return navigateToWebView(this);
    }
    return orElse();
  }
}

abstract class NavigateToWebView implements NavigateAction {
  const factory NavigateToWebView(NavigateType navigateType,
      {required String url}) = _$NavigateToWebView;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToWebViewCopyWith<NavigateToWebView> get copyWith =>
      throw _privateConstructorUsedError;
}

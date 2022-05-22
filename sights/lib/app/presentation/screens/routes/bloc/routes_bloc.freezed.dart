// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'routes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RoutesStateTearOff {
  const _$RoutesStateTearOff();

  _RoutesState call(
      {BlocAction? action, List<SaveRouteEntity> routes = const []}) {
    return _RoutesState(
      action: action,
      routes: routes,
    );
  }
}

/// @nodoc
const $RoutesState = _$RoutesStateTearOff();

/// @nodoc
mixin _$RoutesState {
  BlocAction? get action => throw _privateConstructorUsedError;
  List<SaveRouteEntity> get routes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoutesStateCopyWith<RoutesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutesStateCopyWith<$Res> {
  factory $RoutesStateCopyWith(
          RoutesState value, $Res Function(RoutesState) then) =
      _$RoutesStateCopyWithImpl<$Res>;
  $Res call({BlocAction? action, List<SaveRouteEntity> routes});
}

/// @nodoc
class _$RoutesStateCopyWithImpl<$Res> implements $RoutesStateCopyWith<$Res> {
  _$RoutesStateCopyWithImpl(this._value, this._then);

  final RoutesState _value;
  // ignore: unused_field
  final $Res Function(RoutesState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? routes = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      routes: routes == freezed
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<SaveRouteEntity>,
    ));
  }
}

/// @nodoc
abstract class _$RoutesStateCopyWith<$Res>
    implements $RoutesStateCopyWith<$Res> {
  factory _$RoutesStateCopyWith(
          _RoutesState value, $Res Function(_RoutesState) then) =
      __$RoutesStateCopyWithImpl<$Res>;
  @override
  $Res call({BlocAction? action, List<SaveRouteEntity> routes});
}

/// @nodoc
class __$RoutesStateCopyWithImpl<$Res> extends _$RoutesStateCopyWithImpl<$Res>
    implements _$RoutesStateCopyWith<$Res> {
  __$RoutesStateCopyWithImpl(
      _RoutesState _value, $Res Function(_RoutesState) _then)
      : super(_value, (v) => _then(v as _RoutesState));

  @override
  _RoutesState get _value => super._value as _RoutesState;

  @override
  $Res call({
    Object? action = freezed,
    Object? routes = freezed,
  }) {
    return _then(_RoutesState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      routes: routes == freezed
          ? _value.routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<SaveRouteEntity>,
    ));
  }
}

/// @nodoc

class _$_RoutesState implements _RoutesState {
  _$_RoutesState({this.action, this.routes = const []});

  @override
  final BlocAction? action;
  @JsonKey(defaultValue: const [])
  @override
  final List<SaveRouteEntity> routes;

  @override
  String toString() {
    return 'RoutesState(action: $action, routes: $routes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoutesState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.routes, routes) ||
                const DeepCollectionEquality().equals(other.routes, routes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(routes);

  @JsonKey(ignore: true)
  @override
  _$RoutesStateCopyWith<_RoutesState> get copyWith =>
      __$RoutesStateCopyWithImpl<_RoutesState>(this, _$identity);
}

abstract class _RoutesState implements RoutesState {
  factory _RoutesState({BlocAction? action, List<SaveRouteEntity> routes}) =
      _$_RoutesState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  List<SaveRouteEntity> get routes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RoutesStateCopyWith<_RoutesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RoutesEventTearOff {
  const _$RoutesEventTearOff();

  Init init() {
    return const Init();
  }

  RouteClicked routeClicked(int index) {
    return RouteClicked(
      index,
    );
  }

  RouteDeleteClicked routeDeleteClicked(int index) {
    return RouteDeleteClicked(
      index,
    );
  }
}

/// @nodoc
const $RoutesEvent = _$RoutesEventTearOff();

/// @nodoc
mixin _$RoutesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int index) routeClicked,
    required TResult Function(int index) routeDeleteClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int index)? routeClicked,
    TResult Function(int index)? routeDeleteClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(RouteClicked value) routeClicked,
    required TResult Function(RouteDeleteClicked value) routeDeleteClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(RouteClicked value)? routeClicked,
    TResult Function(RouteDeleteClicked value)? routeDeleteClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutesEventCopyWith<$Res> {
  factory $RoutesEventCopyWith(
          RoutesEvent value, $Res Function(RoutesEvent) then) =
      _$RoutesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoutesEventCopyWithImpl<$Res> implements $RoutesEventCopyWith<$Res> {
  _$RoutesEventCopyWithImpl(this._value, this._then);

  final RoutesEvent _value;
  // ignore: unused_field
  final $Res Function(RoutesEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$RoutesEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;
}

/// @nodoc

class _$Init implements Init {
  const _$Init();

  @override
  String toString() {
    return 'RoutesEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int index) routeClicked,
    required TResult Function(int index) routeDeleteClicked,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int index)? routeClicked,
    TResult Function(int index)? routeDeleteClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(RouteClicked value) routeClicked,
    required TResult Function(RouteDeleteClicked value) routeDeleteClicked,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(RouteClicked value)? routeClicked,
    TResult Function(RouteDeleteClicked value)? routeDeleteClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements RoutesEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class $RouteClickedCopyWith<$Res> {
  factory $RouteClickedCopyWith(
          RouteClicked value, $Res Function(RouteClicked) then) =
      _$RouteClickedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$RouteClickedCopyWithImpl<$Res> extends _$RoutesEventCopyWithImpl<$Res>
    implements $RouteClickedCopyWith<$Res> {
  _$RouteClickedCopyWithImpl(
      RouteClicked _value, $Res Function(RouteClicked) _then)
      : super(_value, (v) => _then(v as RouteClicked));

  @override
  RouteClicked get _value => super._value as RouteClicked;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(RouteClicked(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RouteClicked implements RouteClicked {
  const _$RouteClicked(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'RoutesEvent.routeClicked(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RouteClicked &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $RouteClickedCopyWith<RouteClicked> get copyWith =>
      _$RouteClickedCopyWithImpl<RouteClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int index) routeClicked,
    required TResult Function(int index) routeDeleteClicked,
  }) {
    return routeClicked(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int index)? routeClicked,
    TResult Function(int index)? routeDeleteClicked,
    required TResult orElse(),
  }) {
    if (routeClicked != null) {
      return routeClicked(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(RouteClicked value) routeClicked,
    required TResult Function(RouteDeleteClicked value) routeDeleteClicked,
  }) {
    return routeClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(RouteClicked value)? routeClicked,
    TResult Function(RouteDeleteClicked value)? routeDeleteClicked,
    required TResult orElse(),
  }) {
    if (routeClicked != null) {
      return routeClicked(this);
    }
    return orElse();
  }
}

abstract class RouteClicked implements RoutesEvent {
  const factory RouteClicked(int index) = _$RouteClicked;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouteClickedCopyWith<RouteClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteDeleteClickedCopyWith<$Res> {
  factory $RouteDeleteClickedCopyWith(
          RouteDeleteClicked value, $Res Function(RouteDeleteClicked) then) =
      _$RouteDeleteClickedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$RouteDeleteClickedCopyWithImpl<$Res>
    extends _$RoutesEventCopyWithImpl<$Res>
    implements $RouteDeleteClickedCopyWith<$Res> {
  _$RouteDeleteClickedCopyWithImpl(
      RouteDeleteClicked _value, $Res Function(RouteDeleteClicked) _then)
      : super(_value, (v) => _then(v as RouteDeleteClicked));

  @override
  RouteDeleteClicked get _value => super._value as RouteDeleteClicked;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(RouteDeleteClicked(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RouteDeleteClicked implements RouteDeleteClicked {
  const _$RouteDeleteClicked(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'RoutesEvent.routeDeleteClicked(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RouteDeleteClicked &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $RouteDeleteClickedCopyWith<RouteDeleteClicked> get copyWith =>
      _$RouteDeleteClickedCopyWithImpl<RouteDeleteClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int index) routeClicked,
    required TResult Function(int index) routeDeleteClicked,
  }) {
    return routeDeleteClicked(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int index)? routeClicked,
    TResult Function(int index)? routeDeleteClicked,
    required TResult orElse(),
  }) {
    if (routeDeleteClicked != null) {
      return routeDeleteClicked(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(RouteClicked value) routeClicked,
    required TResult Function(RouteDeleteClicked value) routeDeleteClicked,
  }) {
    return routeDeleteClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(RouteClicked value)? routeClicked,
    TResult Function(RouteDeleteClicked value)? routeDeleteClicked,
    required TResult orElse(),
  }) {
    if (routeDeleteClicked != null) {
      return routeDeleteClicked(this);
    }
    return orElse();
  }
}

abstract class RouteDeleteClicked implements RoutesEvent {
  const factory RouteDeleteClicked(int index) = _$RouteDeleteClicked;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouteDeleteClickedCopyWith<RouteDeleteClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

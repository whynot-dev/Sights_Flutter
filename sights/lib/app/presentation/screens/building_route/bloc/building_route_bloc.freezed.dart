// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'building_route_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BuildingRouteStateTearOff {
  const _$BuildingRouteStateTearOff();

  _BuildingRouteState call(
      {BlocAction? action,
      RoutePointEntity? departure,
      RoutePointEntity? destination}) {
    return _BuildingRouteState(
      action: action,
      departure: departure,
      destination: destination,
    );
  }
}

/// @nodoc
const $BuildingRouteState = _$BuildingRouteStateTearOff();

/// @nodoc
mixin _$BuildingRouteState {
  BlocAction? get action => throw _privateConstructorUsedError;
  RoutePointEntity? get departure => throw _privateConstructorUsedError;
  RoutePointEntity? get destination => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BuildingRouteStateCopyWith<BuildingRouteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingRouteStateCopyWith<$Res> {
  factory $BuildingRouteStateCopyWith(
          BuildingRouteState value, $Res Function(BuildingRouteState) then) =
      _$BuildingRouteStateCopyWithImpl<$Res>;
  $Res call(
      {BlocAction? action,
      RoutePointEntity? departure,
      RoutePointEntity? destination});
}

/// @nodoc
class _$BuildingRouteStateCopyWithImpl<$Res>
    implements $BuildingRouteStateCopyWith<$Res> {
  _$BuildingRouteStateCopyWithImpl(this._value, this._then);

  final BuildingRouteState _value;
  // ignore: unused_field
  final $Res Function(BuildingRouteState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? departure = freezed,
    Object? destination = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      departure: departure == freezed
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as RoutePointEntity?,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as RoutePointEntity?,
    ));
  }
}

/// @nodoc
abstract class _$BuildingRouteStateCopyWith<$Res>
    implements $BuildingRouteStateCopyWith<$Res> {
  factory _$BuildingRouteStateCopyWith(
          _BuildingRouteState value, $Res Function(_BuildingRouteState) then) =
      __$BuildingRouteStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocAction? action,
      RoutePointEntity? departure,
      RoutePointEntity? destination});
}

/// @nodoc
class __$BuildingRouteStateCopyWithImpl<$Res>
    extends _$BuildingRouteStateCopyWithImpl<$Res>
    implements _$BuildingRouteStateCopyWith<$Res> {
  __$BuildingRouteStateCopyWithImpl(
      _BuildingRouteState _value, $Res Function(_BuildingRouteState) _then)
      : super(_value, (v) => _then(v as _BuildingRouteState));

  @override
  _BuildingRouteState get _value => super._value as _BuildingRouteState;

  @override
  $Res call({
    Object? action = freezed,
    Object? departure = freezed,
    Object? destination = freezed,
  }) {
    return _then(_BuildingRouteState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      departure: departure == freezed
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as RoutePointEntity?,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as RoutePointEntity?,
    ));
  }
}

/// @nodoc

class _$_BuildingRouteState implements _BuildingRouteState {
  _$_BuildingRouteState({this.action, this.departure, this.destination});

  @override
  final BlocAction? action;
  @override
  final RoutePointEntity? departure;
  @override
  final RoutePointEntity? destination;

  @override
  String toString() {
    return 'BuildingRouteState(action: $action, departure: $departure, destination: $destination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BuildingRouteState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.departure, departure) ||
                const DeepCollectionEquality()
                    .equals(other.departure, departure)) &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(departure) ^
      const DeepCollectionEquality().hash(destination);

  @JsonKey(ignore: true)
  @override
  _$BuildingRouteStateCopyWith<_BuildingRouteState> get copyWith =>
      __$BuildingRouteStateCopyWithImpl<_BuildingRouteState>(this, _$identity);
}

abstract class _BuildingRouteState implements BuildingRouteState {
  factory _BuildingRouteState(
      {BlocAction? action,
      RoutePointEntity? departure,
      RoutePointEntity? destination}) = _$_BuildingRouteState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  RoutePointEntity? get departure => throw _privateConstructorUsedError;
  @override
  RoutePointEntity? get destination => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BuildingRouteStateCopyWith<_BuildingRouteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BuildingRouteEventTearOff {
  const _$BuildingRouteEventTearOff();

  Init init() {
    return const Init();
  }

  DepartureClicked departureClicked() {
    return const DepartureClicked();
  }

  DestinationClicked destinationClicked() {
    return const DestinationClicked();
  }
}

/// @nodoc
const $BuildingRouteEvent = _$BuildingRouteEventTearOff();

/// @nodoc
mixin _$BuildingRouteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() departureClicked,
    required TResult Function() destinationClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? departureClicked,
    TResult Function()? destinationClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(DepartureClicked value) departureClicked,
    required TResult Function(DestinationClicked value) destinationClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(DepartureClicked value)? departureClicked,
    TResult Function(DestinationClicked value)? destinationClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingRouteEventCopyWith<$Res> {
  factory $BuildingRouteEventCopyWith(
          BuildingRouteEvent value, $Res Function(BuildingRouteEvent) then) =
      _$BuildingRouteEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BuildingRouteEventCopyWithImpl<$Res>
    implements $BuildingRouteEventCopyWith<$Res> {
  _$BuildingRouteEventCopyWithImpl(this._value, this._then);

  final BuildingRouteEvent _value;
  // ignore: unused_field
  final $Res Function(BuildingRouteEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$BuildingRouteEventCopyWithImpl<$Res>
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
    return 'BuildingRouteEvent.init()';
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
    required TResult Function() departureClicked,
    required TResult Function() destinationClicked,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? departureClicked,
    TResult Function()? destinationClicked,
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
    required TResult Function(DepartureClicked value) departureClicked,
    required TResult Function(DestinationClicked value) destinationClicked,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(DepartureClicked value)? departureClicked,
    TResult Function(DestinationClicked value)? destinationClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements BuildingRouteEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class $DepartureClickedCopyWith<$Res> {
  factory $DepartureClickedCopyWith(
          DepartureClicked value, $Res Function(DepartureClicked) then) =
      _$DepartureClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DepartureClickedCopyWithImpl<$Res>
    extends _$BuildingRouteEventCopyWithImpl<$Res>
    implements $DepartureClickedCopyWith<$Res> {
  _$DepartureClickedCopyWithImpl(
      DepartureClicked _value, $Res Function(DepartureClicked) _then)
      : super(_value, (v) => _then(v as DepartureClicked));

  @override
  DepartureClicked get _value => super._value as DepartureClicked;
}

/// @nodoc

class _$DepartureClicked implements DepartureClicked {
  const _$DepartureClicked();

  @override
  String toString() {
    return 'BuildingRouteEvent.departureClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DepartureClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() departureClicked,
    required TResult Function() destinationClicked,
  }) {
    return departureClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? departureClicked,
    TResult Function()? destinationClicked,
    required TResult orElse(),
  }) {
    if (departureClicked != null) {
      return departureClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(DepartureClicked value) departureClicked,
    required TResult Function(DestinationClicked value) destinationClicked,
  }) {
    return departureClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(DepartureClicked value)? departureClicked,
    TResult Function(DestinationClicked value)? destinationClicked,
    required TResult orElse(),
  }) {
    if (departureClicked != null) {
      return departureClicked(this);
    }
    return orElse();
  }
}

abstract class DepartureClicked implements BuildingRouteEvent {
  const factory DepartureClicked() = _$DepartureClicked;
}

/// @nodoc
abstract class $DestinationClickedCopyWith<$Res> {
  factory $DestinationClickedCopyWith(
          DestinationClicked value, $Res Function(DestinationClicked) then) =
      _$DestinationClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DestinationClickedCopyWithImpl<$Res>
    extends _$BuildingRouteEventCopyWithImpl<$Res>
    implements $DestinationClickedCopyWith<$Res> {
  _$DestinationClickedCopyWithImpl(
      DestinationClicked _value, $Res Function(DestinationClicked) _then)
      : super(_value, (v) => _then(v as DestinationClicked));

  @override
  DestinationClicked get _value => super._value as DestinationClicked;
}

/// @nodoc

class _$DestinationClicked implements DestinationClicked {
  const _$DestinationClicked();

  @override
  String toString() {
    return 'BuildingRouteEvent.destinationClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DestinationClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() departureClicked,
    required TResult Function() destinationClicked,
  }) {
    return destinationClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? departureClicked,
    TResult Function()? destinationClicked,
    required TResult orElse(),
  }) {
    if (destinationClicked != null) {
      return destinationClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(DepartureClicked value) departureClicked,
    required TResult Function(DestinationClicked value) destinationClicked,
  }) {
    return destinationClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(DepartureClicked value)? departureClicked,
    TResult Function(DestinationClicked value)? destinationClicked,
    required TResult orElse(),
  }) {
    if (destinationClicked != null) {
      return destinationClicked(this);
    }
    return orElse();
  }
}

abstract class DestinationClicked implements BuildingRouteEvent {
  const factory DestinationClicked() = _$DestinationClicked;
}

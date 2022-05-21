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
      List<RoutePointEntity> intermediatePoints = const [],
      RoutePointEntity? destination,
      TransportType selectedTransport = TransportType.walking,
      bool buttonEnabled = false}) {
    return _BuildingRouteState(
      action: action,
      departure: departure,
      intermediatePoints: intermediatePoints,
      destination: destination,
      selectedTransport: selectedTransport,
      buttonEnabled: buttonEnabled,
    );
  }
}

/// @nodoc
const $BuildingRouteState = _$BuildingRouteStateTearOff();

/// @nodoc
mixin _$BuildingRouteState {
  BlocAction? get action => throw _privateConstructorUsedError;
  RoutePointEntity? get departure => throw _privateConstructorUsedError;
  List<RoutePointEntity> get intermediatePoints =>
      throw _privateConstructorUsedError;
  RoutePointEntity? get destination => throw _privateConstructorUsedError;
  TransportType get selectedTransport => throw _privateConstructorUsedError;
  bool get buttonEnabled => throw _privateConstructorUsedError;

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
      List<RoutePointEntity> intermediatePoints,
      RoutePointEntity? destination,
      TransportType selectedTransport,
      bool buttonEnabled});
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
    Object? intermediatePoints = freezed,
    Object? destination = freezed,
    Object? selectedTransport = freezed,
    Object? buttonEnabled = freezed,
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
      intermediatePoints: intermediatePoints == freezed
          ? _value.intermediatePoints
          : intermediatePoints // ignore: cast_nullable_to_non_nullable
              as List<RoutePointEntity>,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as RoutePointEntity?,
      selectedTransport: selectedTransport == freezed
          ? _value.selectedTransport
          : selectedTransport // ignore: cast_nullable_to_non_nullable
              as TransportType,
      buttonEnabled: buttonEnabled == freezed
          ? _value.buttonEnabled
          : buttonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
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
      List<RoutePointEntity> intermediatePoints,
      RoutePointEntity? destination,
      TransportType selectedTransport,
      bool buttonEnabled});
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
    Object? intermediatePoints = freezed,
    Object? destination = freezed,
    Object? selectedTransport = freezed,
    Object? buttonEnabled = freezed,
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
      intermediatePoints: intermediatePoints == freezed
          ? _value.intermediatePoints
          : intermediatePoints // ignore: cast_nullable_to_non_nullable
              as List<RoutePointEntity>,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as RoutePointEntity?,
      selectedTransport: selectedTransport == freezed
          ? _value.selectedTransport
          : selectedTransport // ignore: cast_nullable_to_non_nullable
              as TransportType,
      buttonEnabled: buttonEnabled == freezed
          ? _value.buttonEnabled
          : buttonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_BuildingRouteState implements _BuildingRouteState {
  _$_BuildingRouteState(
      {this.action,
      this.departure,
      this.intermediatePoints = const [],
      this.destination,
      this.selectedTransport = TransportType.walking,
      this.buttonEnabled = false});

  @override
  final BlocAction? action;
  @override
  final RoutePointEntity? departure;
  @JsonKey(defaultValue: const [])
  @override
  final List<RoutePointEntity> intermediatePoints;
  @override
  final RoutePointEntity? destination;
  @JsonKey(defaultValue: TransportType.walking)
  @override
  final TransportType selectedTransport;
  @JsonKey(defaultValue: false)
  @override
  final bool buttonEnabled;

  @override
  String toString() {
    return 'BuildingRouteState(action: $action, departure: $departure, intermediatePoints: $intermediatePoints, destination: $destination, selectedTransport: $selectedTransport, buttonEnabled: $buttonEnabled)';
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
            (identical(other.intermediatePoints, intermediatePoints) ||
                const DeepCollectionEquality()
                    .equals(other.intermediatePoints, intermediatePoints)) &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)) &&
            (identical(other.selectedTransport, selectedTransport) ||
                const DeepCollectionEquality()
                    .equals(other.selectedTransport, selectedTransport)) &&
            (identical(other.buttonEnabled, buttonEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.buttonEnabled, buttonEnabled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(departure) ^
      const DeepCollectionEquality().hash(intermediatePoints) ^
      const DeepCollectionEquality().hash(destination) ^
      const DeepCollectionEquality().hash(selectedTransport) ^
      const DeepCollectionEquality().hash(buttonEnabled);

  @JsonKey(ignore: true)
  @override
  _$BuildingRouteStateCopyWith<_BuildingRouteState> get copyWith =>
      __$BuildingRouteStateCopyWithImpl<_BuildingRouteState>(this, _$identity);
}

abstract class _BuildingRouteState implements BuildingRouteState {
  factory _BuildingRouteState(
      {BlocAction? action,
      RoutePointEntity? departure,
      List<RoutePointEntity> intermediatePoints,
      RoutePointEntity? destination,
      TransportType selectedTransport,
      bool buttonEnabled}) = _$_BuildingRouteState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  RoutePointEntity? get departure => throw _privateConstructorUsedError;
  @override
  List<RoutePointEntity> get intermediatePoints =>
      throw _privateConstructorUsedError;
  @override
  RoutePointEntity? get destination => throw _privateConstructorUsedError;
  @override
  TransportType get selectedTransport => throw _privateConstructorUsedError;
  @override
  bool get buttonEnabled => throw _privateConstructorUsedError;
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

  RoutePointPicked routePointPicked(
      RoutePointEntity routePoint, SelectPointType selectPointType) {
    return RoutePointPicked(
      routePoint,
      selectPointType,
    );
  }

  BuildRouteClicked buildRouteClicked() {
    return const BuildRouteClicked();
  }

  TransportChanged transportChanged(TransportType transportType) {
    return TransportChanged(
      transportType,
    );
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
    required TResult Function(
            RoutePointEntity routePoint, SelectPointType selectPointType)
        routePointPicked,
    required TResult Function() buildRouteClicked,
    required TResult Function(TransportType transportType) transportChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? departureClicked,
    TResult Function()? destinationClicked,
    TResult Function(
            RoutePointEntity routePoint, SelectPointType selectPointType)?
        routePointPicked,
    TResult Function()? buildRouteClicked,
    TResult Function(TransportType transportType)? transportChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(DepartureClicked value) departureClicked,
    required TResult Function(DestinationClicked value) destinationClicked,
    required TResult Function(RoutePointPicked value) routePointPicked,
    required TResult Function(BuildRouteClicked value) buildRouteClicked,
    required TResult Function(TransportChanged value) transportChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(DepartureClicked value)? departureClicked,
    TResult Function(DestinationClicked value)? destinationClicked,
    TResult Function(RoutePointPicked value)? routePointPicked,
    TResult Function(BuildRouteClicked value)? buildRouteClicked,
    TResult Function(TransportChanged value)? transportChanged,
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
    required TResult Function(
            RoutePointEntity routePoint, SelectPointType selectPointType)
        routePointPicked,
    required TResult Function() buildRouteClicked,
    required TResult Function(TransportType transportType) transportChanged,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? departureClicked,
    TResult Function()? destinationClicked,
    TResult Function(
            RoutePointEntity routePoint, SelectPointType selectPointType)?
        routePointPicked,
    TResult Function()? buildRouteClicked,
    TResult Function(TransportType transportType)? transportChanged,
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
    required TResult Function(RoutePointPicked value) routePointPicked,
    required TResult Function(BuildRouteClicked value) buildRouteClicked,
    required TResult Function(TransportChanged value) transportChanged,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(DepartureClicked value)? departureClicked,
    TResult Function(DestinationClicked value)? destinationClicked,
    TResult Function(RoutePointPicked value)? routePointPicked,
    TResult Function(BuildRouteClicked value)? buildRouteClicked,
    TResult Function(TransportChanged value)? transportChanged,
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
    required TResult Function(
            RoutePointEntity routePoint, SelectPointType selectPointType)
        routePointPicked,
    required TResult Function() buildRouteClicked,
    required TResult Function(TransportType transportType) transportChanged,
  }) {
    return departureClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? departureClicked,
    TResult Function()? destinationClicked,
    TResult Function(
            RoutePointEntity routePoint, SelectPointType selectPointType)?
        routePointPicked,
    TResult Function()? buildRouteClicked,
    TResult Function(TransportType transportType)? transportChanged,
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
    required TResult Function(RoutePointPicked value) routePointPicked,
    required TResult Function(BuildRouteClicked value) buildRouteClicked,
    required TResult Function(TransportChanged value) transportChanged,
  }) {
    return departureClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(DepartureClicked value)? departureClicked,
    TResult Function(DestinationClicked value)? destinationClicked,
    TResult Function(RoutePointPicked value)? routePointPicked,
    TResult Function(BuildRouteClicked value)? buildRouteClicked,
    TResult Function(TransportChanged value)? transportChanged,
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
    required TResult Function(
            RoutePointEntity routePoint, SelectPointType selectPointType)
        routePointPicked,
    required TResult Function() buildRouteClicked,
    required TResult Function(TransportType transportType) transportChanged,
  }) {
    return destinationClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? departureClicked,
    TResult Function()? destinationClicked,
    TResult Function(
            RoutePointEntity routePoint, SelectPointType selectPointType)?
        routePointPicked,
    TResult Function()? buildRouteClicked,
    TResult Function(TransportType transportType)? transportChanged,
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
    required TResult Function(RoutePointPicked value) routePointPicked,
    required TResult Function(BuildRouteClicked value) buildRouteClicked,
    required TResult Function(TransportChanged value) transportChanged,
  }) {
    return destinationClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(DepartureClicked value)? departureClicked,
    TResult Function(DestinationClicked value)? destinationClicked,
    TResult Function(RoutePointPicked value)? routePointPicked,
    TResult Function(BuildRouteClicked value)? buildRouteClicked,
    TResult Function(TransportChanged value)? transportChanged,
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

/// @nodoc
abstract class $RoutePointPickedCopyWith<$Res> {
  factory $RoutePointPickedCopyWith(
          RoutePointPicked value, $Res Function(RoutePointPicked) then) =
      _$RoutePointPickedCopyWithImpl<$Res>;
  $Res call({RoutePointEntity routePoint, SelectPointType selectPointType});
}

/// @nodoc
class _$RoutePointPickedCopyWithImpl<$Res>
    extends _$BuildingRouteEventCopyWithImpl<$Res>
    implements $RoutePointPickedCopyWith<$Res> {
  _$RoutePointPickedCopyWithImpl(
      RoutePointPicked _value, $Res Function(RoutePointPicked) _then)
      : super(_value, (v) => _then(v as RoutePointPicked));

  @override
  RoutePointPicked get _value => super._value as RoutePointPicked;

  @override
  $Res call({
    Object? routePoint = freezed,
    Object? selectPointType = freezed,
  }) {
    return _then(RoutePointPicked(
      routePoint == freezed
          ? _value.routePoint
          : routePoint // ignore: cast_nullable_to_non_nullable
              as RoutePointEntity,
      selectPointType == freezed
          ? _value.selectPointType
          : selectPointType // ignore: cast_nullable_to_non_nullable
              as SelectPointType,
    ));
  }
}

/// @nodoc

class _$RoutePointPicked implements RoutePointPicked {
  const _$RoutePointPicked(this.routePoint, this.selectPointType);

  @override
  final RoutePointEntity routePoint;
  @override
  final SelectPointType selectPointType;

  @override
  String toString() {
    return 'BuildingRouteEvent.routePointPicked(routePoint: $routePoint, selectPointType: $selectPointType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoutePointPicked &&
            (identical(other.routePoint, routePoint) ||
                const DeepCollectionEquality()
                    .equals(other.routePoint, routePoint)) &&
            (identical(other.selectPointType, selectPointType) ||
                const DeepCollectionEquality()
                    .equals(other.selectPointType, selectPointType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(routePoint) ^
      const DeepCollectionEquality().hash(selectPointType);

  @JsonKey(ignore: true)
  @override
  $RoutePointPickedCopyWith<RoutePointPicked> get copyWith =>
      _$RoutePointPickedCopyWithImpl<RoutePointPicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() departureClicked,
    required TResult Function() destinationClicked,
    required TResult Function(
            RoutePointEntity routePoint, SelectPointType selectPointType)
        routePointPicked,
    required TResult Function() buildRouteClicked,
    required TResult Function(TransportType transportType) transportChanged,
  }) {
    return routePointPicked(routePoint, selectPointType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? departureClicked,
    TResult Function()? destinationClicked,
    TResult Function(
            RoutePointEntity routePoint, SelectPointType selectPointType)?
        routePointPicked,
    TResult Function()? buildRouteClicked,
    TResult Function(TransportType transportType)? transportChanged,
    required TResult orElse(),
  }) {
    if (routePointPicked != null) {
      return routePointPicked(routePoint, selectPointType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(DepartureClicked value) departureClicked,
    required TResult Function(DestinationClicked value) destinationClicked,
    required TResult Function(RoutePointPicked value) routePointPicked,
    required TResult Function(BuildRouteClicked value) buildRouteClicked,
    required TResult Function(TransportChanged value) transportChanged,
  }) {
    return routePointPicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(DepartureClicked value)? departureClicked,
    TResult Function(DestinationClicked value)? destinationClicked,
    TResult Function(RoutePointPicked value)? routePointPicked,
    TResult Function(BuildRouteClicked value)? buildRouteClicked,
    TResult Function(TransportChanged value)? transportChanged,
    required TResult orElse(),
  }) {
    if (routePointPicked != null) {
      return routePointPicked(this);
    }
    return orElse();
  }
}

abstract class RoutePointPicked implements BuildingRouteEvent {
  const factory RoutePointPicked(
          RoutePointEntity routePoint, SelectPointType selectPointType) =
      _$RoutePointPicked;

  RoutePointEntity get routePoint => throw _privateConstructorUsedError;
  SelectPointType get selectPointType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutePointPickedCopyWith<RoutePointPicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildRouteClickedCopyWith<$Res> {
  factory $BuildRouteClickedCopyWith(
          BuildRouteClicked value, $Res Function(BuildRouteClicked) then) =
      _$BuildRouteClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$BuildRouteClickedCopyWithImpl<$Res>
    extends _$BuildingRouteEventCopyWithImpl<$Res>
    implements $BuildRouteClickedCopyWith<$Res> {
  _$BuildRouteClickedCopyWithImpl(
      BuildRouteClicked _value, $Res Function(BuildRouteClicked) _then)
      : super(_value, (v) => _then(v as BuildRouteClicked));

  @override
  BuildRouteClicked get _value => super._value as BuildRouteClicked;
}

/// @nodoc

class _$BuildRouteClicked implements BuildRouteClicked {
  const _$BuildRouteClicked();

  @override
  String toString() {
    return 'BuildingRouteEvent.buildRouteClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BuildRouteClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() departureClicked,
    required TResult Function() destinationClicked,
    required TResult Function(
            RoutePointEntity routePoint, SelectPointType selectPointType)
        routePointPicked,
    required TResult Function() buildRouteClicked,
    required TResult Function(TransportType transportType) transportChanged,
  }) {
    return buildRouteClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? departureClicked,
    TResult Function()? destinationClicked,
    TResult Function(
            RoutePointEntity routePoint, SelectPointType selectPointType)?
        routePointPicked,
    TResult Function()? buildRouteClicked,
    TResult Function(TransportType transportType)? transportChanged,
    required TResult orElse(),
  }) {
    if (buildRouteClicked != null) {
      return buildRouteClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(DepartureClicked value) departureClicked,
    required TResult Function(DestinationClicked value) destinationClicked,
    required TResult Function(RoutePointPicked value) routePointPicked,
    required TResult Function(BuildRouteClicked value) buildRouteClicked,
    required TResult Function(TransportChanged value) transportChanged,
  }) {
    return buildRouteClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(DepartureClicked value)? departureClicked,
    TResult Function(DestinationClicked value)? destinationClicked,
    TResult Function(RoutePointPicked value)? routePointPicked,
    TResult Function(BuildRouteClicked value)? buildRouteClicked,
    TResult Function(TransportChanged value)? transportChanged,
    required TResult orElse(),
  }) {
    if (buildRouteClicked != null) {
      return buildRouteClicked(this);
    }
    return orElse();
  }
}

abstract class BuildRouteClicked implements BuildingRouteEvent {
  const factory BuildRouteClicked() = _$BuildRouteClicked;
}

/// @nodoc
abstract class $TransportChangedCopyWith<$Res> {
  factory $TransportChangedCopyWith(
          TransportChanged value, $Res Function(TransportChanged) then) =
      _$TransportChangedCopyWithImpl<$Res>;
  $Res call({TransportType transportType});
}

/// @nodoc
class _$TransportChangedCopyWithImpl<$Res>
    extends _$BuildingRouteEventCopyWithImpl<$Res>
    implements $TransportChangedCopyWith<$Res> {
  _$TransportChangedCopyWithImpl(
      TransportChanged _value, $Res Function(TransportChanged) _then)
      : super(_value, (v) => _then(v as TransportChanged));

  @override
  TransportChanged get _value => super._value as TransportChanged;

  @override
  $Res call({
    Object? transportType = freezed,
  }) {
    return _then(TransportChanged(
      transportType == freezed
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as TransportType,
    ));
  }
}

/// @nodoc

class _$TransportChanged implements TransportChanged {
  const _$TransportChanged(this.transportType);

  @override
  final TransportType transportType;

  @override
  String toString() {
    return 'BuildingRouteEvent.transportChanged(transportType: $transportType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportChanged &&
            (identical(other.transportType, transportType) ||
                const DeepCollectionEquality()
                    .equals(other.transportType, transportType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(transportType);

  @JsonKey(ignore: true)
  @override
  $TransportChangedCopyWith<TransportChanged> get copyWith =>
      _$TransportChangedCopyWithImpl<TransportChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() departureClicked,
    required TResult Function() destinationClicked,
    required TResult Function(
            RoutePointEntity routePoint, SelectPointType selectPointType)
        routePointPicked,
    required TResult Function() buildRouteClicked,
    required TResult Function(TransportType transportType) transportChanged,
  }) {
    return transportChanged(transportType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? departureClicked,
    TResult Function()? destinationClicked,
    TResult Function(
            RoutePointEntity routePoint, SelectPointType selectPointType)?
        routePointPicked,
    TResult Function()? buildRouteClicked,
    TResult Function(TransportType transportType)? transportChanged,
    required TResult orElse(),
  }) {
    if (transportChanged != null) {
      return transportChanged(transportType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(DepartureClicked value) departureClicked,
    required TResult Function(DestinationClicked value) destinationClicked,
    required TResult Function(RoutePointPicked value) routePointPicked,
    required TResult Function(BuildRouteClicked value) buildRouteClicked,
    required TResult Function(TransportChanged value) transportChanged,
  }) {
    return transportChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(DepartureClicked value)? departureClicked,
    TResult Function(DestinationClicked value)? destinationClicked,
    TResult Function(RoutePointPicked value)? routePointPicked,
    TResult Function(BuildRouteClicked value)? buildRouteClicked,
    TResult Function(TransportChanged value)? transportChanged,
    required TResult orElse(),
  }) {
    if (transportChanged != null) {
      return transportChanged(this);
    }
    return orElse();
  }
}

abstract class TransportChanged implements BuildingRouteEvent {
  const factory TransportChanged(TransportType transportType) =
      _$TransportChanged;

  TransportType get transportType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportChangedCopyWith<TransportChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MapStateTearOff {
  const _$MapStateTearOff();

  _MapState call(
      {BlocAction? action,
      bool mapLoaded = false,
      bool isLoading = false,
      CameraPosition cameraPosition = const CameraPosition(
          target: const LatLng(55.759171, 37.619101), zoom: 15),
      List<String> sights = const []}) {
    return _MapState(
      action: action,
      mapLoaded: mapLoaded,
      isLoading: isLoading,
      cameraPosition: cameraPosition,
      sights: sights,
    );
  }
}

/// @nodoc
const $MapState = _$MapStateTearOff();

/// @nodoc
mixin _$MapState {
  BlocAction? get action => throw _privateConstructorUsedError;
  bool get mapLoaded => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  CameraPosition get cameraPosition => throw _privateConstructorUsedError;
  List<String> get sights => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res>;
  $Res call(
      {BlocAction? action,
      bool mapLoaded,
      bool isLoading,
      CameraPosition cameraPosition,
      List<String> sights});
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res> implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  final MapState _value;
  // ignore: unused_field
  final $Res Function(MapState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? mapLoaded = freezed,
    Object? isLoading = freezed,
    Object? cameraPosition = freezed,
    Object? sights = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      mapLoaded: mapLoaded == freezed
          ? _value.mapLoaded
          : mapLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraPosition: cameraPosition == freezed
          ? _value.cameraPosition
          : cameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition,
      sights: sights == freezed
          ? _value.sights
          : sights // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$MapStateCopyWith(_MapState value, $Res Function(_MapState) then) =
      __$MapStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocAction? action,
      bool mapLoaded,
      bool isLoading,
      CameraPosition cameraPosition,
      List<String> sights});
}

/// @nodoc
class __$MapStateCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements _$MapStateCopyWith<$Res> {
  __$MapStateCopyWithImpl(_MapState _value, $Res Function(_MapState) _then)
      : super(_value, (v) => _then(v as _MapState));

  @override
  _MapState get _value => super._value as _MapState;

  @override
  $Res call({
    Object? action = freezed,
    Object? mapLoaded = freezed,
    Object? isLoading = freezed,
    Object? cameraPosition = freezed,
    Object? sights = freezed,
  }) {
    return _then(_MapState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      mapLoaded: mapLoaded == freezed
          ? _value.mapLoaded
          : mapLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraPosition: cameraPosition == freezed
          ? _value.cameraPosition
          : cameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition,
      sights: sights == freezed
          ? _value.sights
          : sights // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_MapState implements _MapState {
  _$_MapState(
      {this.action,
      this.mapLoaded = false,
      this.isLoading = false,
      this.cameraPosition = const CameraPosition(
          target: const LatLng(55.759171, 37.619101), zoom: 15),
      this.sights = const []});

  @override
  final BlocAction? action;
  @JsonKey(defaultValue: false)
  @override
  final bool mapLoaded;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(
      defaultValue: const CameraPosition(
          target: const LatLng(55.759171, 37.619101), zoom: 15))
  @override
  final CameraPosition cameraPosition;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> sights;

  @override
  String toString() {
    return 'MapState(action: $action, mapLoaded: $mapLoaded, isLoading: $isLoading, cameraPosition: $cameraPosition, sights: $sights)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MapState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.mapLoaded, mapLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.mapLoaded, mapLoaded)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.cameraPosition, cameraPosition) ||
                const DeepCollectionEquality()
                    .equals(other.cameraPosition, cameraPosition)) &&
            (identical(other.sights, sights) ||
                const DeepCollectionEquality().equals(other.sights, sights)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(mapLoaded) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(cameraPosition) ^
      const DeepCollectionEquality().hash(sights);

  @JsonKey(ignore: true)
  @override
  _$MapStateCopyWith<_MapState> get copyWith =>
      __$MapStateCopyWithImpl<_MapState>(this, _$identity);
}

abstract class _MapState implements MapState {
  factory _MapState(
      {BlocAction? action,
      bool mapLoaded,
      bool isLoading,
      CameraPosition cameraPosition,
      List<String> sights}) = _$_MapState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  bool get mapLoaded => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  CameraPosition get cameraPosition => throw _privateConstructorUsedError;
  @override
  List<String> get sights => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MapStateCopyWith<_MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MapEventTearOff {
  const _$MapEventTearOff();

  Init init() {
    return const Init();
  }

  OnMapCreated onMapCreated(GoogleMapController controller) {
    return OnMapCreated(
      controller,
    );
  }

  OnCameraMove onCameraMove(CameraPosition position) {
    return OnCameraMove(
      position,
    );
  }

  OnMapTap onMapTap() {
    return const OnMapTap();
  }

  MyLocationClicked myLocationClicked() {
    return const MyLocationClicked();
  }
}

/// @nodoc
const $MapEvent = _$MapEventTearOff();

/// @nodoc
mixin _$MapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onMapTap,
    required TResult Function() myLocationClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onMapTap,
    TResult Function()? myLocationClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEventCopyWith<$Res> {
  factory $MapEventCopyWith(MapEvent value, $Res Function(MapEvent) then) =
      _$MapEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapEventCopyWithImpl<$Res> implements $MapEventCopyWith<$Res> {
  _$MapEventCopyWithImpl(this._value, this._then);

  final MapEvent _value;
  // ignore: unused_field
  final $Res Function(MapEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
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
    return 'MapEvent.init()';
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
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onMapTap,
    required TResult Function() myLocationClicked,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onMapTap,
    TResult Function()? myLocationClicked,
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
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements MapEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class $OnMapCreatedCopyWith<$Res> {
  factory $OnMapCreatedCopyWith(
          OnMapCreated value, $Res Function(OnMapCreated) then) =
      _$OnMapCreatedCopyWithImpl<$Res>;
  $Res call({GoogleMapController controller});
}

/// @nodoc
class _$OnMapCreatedCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $OnMapCreatedCopyWith<$Res> {
  _$OnMapCreatedCopyWithImpl(
      OnMapCreated _value, $Res Function(OnMapCreated) _then)
      : super(_value, (v) => _then(v as OnMapCreated));

  @override
  OnMapCreated get _value => super._value as OnMapCreated;

  @override
  $Res call({
    Object? controller = freezed,
  }) {
    return _then(OnMapCreated(
      controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as GoogleMapController,
    ));
  }
}

/// @nodoc

class _$OnMapCreated implements OnMapCreated {
  const _$OnMapCreated(this.controller);

  @override
  final GoogleMapController controller;

  @override
  String toString() {
    return 'MapEvent.onMapCreated(controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnMapCreated &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(controller);

  @JsonKey(ignore: true)
  @override
  $OnMapCreatedCopyWith<OnMapCreated> get copyWith =>
      _$OnMapCreatedCopyWithImpl<OnMapCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onMapTap,
    required TResult Function() myLocationClicked,
  }) {
    return onMapCreated(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onMapTap,
    TResult Function()? myLocationClicked,
    required TResult orElse(),
  }) {
    if (onMapCreated != null) {
      return onMapCreated(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
  }) {
    return onMapCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    required TResult orElse(),
  }) {
    if (onMapCreated != null) {
      return onMapCreated(this);
    }
    return orElse();
  }
}

abstract class OnMapCreated implements MapEvent {
  const factory OnMapCreated(GoogleMapController controller) = _$OnMapCreated;

  GoogleMapController get controller => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnMapCreatedCopyWith<OnMapCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnCameraMoveCopyWith<$Res> {
  factory $OnCameraMoveCopyWith(
          OnCameraMove value, $Res Function(OnCameraMove) then) =
      _$OnCameraMoveCopyWithImpl<$Res>;
  $Res call({CameraPosition position});
}

/// @nodoc
class _$OnCameraMoveCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $OnCameraMoveCopyWith<$Res> {
  _$OnCameraMoveCopyWithImpl(
      OnCameraMove _value, $Res Function(OnCameraMove) _then)
      : super(_value, (v) => _then(v as OnCameraMove));

  @override
  OnCameraMove get _value => super._value as OnCameraMove;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(OnCameraMove(
      position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as CameraPosition,
    ));
  }
}

/// @nodoc

class _$OnCameraMove implements OnCameraMove {
  const _$OnCameraMove(this.position);

  @override
  final CameraPosition position;

  @override
  String toString() {
    return 'MapEvent.onCameraMove(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnCameraMove &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  $OnCameraMoveCopyWith<OnCameraMove> get copyWith =>
      _$OnCameraMoveCopyWithImpl<OnCameraMove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onMapTap,
    required TResult Function() myLocationClicked,
  }) {
    return onCameraMove(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onMapTap,
    TResult Function()? myLocationClicked,
    required TResult orElse(),
  }) {
    if (onCameraMove != null) {
      return onCameraMove(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
  }) {
    return onCameraMove(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    required TResult orElse(),
  }) {
    if (onCameraMove != null) {
      return onCameraMove(this);
    }
    return orElse();
  }
}

abstract class OnCameraMove implements MapEvent {
  const factory OnCameraMove(CameraPosition position) = _$OnCameraMove;

  CameraPosition get position => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnCameraMoveCopyWith<OnCameraMove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnMapTapCopyWith<$Res> {
  factory $OnMapTapCopyWith(OnMapTap value, $Res Function(OnMapTap) then) =
      _$OnMapTapCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnMapTapCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $OnMapTapCopyWith<$Res> {
  _$OnMapTapCopyWithImpl(OnMapTap _value, $Res Function(OnMapTap) _then)
      : super(_value, (v) => _then(v as OnMapTap));

  @override
  OnMapTap get _value => super._value as OnMapTap;
}

/// @nodoc

class _$OnMapTap implements OnMapTap {
  const _$OnMapTap();

  @override
  String toString() {
    return 'MapEvent.onMapTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnMapTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onMapTap,
    required TResult Function() myLocationClicked,
  }) {
    return onMapTap();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onMapTap,
    TResult Function()? myLocationClicked,
    required TResult orElse(),
  }) {
    if (onMapTap != null) {
      return onMapTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
  }) {
    return onMapTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    required TResult orElse(),
  }) {
    if (onMapTap != null) {
      return onMapTap(this);
    }
    return orElse();
  }
}

abstract class OnMapTap implements MapEvent {
  const factory OnMapTap() = _$OnMapTap;
}

/// @nodoc
abstract class $MyLocationClickedCopyWith<$Res> {
  factory $MyLocationClickedCopyWith(
          MyLocationClicked value, $Res Function(MyLocationClicked) then) =
      _$MyLocationClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyLocationClickedCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $MyLocationClickedCopyWith<$Res> {
  _$MyLocationClickedCopyWithImpl(
      MyLocationClicked _value, $Res Function(MyLocationClicked) _then)
      : super(_value, (v) => _then(v as MyLocationClicked));

  @override
  MyLocationClicked get _value => super._value as MyLocationClicked;
}

/// @nodoc

class _$MyLocationClicked implements MyLocationClicked {
  const _$MyLocationClicked();

  @override
  String toString() {
    return 'MapEvent.myLocationClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MyLocationClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(GoogleMapController controller) onMapCreated,
    required TResult Function(CameraPosition position) onCameraMove,
    required TResult Function() onMapTap,
    required TResult Function() myLocationClicked,
  }) {
    return myLocationClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(GoogleMapController controller)? onMapCreated,
    TResult Function(CameraPosition position)? onCameraMove,
    TResult Function()? onMapTap,
    TResult Function()? myLocationClicked,
    required TResult orElse(),
  }) {
    if (myLocationClicked != null) {
      return myLocationClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(OnMapTap value) onMapTap,
    required TResult Function(MyLocationClicked value) myLocationClicked,
  }) {
    return myLocationClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(OnMapTap value)? onMapTap,
    TResult Function(MyLocationClicked value)? myLocationClicked,
    required TResult orElse(),
  }) {
    if (myLocationClicked != null) {
      return myLocationClicked(this);
    }
    return orElse();
  }
}

abstract class MyLocationClicked implements MapEvent {
  const factory MyLocationClicked() = _$MyLocationClicked;
}

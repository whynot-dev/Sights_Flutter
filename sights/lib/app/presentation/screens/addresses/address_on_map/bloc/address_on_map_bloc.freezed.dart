// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'address_on_map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddressOnMapStateTearOff {
  const _$AddressOnMapStateTearOff();

  _AddressOnMapState call(
      {BlocAction? action,
      AddressItemEntity? currentAddress,
      Point currentCoordinate =
          const Point(latitude: 55.719450, longitude: 37.728756),
      VisibleRegion? currentVisibleRegion,
      List<PickupPointEntity> pickupPoints = const [],
      PickupPointEntity? selectedPickupPoint,
      double currentZoomLevel = 13,
      bool cameraIsMoving = false,
      bool pickupInfoIsExpanded = false}) {
    return _AddressOnMapState(
      action: action,
      currentAddress: currentAddress,
      currentCoordinate: currentCoordinate,
      currentVisibleRegion: currentVisibleRegion,
      pickupPoints: pickupPoints,
      selectedPickupPoint: selectedPickupPoint,
      currentZoomLevel: currentZoomLevel,
      cameraIsMoving: cameraIsMoving,
      pickupInfoIsExpanded: pickupInfoIsExpanded,
    );
  }
}

/// @nodoc
const $AddressOnMapState = _$AddressOnMapStateTearOff();

/// @nodoc
mixin _$AddressOnMapState {
  BlocAction? get action => throw _privateConstructorUsedError;
  AddressItemEntity? get currentAddress => throw _privateConstructorUsedError;
  Point get currentCoordinate => throw _privateConstructorUsedError;
  VisibleRegion? get currentVisibleRegion => throw _privateConstructorUsedError;
  List<PickupPointEntity> get pickupPoints =>
      throw _privateConstructorUsedError;
  PickupPointEntity? get selectedPickupPoint =>
      throw _privateConstructorUsedError;
  double get currentZoomLevel => throw _privateConstructorUsedError;
  bool get cameraIsMoving => throw _privateConstructorUsedError;
  bool get pickupInfoIsExpanded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressOnMapStateCopyWith<AddressOnMapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressOnMapStateCopyWith<$Res> {
  factory $AddressOnMapStateCopyWith(
          AddressOnMapState value, $Res Function(AddressOnMapState) then) =
      _$AddressOnMapStateCopyWithImpl<$Res>;
  $Res call(
      {BlocAction? action,
      AddressItemEntity? currentAddress,
      Point currentCoordinate,
      VisibleRegion? currentVisibleRegion,
      List<PickupPointEntity> pickupPoints,
      PickupPointEntity? selectedPickupPoint,
      double currentZoomLevel,
      bool cameraIsMoving,
      bool pickupInfoIsExpanded});

  $AddressItemEntityCopyWith<$Res>? get currentAddress;
}

/// @nodoc
class _$AddressOnMapStateCopyWithImpl<$Res>
    implements $AddressOnMapStateCopyWith<$Res> {
  _$AddressOnMapStateCopyWithImpl(this._value, this._then);

  final AddressOnMapState _value;
  // ignore: unused_field
  final $Res Function(AddressOnMapState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? currentAddress = freezed,
    Object? currentCoordinate = freezed,
    Object? currentVisibleRegion = freezed,
    Object? pickupPoints = freezed,
    Object? selectedPickupPoint = freezed,
    Object? currentZoomLevel = freezed,
    Object? cameraIsMoving = freezed,
    Object? pickupInfoIsExpanded = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      currentAddress: currentAddress == freezed
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as AddressItemEntity?,
      currentCoordinate: currentCoordinate == freezed
          ? _value.currentCoordinate
          : currentCoordinate // ignore: cast_nullable_to_non_nullable
              as Point,
      currentVisibleRegion: currentVisibleRegion == freezed
          ? _value.currentVisibleRegion
          : currentVisibleRegion // ignore: cast_nullable_to_non_nullable
              as VisibleRegion?,
      pickupPoints: pickupPoints == freezed
          ? _value.pickupPoints
          : pickupPoints // ignore: cast_nullable_to_non_nullable
              as List<PickupPointEntity>,
      selectedPickupPoint: selectedPickupPoint == freezed
          ? _value.selectedPickupPoint
          : selectedPickupPoint // ignore: cast_nullable_to_non_nullable
              as PickupPointEntity?,
      currentZoomLevel: currentZoomLevel == freezed
          ? _value.currentZoomLevel
          : currentZoomLevel // ignore: cast_nullable_to_non_nullable
              as double,
      cameraIsMoving: cameraIsMoving == freezed
          ? _value.cameraIsMoving
          : cameraIsMoving // ignore: cast_nullable_to_non_nullable
              as bool,
      pickupInfoIsExpanded: pickupInfoIsExpanded == freezed
          ? _value.pickupInfoIsExpanded
          : pickupInfoIsExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $AddressItemEntityCopyWith<$Res>? get currentAddress {
    if (_value.currentAddress == null) {
      return null;
    }

    return $AddressItemEntityCopyWith<$Res>(_value.currentAddress!, (value) {
      return _then(_value.copyWith(currentAddress: value));
    });
  }
}

/// @nodoc
abstract class _$AddressOnMapStateCopyWith<$Res>
    implements $AddressOnMapStateCopyWith<$Res> {
  factory _$AddressOnMapStateCopyWith(
          _AddressOnMapState value, $Res Function(_AddressOnMapState) then) =
      __$AddressOnMapStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocAction? action,
      AddressItemEntity? currentAddress,
      Point currentCoordinate,
      VisibleRegion? currentVisibleRegion,
      List<PickupPointEntity> pickupPoints,
      PickupPointEntity? selectedPickupPoint,
      double currentZoomLevel,
      bool cameraIsMoving,
      bool pickupInfoIsExpanded});

  @override
  $AddressItemEntityCopyWith<$Res>? get currentAddress;
}

/// @nodoc
class __$AddressOnMapStateCopyWithImpl<$Res>
    extends _$AddressOnMapStateCopyWithImpl<$Res>
    implements _$AddressOnMapStateCopyWith<$Res> {
  __$AddressOnMapStateCopyWithImpl(
      _AddressOnMapState _value, $Res Function(_AddressOnMapState) _then)
      : super(_value, (v) => _then(v as _AddressOnMapState));

  @override
  _AddressOnMapState get _value => super._value as _AddressOnMapState;

  @override
  $Res call({
    Object? action = freezed,
    Object? currentAddress = freezed,
    Object? currentCoordinate = freezed,
    Object? currentVisibleRegion = freezed,
    Object? pickupPoints = freezed,
    Object? selectedPickupPoint = freezed,
    Object? currentZoomLevel = freezed,
    Object? cameraIsMoving = freezed,
    Object? pickupInfoIsExpanded = freezed,
  }) {
    return _then(_AddressOnMapState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      currentAddress: currentAddress == freezed
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as AddressItemEntity?,
      currentCoordinate: currentCoordinate == freezed
          ? _value.currentCoordinate
          : currentCoordinate // ignore: cast_nullable_to_non_nullable
              as Point,
      currentVisibleRegion: currentVisibleRegion == freezed
          ? _value.currentVisibleRegion
          : currentVisibleRegion // ignore: cast_nullable_to_non_nullable
              as VisibleRegion?,
      pickupPoints: pickupPoints == freezed
          ? _value.pickupPoints
          : pickupPoints // ignore: cast_nullable_to_non_nullable
              as List<PickupPointEntity>,
      selectedPickupPoint: selectedPickupPoint == freezed
          ? _value.selectedPickupPoint
          : selectedPickupPoint // ignore: cast_nullable_to_non_nullable
              as PickupPointEntity?,
      currentZoomLevel: currentZoomLevel == freezed
          ? _value.currentZoomLevel
          : currentZoomLevel // ignore: cast_nullable_to_non_nullable
              as double,
      cameraIsMoving: cameraIsMoving == freezed
          ? _value.cameraIsMoving
          : cameraIsMoving // ignore: cast_nullable_to_non_nullable
              as bool,
      pickupInfoIsExpanded: pickupInfoIsExpanded == freezed
          ? _value.pickupInfoIsExpanded
          : pickupInfoIsExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddressOnMapState implements _AddressOnMapState {
  _$_AddressOnMapState(
      {this.action,
      this.currentAddress,
      this.currentCoordinate =
          const Point(latitude: 55.719450, longitude: 37.728756),
      this.currentVisibleRegion,
      this.pickupPoints = const [],
      this.selectedPickupPoint,
      this.currentZoomLevel = 13,
      this.cameraIsMoving = false,
      this.pickupInfoIsExpanded = false});

  @override
  final BlocAction? action;
  @override
  final AddressItemEntity? currentAddress;
  @JsonKey(defaultValue: const Point(latitude: 55.719450, longitude: 37.728756))
  @override
  final Point currentCoordinate;
  @override
  final VisibleRegion? currentVisibleRegion;
  @JsonKey(defaultValue: const [])
  @override
  final List<PickupPointEntity> pickupPoints;
  @override
  final PickupPointEntity? selectedPickupPoint;
  @JsonKey(defaultValue: 13)
  @override
  final double currentZoomLevel;
  @JsonKey(defaultValue: false)
  @override
  final bool cameraIsMoving;
  @JsonKey(defaultValue: false)
  @override
  final bool pickupInfoIsExpanded;

  @override
  String toString() {
    return 'AddressOnMapState(action: $action, currentAddress: $currentAddress, currentCoordinate: $currentCoordinate, currentVisibleRegion: $currentVisibleRegion, pickupPoints: $pickupPoints, selectedPickupPoint: $selectedPickupPoint, currentZoomLevel: $currentZoomLevel, cameraIsMoving: $cameraIsMoving, pickupInfoIsExpanded: $pickupInfoIsExpanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddressOnMapState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.currentAddress, currentAddress) ||
                const DeepCollectionEquality()
                    .equals(other.currentAddress, currentAddress)) &&
            (identical(other.currentCoordinate, currentCoordinate) ||
                const DeepCollectionEquality()
                    .equals(other.currentCoordinate, currentCoordinate)) &&
            (identical(other.currentVisibleRegion, currentVisibleRegion) ||
                const DeepCollectionEquality().equals(
                    other.currentVisibleRegion, currentVisibleRegion)) &&
            (identical(other.pickupPoints, pickupPoints) ||
                const DeepCollectionEquality()
                    .equals(other.pickupPoints, pickupPoints)) &&
            (identical(other.selectedPickupPoint, selectedPickupPoint) ||
                const DeepCollectionEquality()
                    .equals(other.selectedPickupPoint, selectedPickupPoint)) &&
            (identical(other.currentZoomLevel, currentZoomLevel) ||
                const DeepCollectionEquality()
                    .equals(other.currentZoomLevel, currentZoomLevel)) &&
            (identical(other.cameraIsMoving, cameraIsMoving) ||
                const DeepCollectionEquality()
                    .equals(other.cameraIsMoving, cameraIsMoving)) &&
            (identical(other.pickupInfoIsExpanded, pickupInfoIsExpanded) ||
                const DeepCollectionEquality()
                    .equals(other.pickupInfoIsExpanded, pickupInfoIsExpanded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(currentAddress) ^
      const DeepCollectionEquality().hash(currentCoordinate) ^
      const DeepCollectionEquality().hash(currentVisibleRegion) ^
      const DeepCollectionEquality().hash(pickupPoints) ^
      const DeepCollectionEquality().hash(selectedPickupPoint) ^
      const DeepCollectionEquality().hash(currentZoomLevel) ^
      const DeepCollectionEquality().hash(cameraIsMoving) ^
      const DeepCollectionEquality().hash(pickupInfoIsExpanded);

  @JsonKey(ignore: true)
  @override
  _$AddressOnMapStateCopyWith<_AddressOnMapState> get copyWith =>
      __$AddressOnMapStateCopyWithImpl<_AddressOnMapState>(this, _$identity);
}

abstract class _AddressOnMapState implements AddressOnMapState {
  factory _AddressOnMapState(
      {BlocAction? action,
      AddressItemEntity? currentAddress,
      Point currentCoordinate,
      VisibleRegion? currentVisibleRegion,
      List<PickupPointEntity> pickupPoints,
      PickupPointEntity? selectedPickupPoint,
      double currentZoomLevel,
      bool cameraIsMoving,
      bool pickupInfoIsExpanded}) = _$_AddressOnMapState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  AddressItemEntity? get currentAddress => throw _privateConstructorUsedError;
  @override
  Point get currentCoordinate => throw _privateConstructorUsedError;
  @override
  VisibleRegion? get currentVisibleRegion => throw _privateConstructorUsedError;
  @override
  List<PickupPointEntity> get pickupPoints =>
      throw _privateConstructorUsedError;
  @override
  PickupPointEntity? get selectedPickupPoint =>
      throw _privateConstructorUsedError;
  @override
  double get currentZoomLevel => throw _privateConstructorUsedError;
  @override
  bool get cameraIsMoving => throw _privateConstructorUsedError;
  @override
  bool get pickupInfoIsExpanded => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddressOnMapStateCopyWith<_AddressOnMapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddressOnMapEventTearOff {
  const _$AddressOnMapEventTearOff();

  Init init() {
    return const Init();
  }

  BackButtonClicked backButtonClicked() {
    return const BackButtonClicked();
  }

  ChangeAddressClicked changeAddressClicked() {
    return const ChangeAddressClicked();
  }

  PlusClicked plusClicked() {
    return const PlusClicked();
  }

  MinusClicked minusClicked() {
    return const MinusClicked();
  }

  MyPositionClicked myPositionClicked() {
    return const MyPositionClicked();
  }

  OnMapCreated onMapCreated() {
    return const OnMapCreated();
  }

  OnCameraMove onCameraMove(
      {required CameraPosition cameraPosition,
      required bool cameraIsMoving,
      VisibleRegion? visibleRegion}) {
    return OnCameraMove(
      cameraPosition: cameraPosition,
      cameraIsMoving: cameraIsMoving,
      visibleRegion: visibleRegion,
    );
  }

  SelectThisAddressClicked selectThisAddressClicked() {
    return const SelectThisAddressClicked();
  }

  ShowMessageNoGeo showMessageNoGeo() {
    return const ShowMessageNoGeo();
  }

  GetCurrentAddress getCurrentAddress() {
    return const GetCurrentAddress();
  }

  GetPickupPoints getPickupPoints() {
    return const GetPickupPoints();
  }

  PickupPointOnMapClicked pickupPointOnMapClicked(
      PickupPointEntity pickupPointEntity) {
    return PickupPointOnMapClicked(
      pickupPointEntity,
    );
  }

  PickupInfoSlideChanged pickupInfoSlideChanged(double position) {
    return PickupInfoSlideChanged(
      position,
    );
  }

  CurrentAddressChanged currentAddressChanged(Point point) {
    return CurrentAddressChanged(
      point,
    );
  }
}

/// @nodoc
const $AddressOnMapEvent = _$AddressOnMapEventTearOff();

/// @nodoc
mixin _$AddressOnMapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backButtonClicked,
    required TResult Function() changeAddressClicked,
    required TResult Function() plusClicked,
    required TResult Function() minusClicked,
    required TResult Function() myPositionClicked,
    required TResult Function() onMapCreated,
    required TResult Function(CameraPosition cameraPosition,
            bool cameraIsMoving, VisibleRegion? visibleRegion)
        onCameraMove,
    required TResult Function() selectThisAddressClicked,
    required TResult Function() showMessageNoGeo,
    required TResult Function() getCurrentAddress,
    required TResult Function() getPickupPoints,
    required TResult Function(PickupPointEntity pickupPointEntity)
        pickupPointOnMapClicked,
    required TResult Function(double position) pickupInfoSlideChanged,
    required TResult Function(Point point) currentAddressChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backButtonClicked,
    TResult Function()? changeAddressClicked,
    TResult Function()? plusClicked,
    TResult Function()? minusClicked,
    TResult Function()? myPositionClicked,
    TResult Function()? onMapCreated,
    TResult Function(CameraPosition cameraPosition, bool cameraIsMoving,
            VisibleRegion? visibleRegion)?
        onCameraMove,
    TResult Function()? selectThisAddressClicked,
    TResult Function()? showMessageNoGeo,
    TResult Function()? getCurrentAddress,
    TResult Function()? getPickupPoints,
    TResult Function(PickupPointEntity pickupPointEntity)?
        pickupPointOnMapClicked,
    TResult Function(double position)? pickupInfoSlideChanged,
    TResult Function(Point point)? currentAddressChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackButtonClicked value) backButtonClicked,
    required TResult Function(ChangeAddressClicked value) changeAddressClicked,
    required TResult Function(PlusClicked value) plusClicked,
    required TResult Function(MinusClicked value) minusClicked,
    required TResult Function(MyPositionClicked value) myPositionClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(GetPickupPoints value) getPickupPoints,
    required TResult Function(PickupPointOnMapClicked value)
        pickupPointOnMapClicked,
    required TResult Function(PickupInfoSlideChanged value)
        pickupInfoSlideChanged,
    required TResult Function(CurrentAddressChanged value)
        currentAddressChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackButtonClicked value)? backButtonClicked,
    TResult Function(ChangeAddressClicked value)? changeAddressClicked,
    TResult Function(PlusClicked value)? plusClicked,
    TResult Function(MinusClicked value)? minusClicked,
    TResult Function(MyPositionClicked value)? myPositionClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(GetPickupPoints value)? getPickupPoints,
    TResult Function(PickupPointOnMapClicked value)? pickupPointOnMapClicked,
    TResult Function(PickupInfoSlideChanged value)? pickupInfoSlideChanged,
    TResult Function(CurrentAddressChanged value)? currentAddressChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressOnMapEventCopyWith<$Res> {
  factory $AddressOnMapEventCopyWith(
          AddressOnMapEvent value, $Res Function(AddressOnMapEvent) then) =
      _$AddressOnMapEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddressOnMapEventCopyWithImpl<$Res>
    implements $AddressOnMapEventCopyWith<$Res> {
  _$AddressOnMapEventCopyWithImpl(this._value, this._then);

  final AddressOnMapEvent _value;
  // ignore: unused_field
  final $Res Function(AddressOnMapEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$AddressOnMapEventCopyWithImpl<$Res>
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
    return 'AddressOnMapEvent.init()';
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
    required TResult Function() backButtonClicked,
    required TResult Function() changeAddressClicked,
    required TResult Function() plusClicked,
    required TResult Function() minusClicked,
    required TResult Function() myPositionClicked,
    required TResult Function() onMapCreated,
    required TResult Function(CameraPosition cameraPosition,
            bool cameraIsMoving, VisibleRegion? visibleRegion)
        onCameraMove,
    required TResult Function() selectThisAddressClicked,
    required TResult Function() showMessageNoGeo,
    required TResult Function() getCurrentAddress,
    required TResult Function() getPickupPoints,
    required TResult Function(PickupPointEntity pickupPointEntity)
        pickupPointOnMapClicked,
    required TResult Function(double position) pickupInfoSlideChanged,
    required TResult Function(Point point) currentAddressChanged,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backButtonClicked,
    TResult Function()? changeAddressClicked,
    TResult Function()? plusClicked,
    TResult Function()? minusClicked,
    TResult Function()? myPositionClicked,
    TResult Function()? onMapCreated,
    TResult Function(CameraPosition cameraPosition, bool cameraIsMoving,
            VisibleRegion? visibleRegion)?
        onCameraMove,
    TResult Function()? selectThisAddressClicked,
    TResult Function()? showMessageNoGeo,
    TResult Function()? getCurrentAddress,
    TResult Function()? getPickupPoints,
    TResult Function(PickupPointEntity pickupPointEntity)?
        pickupPointOnMapClicked,
    TResult Function(double position)? pickupInfoSlideChanged,
    TResult Function(Point point)? currentAddressChanged,
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
    required TResult Function(BackButtonClicked value) backButtonClicked,
    required TResult Function(ChangeAddressClicked value) changeAddressClicked,
    required TResult Function(PlusClicked value) plusClicked,
    required TResult Function(MinusClicked value) minusClicked,
    required TResult Function(MyPositionClicked value) myPositionClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(GetPickupPoints value) getPickupPoints,
    required TResult Function(PickupPointOnMapClicked value)
        pickupPointOnMapClicked,
    required TResult Function(PickupInfoSlideChanged value)
        pickupInfoSlideChanged,
    required TResult Function(CurrentAddressChanged value)
        currentAddressChanged,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackButtonClicked value)? backButtonClicked,
    TResult Function(ChangeAddressClicked value)? changeAddressClicked,
    TResult Function(PlusClicked value)? plusClicked,
    TResult Function(MinusClicked value)? minusClicked,
    TResult Function(MyPositionClicked value)? myPositionClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(GetPickupPoints value)? getPickupPoints,
    TResult Function(PickupPointOnMapClicked value)? pickupPointOnMapClicked,
    TResult Function(PickupInfoSlideChanged value)? pickupInfoSlideChanged,
    TResult Function(CurrentAddressChanged value)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements AddressOnMapEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class $BackButtonClickedCopyWith<$Res> {
  factory $BackButtonClickedCopyWith(
          BackButtonClicked value, $Res Function(BackButtonClicked) then) =
      _$BackButtonClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$BackButtonClickedCopyWithImpl<$Res>
    extends _$AddressOnMapEventCopyWithImpl<$Res>
    implements $BackButtonClickedCopyWith<$Res> {
  _$BackButtonClickedCopyWithImpl(
      BackButtonClicked _value, $Res Function(BackButtonClicked) _then)
      : super(_value, (v) => _then(v as BackButtonClicked));

  @override
  BackButtonClicked get _value => super._value as BackButtonClicked;
}

/// @nodoc

class _$BackButtonClicked implements BackButtonClicked {
  const _$BackButtonClicked();

  @override
  String toString() {
    return 'AddressOnMapEvent.backButtonClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BackButtonClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backButtonClicked,
    required TResult Function() changeAddressClicked,
    required TResult Function() plusClicked,
    required TResult Function() minusClicked,
    required TResult Function() myPositionClicked,
    required TResult Function() onMapCreated,
    required TResult Function(CameraPosition cameraPosition,
            bool cameraIsMoving, VisibleRegion? visibleRegion)
        onCameraMove,
    required TResult Function() selectThisAddressClicked,
    required TResult Function() showMessageNoGeo,
    required TResult Function() getCurrentAddress,
    required TResult Function() getPickupPoints,
    required TResult Function(PickupPointEntity pickupPointEntity)
        pickupPointOnMapClicked,
    required TResult Function(double position) pickupInfoSlideChanged,
    required TResult Function(Point point) currentAddressChanged,
  }) {
    return backButtonClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backButtonClicked,
    TResult Function()? changeAddressClicked,
    TResult Function()? plusClicked,
    TResult Function()? minusClicked,
    TResult Function()? myPositionClicked,
    TResult Function()? onMapCreated,
    TResult Function(CameraPosition cameraPosition, bool cameraIsMoving,
            VisibleRegion? visibleRegion)?
        onCameraMove,
    TResult Function()? selectThisAddressClicked,
    TResult Function()? showMessageNoGeo,
    TResult Function()? getCurrentAddress,
    TResult Function()? getPickupPoints,
    TResult Function(PickupPointEntity pickupPointEntity)?
        pickupPointOnMapClicked,
    TResult Function(double position)? pickupInfoSlideChanged,
    TResult Function(Point point)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (backButtonClicked != null) {
      return backButtonClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackButtonClicked value) backButtonClicked,
    required TResult Function(ChangeAddressClicked value) changeAddressClicked,
    required TResult Function(PlusClicked value) plusClicked,
    required TResult Function(MinusClicked value) minusClicked,
    required TResult Function(MyPositionClicked value) myPositionClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(GetPickupPoints value) getPickupPoints,
    required TResult Function(PickupPointOnMapClicked value)
        pickupPointOnMapClicked,
    required TResult Function(PickupInfoSlideChanged value)
        pickupInfoSlideChanged,
    required TResult Function(CurrentAddressChanged value)
        currentAddressChanged,
  }) {
    return backButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackButtonClicked value)? backButtonClicked,
    TResult Function(ChangeAddressClicked value)? changeAddressClicked,
    TResult Function(PlusClicked value)? plusClicked,
    TResult Function(MinusClicked value)? minusClicked,
    TResult Function(MyPositionClicked value)? myPositionClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(GetPickupPoints value)? getPickupPoints,
    TResult Function(PickupPointOnMapClicked value)? pickupPointOnMapClicked,
    TResult Function(PickupInfoSlideChanged value)? pickupInfoSlideChanged,
    TResult Function(CurrentAddressChanged value)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (backButtonClicked != null) {
      return backButtonClicked(this);
    }
    return orElse();
  }
}

abstract class BackButtonClicked implements AddressOnMapEvent {
  const factory BackButtonClicked() = _$BackButtonClicked;
}

/// @nodoc
abstract class $ChangeAddressClickedCopyWith<$Res> {
  factory $ChangeAddressClickedCopyWith(ChangeAddressClicked value,
          $Res Function(ChangeAddressClicked) then) =
      _$ChangeAddressClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangeAddressClickedCopyWithImpl<$Res>
    extends _$AddressOnMapEventCopyWithImpl<$Res>
    implements $ChangeAddressClickedCopyWith<$Res> {
  _$ChangeAddressClickedCopyWithImpl(
      ChangeAddressClicked _value, $Res Function(ChangeAddressClicked) _then)
      : super(_value, (v) => _then(v as ChangeAddressClicked));

  @override
  ChangeAddressClicked get _value => super._value as ChangeAddressClicked;
}

/// @nodoc

class _$ChangeAddressClicked implements ChangeAddressClicked {
  const _$ChangeAddressClicked();

  @override
  String toString() {
    return 'AddressOnMapEvent.changeAddressClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChangeAddressClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backButtonClicked,
    required TResult Function() changeAddressClicked,
    required TResult Function() plusClicked,
    required TResult Function() minusClicked,
    required TResult Function() myPositionClicked,
    required TResult Function() onMapCreated,
    required TResult Function(CameraPosition cameraPosition,
            bool cameraIsMoving, VisibleRegion? visibleRegion)
        onCameraMove,
    required TResult Function() selectThisAddressClicked,
    required TResult Function() showMessageNoGeo,
    required TResult Function() getCurrentAddress,
    required TResult Function() getPickupPoints,
    required TResult Function(PickupPointEntity pickupPointEntity)
        pickupPointOnMapClicked,
    required TResult Function(double position) pickupInfoSlideChanged,
    required TResult Function(Point point) currentAddressChanged,
  }) {
    return changeAddressClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backButtonClicked,
    TResult Function()? changeAddressClicked,
    TResult Function()? plusClicked,
    TResult Function()? minusClicked,
    TResult Function()? myPositionClicked,
    TResult Function()? onMapCreated,
    TResult Function(CameraPosition cameraPosition, bool cameraIsMoving,
            VisibleRegion? visibleRegion)?
        onCameraMove,
    TResult Function()? selectThisAddressClicked,
    TResult Function()? showMessageNoGeo,
    TResult Function()? getCurrentAddress,
    TResult Function()? getPickupPoints,
    TResult Function(PickupPointEntity pickupPointEntity)?
        pickupPointOnMapClicked,
    TResult Function(double position)? pickupInfoSlideChanged,
    TResult Function(Point point)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (changeAddressClicked != null) {
      return changeAddressClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackButtonClicked value) backButtonClicked,
    required TResult Function(ChangeAddressClicked value) changeAddressClicked,
    required TResult Function(PlusClicked value) plusClicked,
    required TResult Function(MinusClicked value) minusClicked,
    required TResult Function(MyPositionClicked value) myPositionClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(GetPickupPoints value) getPickupPoints,
    required TResult Function(PickupPointOnMapClicked value)
        pickupPointOnMapClicked,
    required TResult Function(PickupInfoSlideChanged value)
        pickupInfoSlideChanged,
    required TResult Function(CurrentAddressChanged value)
        currentAddressChanged,
  }) {
    return changeAddressClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackButtonClicked value)? backButtonClicked,
    TResult Function(ChangeAddressClicked value)? changeAddressClicked,
    TResult Function(PlusClicked value)? plusClicked,
    TResult Function(MinusClicked value)? minusClicked,
    TResult Function(MyPositionClicked value)? myPositionClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(GetPickupPoints value)? getPickupPoints,
    TResult Function(PickupPointOnMapClicked value)? pickupPointOnMapClicked,
    TResult Function(PickupInfoSlideChanged value)? pickupInfoSlideChanged,
    TResult Function(CurrentAddressChanged value)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (changeAddressClicked != null) {
      return changeAddressClicked(this);
    }
    return orElse();
  }
}

abstract class ChangeAddressClicked implements AddressOnMapEvent {
  const factory ChangeAddressClicked() = _$ChangeAddressClicked;
}

/// @nodoc
abstract class $PlusClickedCopyWith<$Res> {
  factory $PlusClickedCopyWith(
          PlusClicked value, $Res Function(PlusClicked) then) =
      _$PlusClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlusClickedCopyWithImpl<$Res>
    extends _$AddressOnMapEventCopyWithImpl<$Res>
    implements $PlusClickedCopyWith<$Res> {
  _$PlusClickedCopyWithImpl(
      PlusClicked _value, $Res Function(PlusClicked) _then)
      : super(_value, (v) => _then(v as PlusClicked));

  @override
  PlusClicked get _value => super._value as PlusClicked;
}

/// @nodoc

class _$PlusClicked implements PlusClicked {
  const _$PlusClicked();

  @override
  String toString() {
    return 'AddressOnMapEvent.plusClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PlusClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backButtonClicked,
    required TResult Function() changeAddressClicked,
    required TResult Function() plusClicked,
    required TResult Function() minusClicked,
    required TResult Function() myPositionClicked,
    required TResult Function() onMapCreated,
    required TResult Function(CameraPosition cameraPosition,
            bool cameraIsMoving, VisibleRegion? visibleRegion)
        onCameraMove,
    required TResult Function() selectThisAddressClicked,
    required TResult Function() showMessageNoGeo,
    required TResult Function() getCurrentAddress,
    required TResult Function() getPickupPoints,
    required TResult Function(PickupPointEntity pickupPointEntity)
        pickupPointOnMapClicked,
    required TResult Function(double position) pickupInfoSlideChanged,
    required TResult Function(Point point) currentAddressChanged,
  }) {
    return plusClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backButtonClicked,
    TResult Function()? changeAddressClicked,
    TResult Function()? plusClicked,
    TResult Function()? minusClicked,
    TResult Function()? myPositionClicked,
    TResult Function()? onMapCreated,
    TResult Function(CameraPosition cameraPosition, bool cameraIsMoving,
            VisibleRegion? visibleRegion)?
        onCameraMove,
    TResult Function()? selectThisAddressClicked,
    TResult Function()? showMessageNoGeo,
    TResult Function()? getCurrentAddress,
    TResult Function()? getPickupPoints,
    TResult Function(PickupPointEntity pickupPointEntity)?
        pickupPointOnMapClicked,
    TResult Function(double position)? pickupInfoSlideChanged,
    TResult Function(Point point)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (plusClicked != null) {
      return plusClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackButtonClicked value) backButtonClicked,
    required TResult Function(ChangeAddressClicked value) changeAddressClicked,
    required TResult Function(PlusClicked value) plusClicked,
    required TResult Function(MinusClicked value) minusClicked,
    required TResult Function(MyPositionClicked value) myPositionClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(GetPickupPoints value) getPickupPoints,
    required TResult Function(PickupPointOnMapClicked value)
        pickupPointOnMapClicked,
    required TResult Function(PickupInfoSlideChanged value)
        pickupInfoSlideChanged,
    required TResult Function(CurrentAddressChanged value)
        currentAddressChanged,
  }) {
    return plusClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackButtonClicked value)? backButtonClicked,
    TResult Function(ChangeAddressClicked value)? changeAddressClicked,
    TResult Function(PlusClicked value)? plusClicked,
    TResult Function(MinusClicked value)? minusClicked,
    TResult Function(MyPositionClicked value)? myPositionClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(GetPickupPoints value)? getPickupPoints,
    TResult Function(PickupPointOnMapClicked value)? pickupPointOnMapClicked,
    TResult Function(PickupInfoSlideChanged value)? pickupInfoSlideChanged,
    TResult Function(CurrentAddressChanged value)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (plusClicked != null) {
      return plusClicked(this);
    }
    return orElse();
  }
}

abstract class PlusClicked implements AddressOnMapEvent {
  const factory PlusClicked() = _$PlusClicked;
}

/// @nodoc
abstract class $MinusClickedCopyWith<$Res> {
  factory $MinusClickedCopyWith(
          MinusClicked value, $Res Function(MinusClicked) then) =
      _$MinusClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$MinusClickedCopyWithImpl<$Res>
    extends _$AddressOnMapEventCopyWithImpl<$Res>
    implements $MinusClickedCopyWith<$Res> {
  _$MinusClickedCopyWithImpl(
      MinusClicked _value, $Res Function(MinusClicked) _then)
      : super(_value, (v) => _then(v as MinusClicked));

  @override
  MinusClicked get _value => super._value as MinusClicked;
}

/// @nodoc

class _$MinusClicked implements MinusClicked {
  const _$MinusClicked();

  @override
  String toString() {
    return 'AddressOnMapEvent.minusClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MinusClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backButtonClicked,
    required TResult Function() changeAddressClicked,
    required TResult Function() plusClicked,
    required TResult Function() minusClicked,
    required TResult Function() myPositionClicked,
    required TResult Function() onMapCreated,
    required TResult Function(CameraPosition cameraPosition,
            bool cameraIsMoving, VisibleRegion? visibleRegion)
        onCameraMove,
    required TResult Function() selectThisAddressClicked,
    required TResult Function() showMessageNoGeo,
    required TResult Function() getCurrentAddress,
    required TResult Function() getPickupPoints,
    required TResult Function(PickupPointEntity pickupPointEntity)
        pickupPointOnMapClicked,
    required TResult Function(double position) pickupInfoSlideChanged,
    required TResult Function(Point point) currentAddressChanged,
  }) {
    return minusClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backButtonClicked,
    TResult Function()? changeAddressClicked,
    TResult Function()? plusClicked,
    TResult Function()? minusClicked,
    TResult Function()? myPositionClicked,
    TResult Function()? onMapCreated,
    TResult Function(CameraPosition cameraPosition, bool cameraIsMoving,
            VisibleRegion? visibleRegion)?
        onCameraMove,
    TResult Function()? selectThisAddressClicked,
    TResult Function()? showMessageNoGeo,
    TResult Function()? getCurrentAddress,
    TResult Function()? getPickupPoints,
    TResult Function(PickupPointEntity pickupPointEntity)?
        pickupPointOnMapClicked,
    TResult Function(double position)? pickupInfoSlideChanged,
    TResult Function(Point point)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (minusClicked != null) {
      return minusClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackButtonClicked value) backButtonClicked,
    required TResult Function(ChangeAddressClicked value) changeAddressClicked,
    required TResult Function(PlusClicked value) plusClicked,
    required TResult Function(MinusClicked value) minusClicked,
    required TResult Function(MyPositionClicked value) myPositionClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(GetPickupPoints value) getPickupPoints,
    required TResult Function(PickupPointOnMapClicked value)
        pickupPointOnMapClicked,
    required TResult Function(PickupInfoSlideChanged value)
        pickupInfoSlideChanged,
    required TResult Function(CurrentAddressChanged value)
        currentAddressChanged,
  }) {
    return minusClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackButtonClicked value)? backButtonClicked,
    TResult Function(ChangeAddressClicked value)? changeAddressClicked,
    TResult Function(PlusClicked value)? plusClicked,
    TResult Function(MinusClicked value)? minusClicked,
    TResult Function(MyPositionClicked value)? myPositionClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(GetPickupPoints value)? getPickupPoints,
    TResult Function(PickupPointOnMapClicked value)? pickupPointOnMapClicked,
    TResult Function(PickupInfoSlideChanged value)? pickupInfoSlideChanged,
    TResult Function(CurrentAddressChanged value)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (minusClicked != null) {
      return minusClicked(this);
    }
    return orElse();
  }
}

abstract class MinusClicked implements AddressOnMapEvent {
  const factory MinusClicked() = _$MinusClicked;
}

/// @nodoc
abstract class $MyPositionClickedCopyWith<$Res> {
  factory $MyPositionClickedCopyWith(
          MyPositionClicked value, $Res Function(MyPositionClicked) then) =
      _$MyPositionClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyPositionClickedCopyWithImpl<$Res>
    extends _$AddressOnMapEventCopyWithImpl<$Res>
    implements $MyPositionClickedCopyWith<$Res> {
  _$MyPositionClickedCopyWithImpl(
      MyPositionClicked _value, $Res Function(MyPositionClicked) _then)
      : super(_value, (v) => _then(v as MyPositionClicked));

  @override
  MyPositionClicked get _value => super._value as MyPositionClicked;
}

/// @nodoc

class _$MyPositionClicked implements MyPositionClicked {
  const _$MyPositionClicked();

  @override
  String toString() {
    return 'AddressOnMapEvent.myPositionClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MyPositionClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backButtonClicked,
    required TResult Function() changeAddressClicked,
    required TResult Function() plusClicked,
    required TResult Function() minusClicked,
    required TResult Function() myPositionClicked,
    required TResult Function() onMapCreated,
    required TResult Function(CameraPosition cameraPosition,
            bool cameraIsMoving, VisibleRegion? visibleRegion)
        onCameraMove,
    required TResult Function() selectThisAddressClicked,
    required TResult Function() showMessageNoGeo,
    required TResult Function() getCurrentAddress,
    required TResult Function() getPickupPoints,
    required TResult Function(PickupPointEntity pickupPointEntity)
        pickupPointOnMapClicked,
    required TResult Function(double position) pickupInfoSlideChanged,
    required TResult Function(Point point) currentAddressChanged,
  }) {
    return myPositionClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backButtonClicked,
    TResult Function()? changeAddressClicked,
    TResult Function()? plusClicked,
    TResult Function()? minusClicked,
    TResult Function()? myPositionClicked,
    TResult Function()? onMapCreated,
    TResult Function(CameraPosition cameraPosition, bool cameraIsMoving,
            VisibleRegion? visibleRegion)?
        onCameraMove,
    TResult Function()? selectThisAddressClicked,
    TResult Function()? showMessageNoGeo,
    TResult Function()? getCurrentAddress,
    TResult Function()? getPickupPoints,
    TResult Function(PickupPointEntity pickupPointEntity)?
        pickupPointOnMapClicked,
    TResult Function(double position)? pickupInfoSlideChanged,
    TResult Function(Point point)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (myPositionClicked != null) {
      return myPositionClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackButtonClicked value) backButtonClicked,
    required TResult Function(ChangeAddressClicked value) changeAddressClicked,
    required TResult Function(PlusClicked value) plusClicked,
    required TResult Function(MinusClicked value) minusClicked,
    required TResult Function(MyPositionClicked value) myPositionClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(GetPickupPoints value) getPickupPoints,
    required TResult Function(PickupPointOnMapClicked value)
        pickupPointOnMapClicked,
    required TResult Function(PickupInfoSlideChanged value)
        pickupInfoSlideChanged,
    required TResult Function(CurrentAddressChanged value)
        currentAddressChanged,
  }) {
    return myPositionClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackButtonClicked value)? backButtonClicked,
    TResult Function(ChangeAddressClicked value)? changeAddressClicked,
    TResult Function(PlusClicked value)? plusClicked,
    TResult Function(MinusClicked value)? minusClicked,
    TResult Function(MyPositionClicked value)? myPositionClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(GetPickupPoints value)? getPickupPoints,
    TResult Function(PickupPointOnMapClicked value)? pickupPointOnMapClicked,
    TResult Function(PickupInfoSlideChanged value)? pickupInfoSlideChanged,
    TResult Function(CurrentAddressChanged value)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (myPositionClicked != null) {
      return myPositionClicked(this);
    }
    return orElse();
  }
}

abstract class MyPositionClicked implements AddressOnMapEvent {
  const factory MyPositionClicked() = _$MyPositionClicked;
}

/// @nodoc
abstract class $OnMapCreatedCopyWith<$Res> {
  factory $OnMapCreatedCopyWith(
          OnMapCreated value, $Res Function(OnMapCreated) then) =
      _$OnMapCreatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnMapCreatedCopyWithImpl<$Res>
    extends _$AddressOnMapEventCopyWithImpl<$Res>
    implements $OnMapCreatedCopyWith<$Res> {
  _$OnMapCreatedCopyWithImpl(
      OnMapCreated _value, $Res Function(OnMapCreated) _then)
      : super(_value, (v) => _then(v as OnMapCreated));

  @override
  OnMapCreated get _value => super._value as OnMapCreated;
}

/// @nodoc

class _$OnMapCreated implements OnMapCreated {
  const _$OnMapCreated();

  @override
  String toString() {
    return 'AddressOnMapEvent.onMapCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnMapCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backButtonClicked,
    required TResult Function() changeAddressClicked,
    required TResult Function() plusClicked,
    required TResult Function() minusClicked,
    required TResult Function() myPositionClicked,
    required TResult Function() onMapCreated,
    required TResult Function(CameraPosition cameraPosition,
            bool cameraIsMoving, VisibleRegion? visibleRegion)
        onCameraMove,
    required TResult Function() selectThisAddressClicked,
    required TResult Function() showMessageNoGeo,
    required TResult Function() getCurrentAddress,
    required TResult Function() getPickupPoints,
    required TResult Function(PickupPointEntity pickupPointEntity)
        pickupPointOnMapClicked,
    required TResult Function(double position) pickupInfoSlideChanged,
    required TResult Function(Point point) currentAddressChanged,
  }) {
    return onMapCreated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backButtonClicked,
    TResult Function()? changeAddressClicked,
    TResult Function()? plusClicked,
    TResult Function()? minusClicked,
    TResult Function()? myPositionClicked,
    TResult Function()? onMapCreated,
    TResult Function(CameraPosition cameraPosition, bool cameraIsMoving,
            VisibleRegion? visibleRegion)?
        onCameraMove,
    TResult Function()? selectThisAddressClicked,
    TResult Function()? showMessageNoGeo,
    TResult Function()? getCurrentAddress,
    TResult Function()? getPickupPoints,
    TResult Function(PickupPointEntity pickupPointEntity)?
        pickupPointOnMapClicked,
    TResult Function(double position)? pickupInfoSlideChanged,
    TResult Function(Point point)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (onMapCreated != null) {
      return onMapCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackButtonClicked value) backButtonClicked,
    required TResult Function(ChangeAddressClicked value) changeAddressClicked,
    required TResult Function(PlusClicked value) plusClicked,
    required TResult Function(MinusClicked value) minusClicked,
    required TResult Function(MyPositionClicked value) myPositionClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(GetPickupPoints value) getPickupPoints,
    required TResult Function(PickupPointOnMapClicked value)
        pickupPointOnMapClicked,
    required TResult Function(PickupInfoSlideChanged value)
        pickupInfoSlideChanged,
    required TResult Function(CurrentAddressChanged value)
        currentAddressChanged,
  }) {
    return onMapCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackButtonClicked value)? backButtonClicked,
    TResult Function(ChangeAddressClicked value)? changeAddressClicked,
    TResult Function(PlusClicked value)? plusClicked,
    TResult Function(MinusClicked value)? minusClicked,
    TResult Function(MyPositionClicked value)? myPositionClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(GetPickupPoints value)? getPickupPoints,
    TResult Function(PickupPointOnMapClicked value)? pickupPointOnMapClicked,
    TResult Function(PickupInfoSlideChanged value)? pickupInfoSlideChanged,
    TResult Function(CurrentAddressChanged value)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (onMapCreated != null) {
      return onMapCreated(this);
    }
    return orElse();
  }
}

abstract class OnMapCreated implements AddressOnMapEvent {
  const factory OnMapCreated() = _$OnMapCreated;
}

/// @nodoc
abstract class $OnCameraMoveCopyWith<$Res> {
  factory $OnCameraMoveCopyWith(
          OnCameraMove value, $Res Function(OnCameraMove) then) =
      _$OnCameraMoveCopyWithImpl<$Res>;
  $Res call(
      {CameraPosition cameraPosition,
      bool cameraIsMoving,
      VisibleRegion? visibleRegion});
}

/// @nodoc
class _$OnCameraMoveCopyWithImpl<$Res>
    extends _$AddressOnMapEventCopyWithImpl<$Res>
    implements $OnCameraMoveCopyWith<$Res> {
  _$OnCameraMoveCopyWithImpl(
      OnCameraMove _value, $Res Function(OnCameraMove) _then)
      : super(_value, (v) => _then(v as OnCameraMove));

  @override
  OnCameraMove get _value => super._value as OnCameraMove;

  @override
  $Res call({
    Object? cameraPosition = freezed,
    Object? cameraIsMoving = freezed,
    Object? visibleRegion = freezed,
  }) {
    return _then(OnCameraMove(
      cameraPosition: cameraPosition == freezed
          ? _value.cameraPosition
          : cameraPosition // ignore: cast_nullable_to_non_nullable
              as CameraPosition,
      cameraIsMoving: cameraIsMoving == freezed
          ? _value.cameraIsMoving
          : cameraIsMoving // ignore: cast_nullable_to_non_nullable
              as bool,
      visibleRegion: visibleRegion == freezed
          ? _value.visibleRegion
          : visibleRegion // ignore: cast_nullable_to_non_nullable
              as VisibleRegion?,
    ));
  }
}

/// @nodoc

class _$OnCameraMove implements OnCameraMove {
  const _$OnCameraMove(
      {required this.cameraPosition,
      required this.cameraIsMoving,
      this.visibleRegion});

  @override
  final CameraPosition cameraPosition;
  @override
  final bool cameraIsMoving;
  @override
  final VisibleRegion? visibleRegion;

  @override
  String toString() {
    return 'AddressOnMapEvent.onCameraMove(cameraPosition: $cameraPosition, cameraIsMoving: $cameraIsMoving, visibleRegion: $visibleRegion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnCameraMove &&
            (identical(other.cameraPosition, cameraPosition) ||
                const DeepCollectionEquality()
                    .equals(other.cameraPosition, cameraPosition)) &&
            (identical(other.cameraIsMoving, cameraIsMoving) ||
                const DeepCollectionEquality()
                    .equals(other.cameraIsMoving, cameraIsMoving)) &&
            (identical(other.visibleRegion, visibleRegion) ||
                const DeepCollectionEquality()
                    .equals(other.visibleRegion, visibleRegion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cameraPosition) ^
      const DeepCollectionEquality().hash(cameraIsMoving) ^
      const DeepCollectionEquality().hash(visibleRegion);

  @JsonKey(ignore: true)
  @override
  $OnCameraMoveCopyWith<OnCameraMove> get copyWith =>
      _$OnCameraMoveCopyWithImpl<OnCameraMove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backButtonClicked,
    required TResult Function() changeAddressClicked,
    required TResult Function() plusClicked,
    required TResult Function() minusClicked,
    required TResult Function() myPositionClicked,
    required TResult Function() onMapCreated,
    required TResult Function(CameraPosition cameraPosition,
            bool cameraIsMoving, VisibleRegion? visibleRegion)
        onCameraMove,
    required TResult Function() selectThisAddressClicked,
    required TResult Function() showMessageNoGeo,
    required TResult Function() getCurrentAddress,
    required TResult Function() getPickupPoints,
    required TResult Function(PickupPointEntity pickupPointEntity)
        pickupPointOnMapClicked,
    required TResult Function(double position) pickupInfoSlideChanged,
    required TResult Function(Point point) currentAddressChanged,
  }) {
    return onCameraMove(cameraPosition, cameraIsMoving, visibleRegion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backButtonClicked,
    TResult Function()? changeAddressClicked,
    TResult Function()? plusClicked,
    TResult Function()? minusClicked,
    TResult Function()? myPositionClicked,
    TResult Function()? onMapCreated,
    TResult Function(CameraPosition cameraPosition, bool cameraIsMoving,
            VisibleRegion? visibleRegion)?
        onCameraMove,
    TResult Function()? selectThisAddressClicked,
    TResult Function()? showMessageNoGeo,
    TResult Function()? getCurrentAddress,
    TResult Function()? getPickupPoints,
    TResult Function(PickupPointEntity pickupPointEntity)?
        pickupPointOnMapClicked,
    TResult Function(double position)? pickupInfoSlideChanged,
    TResult Function(Point point)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (onCameraMove != null) {
      return onCameraMove(cameraPosition, cameraIsMoving, visibleRegion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackButtonClicked value) backButtonClicked,
    required TResult Function(ChangeAddressClicked value) changeAddressClicked,
    required TResult Function(PlusClicked value) plusClicked,
    required TResult Function(MinusClicked value) minusClicked,
    required TResult Function(MyPositionClicked value) myPositionClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(GetPickupPoints value) getPickupPoints,
    required TResult Function(PickupPointOnMapClicked value)
        pickupPointOnMapClicked,
    required TResult Function(PickupInfoSlideChanged value)
        pickupInfoSlideChanged,
    required TResult Function(CurrentAddressChanged value)
        currentAddressChanged,
  }) {
    return onCameraMove(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackButtonClicked value)? backButtonClicked,
    TResult Function(ChangeAddressClicked value)? changeAddressClicked,
    TResult Function(PlusClicked value)? plusClicked,
    TResult Function(MinusClicked value)? minusClicked,
    TResult Function(MyPositionClicked value)? myPositionClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(GetPickupPoints value)? getPickupPoints,
    TResult Function(PickupPointOnMapClicked value)? pickupPointOnMapClicked,
    TResult Function(PickupInfoSlideChanged value)? pickupInfoSlideChanged,
    TResult Function(CurrentAddressChanged value)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (onCameraMove != null) {
      return onCameraMove(this);
    }
    return orElse();
  }
}

abstract class OnCameraMove implements AddressOnMapEvent {
  const factory OnCameraMove(
      {required CameraPosition cameraPosition,
      required bool cameraIsMoving,
      VisibleRegion? visibleRegion}) = _$OnCameraMove;

  CameraPosition get cameraPosition => throw _privateConstructorUsedError;
  bool get cameraIsMoving => throw _privateConstructorUsedError;
  VisibleRegion? get visibleRegion => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnCameraMoveCopyWith<OnCameraMove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectThisAddressClickedCopyWith<$Res> {
  factory $SelectThisAddressClickedCopyWith(SelectThisAddressClicked value,
          $Res Function(SelectThisAddressClicked) then) =
      _$SelectThisAddressClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectThisAddressClickedCopyWithImpl<$Res>
    extends _$AddressOnMapEventCopyWithImpl<$Res>
    implements $SelectThisAddressClickedCopyWith<$Res> {
  _$SelectThisAddressClickedCopyWithImpl(SelectThisAddressClicked _value,
      $Res Function(SelectThisAddressClicked) _then)
      : super(_value, (v) => _then(v as SelectThisAddressClicked));

  @override
  SelectThisAddressClicked get _value =>
      super._value as SelectThisAddressClicked;
}

/// @nodoc

class _$SelectThisAddressClicked implements SelectThisAddressClicked {
  const _$SelectThisAddressClicked();

  @override
  String toString() {
    return 'AddressOnMapEvent.selectThisAddressClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SelectThisAddressClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backButtonClicked,
    required TResult Function() changeAddressClicked,
    required TResult Function() plusClicked,
    required TResult Function() minusClicked,
    required TResult Function() myPositionClicked,
    required TResult Function() onMapCreated,
    required TResult Function(CameraPosition cameraPosition,
            bool cameraIsMoving, VisibleRegion? visibleRegion)
        onCameraMove,
    required TResult Function() selectThisAddressClicked,
    required TResult Function() showMessageNoGeo,
    required TResult Function() getCurrentAddress,
    required TResult Function() getPickupPoints,
    required TResult Function(PickupPointEntity pickupPointEntity)
        pickupPointOnMapClicked,
    required TResult Function(double position) pickupInfoSlideChanged,
    required TResult Function(Point point) currentAddressChanged,
  }) {
    return selectThisAddressClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backButtonClicked,
    TResult Function()? changeAddressClicked,
    TResult Function()? plusClicked,
    TResult Function()? minusClicked,
    TResult Function()? myPositionClicked,
    TResult Function()? onMapCreated,
    TResult Function(CameraPosition cameraPosition, bool cameraIsMoving,
            VisibleRegion? visibleRegion)?
        onCameraMove,
    TResult Function()? selectThisAddressClicked,
    TResult Function()? showMessageNoGeo,
    TResult Function()? getCurrentAddress,
    TResult Function()? getPickupPoints,
    TResult Function(PickupPointEntity pickupPointEntity)?
        pickupPointOnMapClicked,
    TResult Function(double position)? pickupInfoSlideChanged,
    TResult Function(Point point)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (selectThisAddressClicked != null) {
      return selectThisAddressClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackButtonClicked value) backButtonClicked,
    required TResult Function(ChangeAddressClicked value) changeAddressClicked,
    required TResult Function(PlusClicked value) plusClicked,
    required TResult Function(MinusClicked value) minusClicked,
    required TResult Function(MyPositionClicked value) myPositionClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(GetPickupPoints value) getPickupPoints,
    required TResult Function(PickupPointOnMapClicked value)
        pickupPointOnMapClicked,
    required TResult Function(PickupInfoSlideChanged value)
        pickupInfoSlideChanged,
    required TResult Function(CurrentAddressChanged value)
        currentAddressChanged,
  }) {
    return selectThisAddressClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackButtonClicked value)? backButtonClicked,
    TResult Function(ChangeAddressClicked value)? changeAddressClicked,
    TResult Function(PlusClicked value)? plusClicked,
    TResult Function(MinusClicked value)? minusClicked,
    TResult Function(MyPositionClicked value)? myPositionClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(GetPickupPoints value)? getPickupPoints,
    TResult Function(PickupPointOnMapClicked value)? pickupPointOnMapClicked,
    TResult Function(PickupInfoSlideChanged value)? pickupInfoSlideChanged,
    TResult Function(CurrentAddressChanged value)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (selectThisAddressClicked != null) {
      return selectThisAddressClicked(this);
    }
    return orElse();
  }
}

abstract class SelectThisAddressClicked implements AddressOnMapEvent {
  const factory SelectThisAddressClicked() = _$SelectThisAddressClicked;
}

/// @nodoc
abstract class $ShowMessageNoGeoCopyWith<$Res> {
  factory $ShowMessageNoGeoCopyWith(
          ShowMessageNoGeo value, $Res Function(ShowMessageNoGeo) then) =
      _$ShowMessageNoGeoCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowMessageNoGeoCopyWithImpl<$Res>
    extends _$AddressOnMapEventCopyWithImpl<$Res>
    implements $ShowMessageNoGeoCopyWith<$Res> {
  _$ShowMessageNoGeoCopyWithImpl(
      ShowMessageNoGeo _value, $Res Function(ShowMessageNoGeo) _then)
      : super(_value, (v) => _then(v as ShowMessageNoGeo));

  @override
  ShowMessageNoGeo get _value => super._value as ShowMessageNoGeo;
}

/// @nodoc

class _$ShowMessageNoGeo implements ShowMessageNoGeo {
  const _$ShowMessageNoGeo();

  @override
  String toString() {
    return 'AddressOnMapEvent.showMessageNoGeo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowMessageNoGeo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backButtonClicked,
    required TResult Function() changeAddressClicked,
    required TResult Function() plusClicked,
    required TResult Function() minusClicked,
    required TResult Function() myPositionClicked,
    required TResult Function() onMapCreated,
    required TResult Function(CameraPosition cameraPosition,
            bool cameraIsMoving, VisibleRegion? visibleRegion)
        onCameraMove,
    required TResult Function() selectThisAddressClicked,
    required TResult Function() showMessageNoGeo,
    required TResult Function() getCurrentAddress,
    required TResult Function() getPickupPoints,
    required TResult Function(PickupPointEntity pickupPointEntity)
        pickupPointOnMapClicked,
    required TResult Function(double position) pickupInfoSlideChanged,
    required TResult Function(Point point) currentAddressChanged,
  }) {
    return showMessageNoGeo();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backButtonClicked,
    TResult Function()? changeAddressClicked,
    TResult Function()? plusClicked,
    TResult Function()? minusClicked,
    TResult Function()? myPositionClicked,
    TResult Function()? onMapCreated,
    TResult Function(CameraPosition cameraPosition, bool cameraIsMoving,
            VisibleRegion? visibleRegion)?
        onCameraMove,
    TResult Function()? selectThisAddressClicked,
    TResult Function()? showMessageNoGeo,
    TResult Function()? getCurrentAddress,
    TResult Function()? getPickupPoints,
    TResult Function(PickupPointEntity pickupPointEntity)?
        pickupPointOnMapClicked,
    TResult Function(double position)? pickupInfoSlideChanged,
    TResult Function(Point point)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (showMessageNoGeo != null) {
      return showMessageNoGeo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackButtonClicked value) backButtonClicked,
    required TResult Function(ChangeAddressClicked value) changeAddressClicked,
    required TResult Function(PlusClicked value) plusClicked,
    required TResult Function(MinusClicked value) minusClicked,
    required TResult Function(MyPositionClicked value) myPositionClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(GetPickupPoints value) getPickupPoints,
    required TResult Function(PickupPointOnMapClicked value)
        pickupPointOnMapClicked,
    required TResult Function(PickupInfoSlideChanged value)
        pickupInfoSlideChanged,
    required TResult Function(CurrentAddressChanged value)
        currentAddressChanged,
  }) {
    return showMessageNoGeo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackButtonClicked value)? backButtonClicked,
    TResult Function(ChangeAddressClicked value)? changeAddressClicked,
    TResult Function(PlusClicked value)? plusClicked,
    TResult Function(MinusClicked value)? minusClicked,
    TResult Function(MyPositionClicked value)? myPositionClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(GetPickupPoints value)? getPickupPoints,
    TResult Function(PickupPointOnMapClicked value)? pickupPointOnMapClicked,
    TResult Function(PickupInfoSlideChanged value)? pickupInfoSlideChanged,
    TResult Function(CurrentAddressChanged value)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (showMessageNoGeo != null) {
      return showMessageNoGeo(this);
    }
    return orElse();
  }
}

abstract class ShowMessageNoGeo implements AddressOnMapEvent {
  const factory ShowMessageNoGeo() = _$ShowMessageNoGeo;
}

/// @nodoc
abstract class $GetCurrentAddressCopyWith<$Res> {
  factory $GetCurrentAddressCopyWith(
          GetCurrentAddress value, $Res Function(GetCurrentAddress) then) =
      _$GetCurrentAddressCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCurrentAddressCopyWithImpl<$Res>
    extends _$AddressOnMapEventCopyWithImpl<$Res>
    implements $GetCurrentAddressCopyWith<$Res> {
  _$GetCurrentAddressCopyWithImpl(
      GetCurrentAddress _value, $Res Function(GetCurrentAddress) _then)
      : super(_value, (v) => _then(v as GetCurrentAddress));

  @override
  GetCurrentAddress get _value => super._value as GetCurrentAddress;
}

/// @nodoc

class _$GetCurrentAddress implements GetCurrentAddress {
  const _$GetCurrentAddress();

  @override
  String toString() {
    return 'AddressOnMapEvent.getCurrentAddress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetCurrentAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backButtonClicked,
    required TResult Function() changeAddressClicked,
    required TResult Function() plusClicked,
    required TResult Function() minusClicked,
    required TResult Function() myPositionClicked,
    required TResult Function() onMapCreated,
    required TResult Function(CameraPosition cameraPosition,
            bool cameraIsMoving, VisibleRegion? visibleRegion)
        onCameraMove,
    required TResult Function() selectThisAddressClicked,
    required TResult Function() showMessageNoGeo,
    required TResult Function() getCurrentAddress,
    required TResult Function() getPickupPoints,
    required TResult Function(PickupPointEntity pickupPointEntity)
        pickupPointOnMapClicked,
    required TResult Function(double position) pickupInfoSlideChanged,
    required TResult Function(Point point) currentAddressChanged,
  }) {
    return getCurrentAddress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backButtonClicked,
    TResult Function()? changeAddressClicked,
    TResult Function()? plusClicked,
    TResult Function()? minusClicked,
    TResult Function()? myPositionClicked,
    TResult Function()? onMapCreated,
    TResult Function(CameraPosition cameraPosition, bool cameraIsMoving,
            VisibleRegion? visibleRegion)?
        onCameraMove,
    TResult Function()? selectThisAddressClicked,
    TResult Function()? showMessageNoGeo,
    TResult Function()? getCurrentAddress,
    TResult Function()? getPickupPoints,
    TResult Function(PickupPointEntity pickupPointEntity)?
        pickupPointOnMapClicked,
    TResult Function(double position)? pickupInfoSlideChanged,
    TResult Function(Point point)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (getCurrentAddress != null) {
      return getCurrentAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackButtonClicked value) backButtonClicked,
    required TResult Function(ChangeAddressClicked value) changeAddressClicked,
    required TResult Function(PlusClicked value) plusClicked,
    required TResult Function(MinusClicked value) minusClicked,
    required TResult Function(MyPositionClicked value) myPositionClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(GetPickupPoints value) getPickupPoints,
    required TResult Function(PickupPointOnMapClicked value)
        pickupPointOnMapClicked,
    required TResult Function(PickupInfoSlideChanged value)
        pickupInfoSlideChanged,
    required TResult Function(CurrentAddressChanged value)
        currentAddressChanged,
  }) {
    return getCurrentAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackButtonClicked value)? backButtonClicked,
    TResult Function(ChangeAddressClicked value)? changeAddressClicked,
    TResult Function(PlusClicked value)? plusClicked,
    TResult Function(MinusClicked value)? minusClicked,
    TResult Function(MyPositionClicked value)? myPositionClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(GetPickupPoints value)? getPickupPoints,
    TResult Function(PickupPointOnMapClicked value)? pickupPointOnMapClicked,
    TResult Function(PickupInfoSlideChanged value)? pickupInfoSlideChanged,
    TResult Function(CurrentAddressChanged value)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (getCurrentAddress != null) {
      return getCurrentAddress(this);
    }
    return orElse();
  }
}

abstract class GetCurrentAddress implements AddressOnMapEvent {
  const factory GetCurrentAddress() = _$GetCurrentAddress;
}

/// @nodoc
abstract class $GetPickupPointsCopyWith<$Res> {
  factory $GetPickupPointsCopyWith(
          GetPickupPoints value, $Res Function(GetPickupPoints) then) =
      _$GetPickupPointsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPickupPointsCopyWithImpl<$Res>
    extends _$AddressOnMapEventCopyWithImpl<$Res>
    implements $GetPickupPointsCopyWith<$Res> {
  _$GetPickupPointsCopyWithImpl(
      GetPickupPoints _value, $Res Function(GetPickupPoints) _then)
      : super(_value, (v) => _then(v as GetPickupPoints));

  @override
  GetPickupPoints get _value => super._value as GetPickupPoints;
}

/// @nodoc

class _$GetPickupPoints implements GetPickupPoints {
  const _$GetPickupPoints();

  @override
  String toString() {
    return 'AddressOnMapEvent.getPickupPoints()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetPickupPoints);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backButtonClicked,
    required TResult Function() changeAddressClicked,
    required TResult Function() plusClicked,
    required TResult Function() minusClicked,
    required TResult Function() myPositionClicked,
    required TResult Function() onMapCreated,
    required TResult Function(CameraPosition cameraPosition,
            bool cameraIsMoving, VisibleRegion? visibleRegion)
        onCameraMove,
    required TResult Function() selectThisAddressClicked,
    required TResult Function() showMessageNoGeo,
    required TResult Function() getCurrentAddress,
    required TResult Function() getPickupPoints,
    required TResult Function(PickupPointEntity pickupPointEntity)
        pickupPointOnMapClicked,
    required TResult Function(double position) pickupInfoSlideChanged,
    required TResult Function(Point point) currentAddressChanged,
  }) {
    return getPickupPoints();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backButtonClicked,
    TResult Function()? changeAddressClicked,
    TResult Function()? plusClicked,
    TResult Function()? minusClicked,
    TResult Function()? myPositionClicked,
    TResult Function()? onMapCreated,
    TResult Function(CameraPosition cameraPosition, bool cameraIsMoving,
            VisibleRegion? visibleRegion)?
        onCameraMove,
    TResult Function()? selectThisAddressClicked,
    TResult Function()? showMessageNoGeo,
    TResult Function()? getCurrentAddress,
    TResult Function()? getPickupPoints,
    TResult Function(PickupPointEntity pickupPointEntity)?
        pickupPointOnMapClicked,
    TResult Function(double position)? pickupInfoSlideChanged,
    TResult Function(Point point)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (getPickupPoints != null) {
      return getPickupPoints();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackButtonClicked value) backButtonClicked,
    required TResult Function(ChangeAddressClicked value) changeAddressClicked,
    required TResult Function(PlusClicked value) plusClicked,
    required TResult Function(MinusClicked value) minusClicked,
    required TResult Function(MyPositionClicked value) myPositionClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(GetPickupPoints value) getPickupPoints,
    required TResult Function(PickupPointOnMapClicked value)
        pickupPointOnMapClicked,
    required TResult Function(PickupInfoSlideChanged value)
        pickupInfoSlideChanged,
    required TResult Function(CurrentAddressChanged value)
        currentAddressChanged,
  }) {
    return getPickupPoints(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackButtonClicked value)? backButtonClicked,
    TResult Function(ChangeAddressClicked value)? changeAddressClicked,
    TResult Function(PlusClicked value)? plusClicked,
    TResult Function(MinusClicked value)? minusClicked,
    TResult Function(MyPositionClicked value)? myPositionClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(GetPickupPoints value)? getPickupPoints,
    TResult Function(PickupPointOnMapClicked value)? pickupPointOnMapClicked,
    TResult Function(PickupInfoSlideChanged value)? pickupInfoSlideChanged,
    TResult Function(CurrentAddressChanged value)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (getPickupPoints != null) {
      return getPickupPoints(this);
    }
    return orElse();
  }
}

abstract class GetPickupPoints implements AddressOnMapEvent {
  const factory GetPickupPoints() = _$GetPickupPoints;
}

/// @nodoc
abstract class $PickupPointOnMapClickedCopyWith<$Res> {
  factory $PickupPointOnMapClickedCopyWith(PickupPointOnMapClicked value,
          $Res Function(PickupPointOnMapClicked) then) =
      _$PickupPointOnMapClickedCopyWithImpl<$Res>;
  $Res call({PickupPointEntity pickupPointEntity});
}

/// @nodoc
class _$PickupPointOnMapClickedCopyWithImpl<$Res>
    extends _$AddressOnMapEventCopyWithImpl<$Res>
    implements $PickupPointOnMapClickedCopyWith<$Res> {
  _$PickupPointOnMapClickedCopyWithImpl(PickupPointOnMapClicked _value,
      $Res Function(PickupPointOnMapClicked) _then)
      : super(_value, (v) => _then(v as PickupPointOnMapClicked));

  @override
  PickupPointOnMapClicked get _value => super._value as PickupPointOnMapClicked;

  @override
  $Res call({
    Object? pickupPointEntity = freezed,
  }) {
    return _then(PickupPointOnMapClicked(
      pickupPointEntity == freezed
          ? _value.pickupPointEntity
          : pickupPointEntity // ignore: cast_nullable_to_non_nullable
              as PickupPointEntity,
    ));
  }
}

/// @nodoc

class _$PickupPointOnMapClicked implements PickupPointOnMapClicked {
  const _$PickupPointOnMapClicked(this.pickupPointEntity);

  @override
  final PickupPointEntity pickupPointEntity;

  @override
  String toString() {
    return 'AddressOnMapEvent.pickupPointOnMapClicked(pickupPointEntity: $pickupPointEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PickupPointOnMapClicked &&
            (identical(other.pickupPointEntity, pickupPointEntity) ||
                const DeepCollectionEquality()
                    .equals(other.pickupPointEntity, pickupPointEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pickupPointEntity);

  @JsonKey(ignore: true)
  @override
  $PickupPointOnMapClickedCopyWith<PickupPointOnMapClicked> get copyWith =>
      _$PickupPointOnMapClickedCopyWithImpl<PickupPointOnMapClicked>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backButtonClicked,
    required TResult Function() changeAddressClicked,
    required TResult Function() plusClicked,
    required TResult Function() minusClicked,
    required TResult Function() myPositionClicked,
    required TResult Function() onMapCreated,
    required TResult Function(CameraPosition cameraPosition,
            bool cameraIsMoving, VisibleRegion? visibleRegion)
        onCameraMove,
    required TResult Function() selectThisAddressClicked,
    required TResult Function() showMessageNoGeo,
    required TResult Function() getCurrentAddress,
    required TResult Function() getPickupPoints,
    required TResult Function(PickupPointEntity pickupPointEntity)
        pickupPointOnMapClicked,
    required TResult Function(double position) pickupInfoSlideChanged,
    required TResult Function(Point point) currentAddressChanged,
  }) {
    return pickupPointOnMapClicked(pickupPointEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backButtonClicked,
    TResult Function()? changeAddressClicked,
    TResult Function()? plusClicked,
    TResult Function()? minusClicked,
    TResult Function()? myPositionClicked,
    TResult Function()? onMapCreated,
    TResult Function(CameraPosition cameraPosition, bool cameraIsMoving,
            VisibleRegion? visibleRegion)?
        onCameraMove,
    TResult Function()? selectThisAddressClicked,
    TResult Function()? showMessageNoGeo,
    TResult Function()? getCurrentAddress,
    TResult Function()? getPickupPoints,
    TResult Function(PickupPointEntity pickupPointEntity)?
        pickupPointOnMapClicked,
    TResult Function(double position)? pickupInfoSlideChanged,
    TResult Function(Point point)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (pickupPointOnMapClicked != null) {
      return pickupPointOnMapClicked(pickupPointEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackButtonClicked value) backButtonClicked,
    required TResult Function(ChangeAddressClicked value) changeAddressClicked,
    required TResult Function(PlusClicked value) plusClicked,
    required TResult Function(MinusClicked value) minusClicked,
    required TResult Function(MyPositionClicked value) myPositionClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(GetPickupPoints value) getPickupPoints,
    required TResult Function(PickupPointOnMapClicked value)
        pickupPointOnMapClicked,
    required TResult Function(PickupInfoSlideChanged value)
        pickupInfoSlideChanged,
    required TResult Function(CurrentAddressChanged value)
        currentAddressChanged,
  }) {
    return pickupPointOnMapClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackButtonClicked value)? backButtonClicked,
    TResult Function(ChangeAddressClicked value)? changeAddressClicked,
    TResult Function(PlusClicked value)? plusClicked,
    TResult Function(MinusClicked value)? minusClicked,
    TResult Function(MyPositionClicked value)? myPositionClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(GetPickupPoints value)? getPickupPoints,
    TResult Function(PickupPointOnMapClicked value)? pickupPointOnMapClicked,
    TResult Function(PickupInfoSlideChanged value)? pickupInfoSlideChanged,
    TResult Function(CurrentAddressChanged value)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (pickupPointOnMapClicked != null) {
      return pickupPointOnMapClicked(this);
    }
    return orElse();
  }
}

abstract class PickupPointOnMapClicked implements AddressOnMapEvent {
  const factory PickupPointOnMapClicked(PickupPointEntity pickupPointEntity) =
      _$PickupPointOnMapClicked;

  PickupPointEntity get pickupPointEntity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PickupPointOnMapClickedCopyWith<PickupPointOnMapClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickupInfoSlideChangedCopyWith<$Res> {
  factory $PickupInfoSlideChangedCopyWith(PickupInfoSlideChanged value,
          $Res Function(PickupInfoSlideChanged) then) =
      _$PickupInfoSlideChangedCopyWithImpl<$Res>;
  $Res call({double position});
}

/// @nodoc
class _$PickupInfoSlideChangedCopyWithImpl<$Res>
    extends _$AddressOnMapEventCopyWithImpl<$Res>
    implements $PickupInfoSlideChangedCopyWith<$Res> {
  _$PickupInfoSlideChangedCopyWithImpl(PickupInfoSlideChanged _value,
      $Res Function(PickupInfoSlideChanged) _then)
      : super(_value, (v) => _then(v as PickupInfoSlideChanged));

  @override
  PickupInfoSlideChanged get _value => super._value as PickupInfoSlideChanged;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(PickupInfoSlideChanged(
      position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PickupInfoSlideChanged implements PickupInfoSlideChanged {
  const _$PickupInfoSlideChanged(this.position);

  @override
  final double position;

  @override
  String toString() {
    return 'AddressOnMapEvent.pickupInfoSlideChanged(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PickupInfoSlideChanged &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  $PickupInfoSlideChangedCopyWith<PickupInfoSlideChanged> get copyWith =>
      _$PickupInfoSlideChangedCopyWithImpl<PickupInfoSlideChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backButtonClicked,
    required TResult Function() changeAddressClicked,
    required TResult Function() plusClicked,
    required TResult Function() minusClicked,
    required TResult Function() myPositionClicked,
    required TResult Function() onMapCreated,
    required TResult Function(CameraPosition cameraPosition,
            bool cameraIsMoving, VisibleRegion? visibleRegion)
        onCameraMove,
    required TResult Function() selectThisAddressClicked,
    required TResult Function() showMessageNoGeo,
    required TResult Function() getCurrentAddress,
    required TResult Function() getPickupPoints,
    required TResult Function(PickupPointEntity pickupPointEntity)
        pickupPointOnMapClicked,
    required TResult Function(double position) pickupInfoSlideChanged,
    required TResult Function(Point point) currentAddressChanged,
  }) {
    return pickupInfoSlideChanged(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backButtonClicked,
    TResult Function()? changeAddressClicked,
    TResult Function()? plusClicked,
    TResult Function()? minusClicked,
    TResult Function()? myPositionClicked,
    TResult Function()? onMapCreated,
    TResult Function(CameraPosition cameraPosition, bool cameraIsMoving,
            VisibleRegion? visibleRegion)?
        onCameraMove,
    TResult Function()? selectThisAddressClicked,
    TResult Function()? showMessageNoGeo,
    TResult Function()? getCurrentAddress,
    TResult Function()? getPickupPoints,
    TResult Function(PickupPointEntity pickupPointEntity)?
        pickupPointOnMapClicked,
    TResult Function(double position)? pickupInfoSlideChanged,
    TResult Function(Point point)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (pickupInfoSlideChanged != null) {
      return pickupInfoSlideChanged(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackButtonClicked value) backButtonClicked,
    required TResult Function(ChangeAddressClicked value) changeAddressClicked,
    required TResult Function(PlusClicked value) plusClicked,
    required TResult Function(MinusClicked value) minusClicked,
    required TResult Function(MyPositionClicked value) myPositionClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(GetPickupPoints value) getPickupPoints,
    required TResult Function(PickupPointOnMapClicked value)
        pickupPointOnMapClicked,
    required TResult Function(PickupInfoSlideChanged value)
        pickupInfoSlideChanged,
    required TResult Function(CurrentAddressChanged value)
        currentAddressChanged,
  }) {
    return pickupInfoSlideChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackButtonClicked value)? backButtonClicked,
    TResult Function(ChangeAddressClicked value)? changeAddressClicked,
    TResult Function(PlusClicked value)? plusClicked,
    TResult Function(MinusClicked value)? minusClicked,
    TResult Function(MyPositionClicked value)? myPositionClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(GetPickupPoints value)? getPickupPoints,
    TResult Function(PickupPointOnMapClicked value)? pickupPointOnMapClicked,
    TResult Function(PickupInfoSlideChanged value)? pickupInfoSlideChanged,
    TResult Function(CurrentAddressChanged value)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (pickupInfoSlideChanged != null) {
      return pickupInfoSlideChanged(this);
    }
    return orElse();
  }
}

abstract class PickupInfoSlideChanged implements AddressOnMapEvent {
  const factory PickupInfoSlideChanged(double position) =
      _$PickupInfoSlideChanged;

  double get position => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PickupInfoSlideChangedCopyWith<PickupInfoSlideChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentAddressChangedCopyWith<$Res> {
  factory $CurrentAddressChangedCopyWith(CurrentAddressChanged value,
          $Res Function(CurrentAddressChanged) then) =
      _$CurrentAddressChangedCopyWithImpl<$Res>;
  $Res call({Point point});
}

/// @nodoc
class _$CurrentAddressChangedCopyWithImpl<$Res>
    extends _$AddressOnMapEventCopyWithImpl<$Res>
    implements $CurrentAddressChangedCopyWith<$Res> {
  _$CurrentAddressChangedCopyWithImpl(
      CurrentAddressChanged _value, $Res Function(CurrentAddressChanged) _then)
      : super(_value, (v) => _then(v as CurrentAddressChanged));

  @override
  CurrentAddressChanged get _value => super._value as CurrentAddressChanged;

  @override
  $Res call({
    Object? point = freezed,
  }) {
    return _then(CurrentAddressChanged(
      point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as Point,
    ));
  }
}

/// @nodoc

class _$CurrentAddressChanged implements CurrentAddressChanged {
  const _$CurrentAddressChanged(this.point);

  @override
  final Point point;

  @override
  String toString() {
    return 'AddressOnMapEvent.currentAddressChanged(point: $point)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CurrentAddressChanged &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(point);

  @JsonKey(ignore: true)
  @override
  $CurrentAddressChangedCopyWith<CurrentAddressChanged> get copyWith =>
      _$CurrentAddressChangedCopyWithImpl<CurrentAddressChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() backButtonClicked,
    required TResult Function() changeAddressClicked,
    required TResult Function() plusClicked,
    required TResult Function() minusClicked,
    required TResult Function() myPositionClicked,
    required TResult Function() onMapCreated,
    required TResult Function(CameraPosition cameraPosition,
            bool cameraIsMoving, VisibleRegion? visibleRegion)
        onCameraMove,
    required TResult Function() selectThisAddressClicked,
    required TResult Function() showMessageNoGeo,
    required TResult Function() getCurrentAddress,
    required TResult Function() getPickupPoints,
    required TResult Function(PickupPointEntity pickupPointEntity)
        pickupPointOnMapClicked,
    required TResult Function(double position) pickupInfoSlideChanged,
    required TResult Function(Point point) currentAddressChanged,
  }) {
    return currentAddressChanged(point);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? backButtonClicked,
    TResult Function()? changeAddressClicked,
    TResult Function()? plusClicked,
    TResult Function()? minusClicked,
    TResult Function()? myPositionClicked,
    TResult Function()? onMapCreated,
    TResult Function(CameraPosition cameraPosition, bool cameraIsMoving,
            VisibleRegion? visibleRegion)?
        onCameraMove,
    TResult Function()? selectThisAddressClicked,
    TResult Function()? showMessageNoGeo,
    TResult Function()? getCurrentAddress,
    TResult Function()? getPickupPoints,
    TResult Function(PickupPointEntity pickupPointEntity)?
        pickupPointOnMapClicked,
    TResult Function(double position)? pickupInfoSlideChanged,
    TResult Function(Point point)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (currentAddressChanged != null) {
      return currentAddressChanged(point);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(BackButtonClicked value) backButtonClicked,
    required TResult Function(ChangeAddressClicked value) changeAddressClicked,
    required TResult Function(PlusClicked value) plusClicked,
    required TResult Function(MinusClicked value) minusClicked,
    required TResult Function(MyPositionClicked value) myPositionClicked,
    required TResult Function(OnMapCreated value) onMapCreated,
    required TResult Function(OnCameraMove value) onCameraMove,
    required TResult Function(SelectThisAddressClicked value)
        selectThisAddressClicked,
    required TResult Function(ShowMessageNoGeo value) showMessageNoGeo,
    required TResult Function(GetCurrentAddress value) getCurrentAddress,
    required TResult Function(GetPickupPoints value) getPickupPoints,
    required TResult Function(PickupPointOnMapClicked value)
        pickupPointOnMapClicked,
    required TResult Function(PickupInfoSlideChanged value)
        pickupInfoSlideChanged,
    required TResult Function(CurrentAddressChanged value)
        currentAddressChanged,
  }) {
    return currentAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(BackButtonClicked value)? backButtonClicked,
    TResult Function(ChangeAddressClicked value)? changeAddressClicked,
    TResult Function(PlusClicked value)? plusClicked,
    TResult Function(MinusClicked value)? minusClicked,
    TResult Function(MyPositionClicked value)? myPositionClicked,
    TResult Function(OnMapCreated value)? onMapCreated,
    TResult Function(OnCameraMove value)? onCameraMove,
    TResult Function(SelectThisAddressClicked value)? selectThisAddressClicked,
    TResult Function(ShowMessageNoGeo value)? showMessageNoGeo,
    TResult Function(GetCurrentAddress value)? getCurrentAddress,
    TResult Function(GetPickupPoints value)? getPickupPoints,
    TResult Function(PickupPointOnMapClicked value)? pickupPointOnMapClicked,
    TResult Function(PickupInfoSlideChanged value)? pickupInfoSlideChanged,
    TResult Function(CurrentAddressChanged value)? currentAddressChanged,
    required TResult orElse(),
  }) {
    if (currentAddressChanged != null) {
      return currentAddressChanged(this);
    }
    return orElse();
  }
}

abstract class CurrentAddressChanged implements AddressOnMapEvent {
  const factory CurrentAddressChanged(Point point) = _$CurrentAddressChanged;

  Point get point => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentAddressChangedCopyWith<CurrentAddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavigationStateTearOff {
  const _$NavigationStateTearOff();

  _NavigationState call({BlocAction? action, int selectedTabIndex = 1}) {
    return _NavigationState(
      action: action,
      selectedTabIndex: selectedTabIndex,
    );
  }
}

/// @nodoc
const $NavigationState = _$NavigationStateTearOff();

/// @nodoc
mixin _$NavigationState {
  BlocAction? get action => throw _privateConstructorUsedError;
  int get selectedTabIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationStateCopyWith<NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res>;
  $Res call({BlocAction? action, int selectedTabIndex});
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  final NavigationState _value;
  // ignore: unused_field
  final $Res Function(NavigationState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? selectedTabIndex = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      selectedTabIndex: selectedTabIndex == freezed
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$NavigationStateCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$NavigationStateCopyWith(
          _NavigationState value, $Res Function(_NavigationState) then) =
      __$NavigationStateCopyWithImpl<$Res>;
  @override
  $Res call({BlocAction? action, int selectedTabIndex});
}

/// @nodoc
class __$NavigationStateCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements _$NavigationStateCopyWith<$Res> {
  __$NavigationStateCopyWithImpl(
      _NavigationState _value, $Res Function(_NavigationState) _then)
      : super(_value, (v) => _then(v as _NavigationState));

  @override
  _NavigationState get _value => super._value as _NavigationState;

  @override
  $Res call({
    Object? action = freezed,
    Object? selectedTabIndex = freezed,
  }) {
    return _then(_NavigationState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      selectedTabIndex: selectedTabIndex == freezed
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NavigationState implements _NavigationState {
  _$_NavigationState({this.action, this.selectedTabIndex = 1});

  @override
  final BlocAction? action;
  @JsonKey(defaultValue: 1)
  @override
  final int selectedTabIndex;

  @override
  String toString() {
    return 'NavigationState(action: $action, selectedTabIndex: $selectedTabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NavigationState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.selectedTabIndex, selectedTabIndex) ||
                const DeepCollectionEquality()
                    .equals(other.selectedTabIndex, selectedTabIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(selectedTabIndex);

  @JsonKey(ignore: true)
  @override
  _$NavigationStateCopyWith<_NavigationState> get copyWith =>
      __$NavigationStateCopyWithImpl<_NavigationState>(this, _$identity);
}

abstract class _NavigationState implements NavigationState {
  factory _NavigationState({BlocAction? action, int selectedTabIndex}) =
      _$_NavigationState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  int get selectedTabIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NavigationStateCopyWith<_NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NavigationEventTearOff {
  const _$NavigationEventTearOff();

  Init init() {
    return const Init();
  }

  NavigateToRoutes navigateToRoutes() {
    return const NavigateToRoutes();
  }

  NavigateToMap navigateToMap() {
    return const NavigateToMap();
  }

  NavigateToProfile navigateToProfile() {
    return const NavigateToProfile();
  }
}

/// @nodoc
const $NavigationEvent = _$NavigationEventTearOff();

/// @nodoc
mixin _$NavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() navigateToRoutes,
    required TResult Function() navigateToMap,
    required TResult Function() navigateToProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? navigateToRoutes,
    TResult Function()? navigateToMap,
    TResult Function()? navigateToProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(NavigateToRoutes value) navigateToRoutes,
    required TResult Function(NavigateToMap value) navigateToMap,
    required TResult Function(NavigateToProfile value) navigateToProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(NavigateToRoutes value)? navigateToRoutes,
    TResult Function(NavigateToMap value)? navigateToMap,
    TResult Function(NavigateToProfile value)? navigateToProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  final NavigationEvent _value;
  // ignore: unused_field
  final $Res Function(NavigationEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$NavigationEventCopyWithImpl<$Res>
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
    return 'NavigationEvent.init()';
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
    required TResult Function() navigateToRoutes,
    required TResult Function() navigateToMap,
    required TResult Function() navigateToProfile,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? navigateToRoutes,
    TResult Function()? navigateToMap,
    TResult Function()? navigateToProfile,
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
    required TResult Function(NavigateToRoutes value) navigateToRoutes,
    required TResult Function(NavigateToMap value) navigateToMap,
    required TResult Function(NavigateToProfile value) navigateToProfile,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(NavigateToRoutes value)? navigateToRoutes,
    TResult Function(NavigateToMap value)? navigateToMap,
    TResult Function(NavigateToProfile value)? navigateToProfile,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements NavigationEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class $NavigateToRoutesCopyWith<$Res> {
  factory $NavigateToRoutesCopyWith(
          NavigateToRoutes value, $Res Function(NavigateToRoutes) then) =
      _$NavigateToRoutesCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigateToRoutesCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $NavigateToRoutesCopyWith<$Res> {
  _$NavigateToRoutesCopyWithImpl(
      NavigateToRoutes _value, $Res Function(NavigateToRoutes) _then)
      : super(_value, (v) => _then(v as NavigateToRoutes));

  @override
  NavigateToRoutes get _value => super._value as NavigateToRoutes;
}

/// @nodoc

class _$NavigateToRoutes implements NavigateToRoutes {
  const _$NavigateToRoutes();

  @override
  String toString() {
    return 'NavigationEvent.navigateToRoutes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NavigateToRoutes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() navigateToRoutes,
    required TResult Function() navigateToMap,
    required TResult Function() navigateToProfile,
  }) {
    return navigateToRoutes();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? navigateToRoutes,
    TResult Function()? navigateToMap,
    TResult Function()? navigateToProfile,
    required TResult orElse(),
  }) {
    if (navigateToRoutes != null) {
      return navigateToRoutes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(NavigateToRoutes value) navigateToRoutes,
    required TResult Function(NavigateToMap value) navigateToMap,
    required TResult Function(NavigateToProfile value) navigateToProfile,
  }) {
    return navigateToRoutes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(NavigateToRoutes value)? navigateToRoutes,
    TResult Function(NavigateToMap value)? navigateToMap,
    TResult Function(NavigateToProfile value)? navigateToProfile,
    required TResult orElse(),
  }) {
    if (navigateToRoutes != null) {
      return navigateToRoutes(this);
    }
    return orElse();
  }
}

abstract class NavigateToRoutes implements NavigationEvent {
  const factory NavigateToRoutes() = _$NavigateToRoutes;
}

/// @nodoc
abstract class $NavigateToMapCopyWith<$Res> {
  factory $NavigateToMapCopyWith(
          NavigateToMap value, $Res Function(NavigateToMap) then) =
      _$NavigateToMapCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigateToMapCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $NavigateToMapCopyWith<$Res> {
  _$NavigateToMapCopyWithImpl(
      NavigateToMap _value, $Res Function(NavigateToMap) _then)
      : super(_value, (v) => _then(v as NavigateToMap));

  @override
  NavigateToMap get _value => super._value as NavigateToMap;
}

/// @nodoc

class _$NavigateToMap implements NavigateToMap {
  const _$NavigateToMap();

  @override
  String toString() {
    return 'NavigationEvent.navigateToMap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NavigateToMap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() navigateToRoutes,
    required TResult Function() navigateToMap,
    required TResult Function() navigateToProfile,
  }) {
    return navigateToMap();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? navigateToRoutes,
    TResult Function()? navigateToMap,
    TResult Function()? navigateToProfile,
    required TResult orElse(),
  }) {
    if (navigateToMap != null) {
      return navigateToMap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(NavigateToRoutes value) navigateToRoutes,
    required TResult Function(NavigateToMap value) navigateToMap,
    required TResult Function(NavigateToProfile value) navigateToProfile,
  }) {
    return navigateToMap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(NavigateToRoutes value)? navigateToRoutes,
    TResult Function(NavigateToMap value)? navigateToMap,
    TResult Function(NavigateToProfile value)? navigateToProfile,
    required TResult orElse(),
  }) {
    if (navigateToMap != null) {
      return navigateToMap(this);
    }
    return orElse();
  }
}

abstract class NavigateToMap implements NavigationEvent {
  const factory NavigateToMap() = _$NavigateToMap;
}

/// @nodoc
abstract class $NavigateToProfileCopyWith<$Res> {
  factory $NavigateToProfileCopyWith(
          NavigateToProfile value, $Res Function(NavigateToProfile) then) =
      _$NavigateToProfileCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigateToProfileCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $NavigateToProfileCopyWith<$Res> {
  _$NavigateToProfileCopyWithImpl(
      NavigateToProfile _value, $Res Function(NavigateToProfile) _then)
      : super(_value, (v) => _then(v as NavigateToProfile));

  @override
  NavigateToProfile get _value => super._value as NavigateToProfile;
}

/// @nodoc

class _$NavigateToProfile implements NavigateToProfile {
  const _$NavigateToProfile();

  @override
  String toString() {
    return 'NavigationEvent.navigateToProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NavigateToProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() navigateToRoutes,
    required TResult Function() navigateToMap,
    required TResult Function() navigateToProfile,
  }) {
    return navigateToProfile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? navigateToRoutes,
    TResult Function()? navigateToMap,
    TResult Function()? navigateToProfile,
    required TResult orElse(),
  }) {
    if (navigateToProfile != null) {
      return navigateToProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(NavigateToRoutes value) navigateToRoutes,
    required TResult Function(NavigateToMap value) navigateToMap,
    required TResult Function(NavigateToProfile value) navigateToProfile,
  }) {
    return navigateToProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(NavigateToRoutes value)? navigateToRoutes,
    TResult Function(NavigateToMap value)? navigateToMap,
    TResult Function(NavigateToProfile value)? navigateToProfile,
    required TResult orElse(),
  }) {
    if (navigateToProfile != null) {
      return navigateToProfile(this);
    }
    return orElse();
  }
}

abstract class NavigateToProfile implements NavigationEvent {
  const factory NavigateToProfile() = _$NavigateToProfile;
}

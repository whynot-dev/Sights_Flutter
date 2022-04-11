// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SplashEventTearOff {
  const _$SplashEventTearOff();

  CheckAuthorizationStatus checkAuthorizationStatus() {
    return CheckAuthorizationStatus();
  }
}

/// @nodoc
const $SplashEvent = _$SplashEventTearOff();

/// @nodoc
mixin _$SplashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthorizationStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthorizationStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAuthorizationStatus value)
        checkAuthorizationStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAuthorizationStatus value)? checkAuthorizationStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res> implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  final SplashEvent _value;
  // ignore: unused_field
  final $Res Function(SplashEvent) _then;
}

/// @nodoc
abstract class $CheckAuthorizationStatusCopyWith<$Res> {
  factory $CheckAuthorizationStatusCopyWith(CheckAuthorizationStatus value,
          $Res Function(CheckAuthorizationStatus) then) =
      _$CheckAuthorizationStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckAuthorizationStatusCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res>
    implements $CheckAuthorizationStatusCopyWith<$Res> {
  _$CheckAuthorizationStatusCopyWithImpl(CheckAuthorizationStatus _value,
      $Res Function(CheckAuthorizationStatus) _then)
      : super(_value, (v) => _then(v as CheckAuthorizationStatus));

  @override
  CheckAuthorizationStatus get _value =>
      super._value as CheckAuthorizationStatus;
}

/// @nodoc

class _$CheckAuthorizationStatus implements CheckAuthorizationStatus {
  _$CheckAuthorizationStatus();

  @override
  String toString() {
    return 'SplashEvent.checkAuthorizationStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckAuthorizationStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthorizationStatus,
  }) {
    return checkAuthorizationStatus();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthorizationStatus,
    required TResult orElse(),
  }) {
    if (checkAuthorizationStatus != null) {
      return checkAuthorizationStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAuthorizationStatus value)
        checkAuthorizationStatus,
  }) {
    return checkAuthorizationStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAuthorizationStatus value)? checkAuthorizationStatus,
    required TResult orElse(),
  }) {
    if (checkAuthorizationStatus != null) {
      return checkAuthorizationStatus(this);
    }
    return orElse();
  }
}

abstract class CheckAuthorizationStatus implements SplashEvent {
  factory CheckAuthorizationStatus() = _$CheckAuthorizationStatus;
}

/// @nodoc
class _$SplashStateTearOff {
  const _$SplashStateTearOff();

  _SplashState call({BlocAction? action}) {
    return _SplashState(
      action: action,
    );
  }
}

/// @nodoc
const $SplashState = _$SplashStateTearOff();

/// @nodoc
mixin _$SplashState {
  BlocAction? get action => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashStateCopyWith<SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res>;
  $Res call({BlocAction? action});
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  final SplashState _value;
  // ignore: unused_field
  final $Res Function(SplashState) _then;

  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
    ));
  }
}

/// @nodoc
abstract class _$SplashStateCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$SplashStateCopyWith(
          _SplashState value, $Res Function(_SplashState) then) =
      __$SplashStateCopyWithImpl<$Res>;
  @override
  $Res call({BlocAction? action});
}

/// @nodoc
class __$SplashStateCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$SplashStateCopyWith<$Res> {
  __$SplashStateCopyWithImpl(
      _SplashState _value, $Res Function(_SplashState) _then)
      : super(_value, (v) => _then(v as _SplashState));

  @override
  _SplashState get _value => super._value as _SplashState;

  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(_SplashState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
    ));
  }
}

/// @nodoc

class _$_SplashState implements _SplashState {
  _$_SplashState({this.action});

  @override
  final BlocAction? action;

  @override
  String toString() {
    return 'SplashState(action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SplashState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  _$SplashStateCopyWith<_SplashState> get copyWith =>
      __$SplashStateCopyWithImpl<_SplashState>(this, _$identity);
}

abstract class _SplashState implements SplashState {
  factory _SplashState({BlocAction? action}) = _$_SplashState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SplashStateCopyWith<_SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

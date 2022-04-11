// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'confirm_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConfirmAccountEventTearOff {
  const _$ConfirmAccountEventTearOff();

  ConfirmClicked confirmClicked() {
    return ConfirmClicked();
  }

  NotNowClicked notNowClicked() {
    return NotNowClicked();
  }
}

/// @nodoc
const $ConfirmAccountEvent = _$ConfirmAccountEventTearOff();

/// @nodoc
mixin _$ConfirmAccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmClicked,
    required TResult Function() notNowClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmClicked,
    TResult Function()? notNowClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmClicked value) confirmClicked,
    required TResult Function(NotNowClicked value) notNowClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmClicked value)? confirmClicked,
    TResult Function(NotNowClicked value)? notNowClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmAccountEventCopyWith<$Res> {
  factory $ConfirmAccountEventCopyWith(
          ConfirmAccountEvent value, $Res Function(ConfirmAccountEvent) then) =
      _$ConfirmAccountEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmAccountEventCopyWithImpl<$Res>
    implements $ConfirmAccountEventCopyWith<$Res> {
  _$ConfirmAccountEventCopyWithImpl(this._value, this._then);

  final ConfirmAccountEvent _value;
  // ignore: unused_field
  final $Res Function(ConfirmAccountEvent) _then;
}

/// @nodoc
abstract class $ConfirmClickedCopyWith<$Res> {
  factory $ConfirmClickedCopyWith(
          ConfirmClicked value, $Res Function(ConfirmClicked) then) =
      _$ConfirmClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmClickedCopyWithImpl<$Res>
    extends _$ConfirmAccountEventCopyWithImpl<$Res>
    implements $ConfirmClickedCopyWith<$Res> {
  _$ConfirmClickedCopyWithImpl(
      ConfirmClicked _value, $Res Function(ConfirmClicked) _then)
      : super(_value, (v) => _then(v as ConfirmClicked));

  @override
  ConfirmClicked get _value => super._value as ConfirmClicked;
}

/// @nodoc

class _$ConfirmClicked implements ConfirmClicked {
  _$ConfirmClicked();

  @override
  String toString() {
    return 'ConfirmAccountEvent.confirmClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConfirmClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmClicked,
    required TResult Function() notNowClicked,
  }) {
    return confirmClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmClicked,
    TResult Function()? notNowClicked,
    required TResult orElse(),
  }) {
    if (confirmClicked != null) {
      return confirmClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmClicked value) confirmClicked,
    required TResult Function(NotNowClicked value) notNowClicked,
  }) {
    return confirmClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmClicked value)? confirmClicked,
    TResult Function(NotNowClicked value)? notNowClicked,
    required TResult orElse(),
  }) {
    if (confirmClicked != null) {
      return confirmClicked(this);
    }
    return orElse();
  }
}

abstract class ConfirmClicked implements ConfirmAccountEvent {
  factory ConfirmClicked() = _$ConfirmClicked;
}

/// @nodoc
abstract class $NotNowClickedCopyWith<$Res> {
  factory $NotNowClickedCopyWith(
          NotNowClicked value, $Res Function(NotNowClicked) then) =
      _$NotNowClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotNowClickedCopyWithImpl<$Res>
    extends _$ConfirmAccountEventCopyWithImpl<$Res>
    implements $NotNowClickedCopyWith<$Res> {
  _$NotNowClickedCopyWithImpl(
      NotNowClicked _value, $Res Function(NotNowClicked) _then)
      : super(_value, (v) => _then(v as NotNowClicked));

  @override
  NotNowClicked get _value => super._value as NotNowClicked;
}

/// @nodoc

class _$NotNowClicked implements NotNowClicked {
  _$NotNowClicked();

  @override
  String toString() {
    return 'ConfirmAccountEvent.notNowClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotNowClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmClicked,
    required TResult Function() notNowClicked,
  }) {
    return notNowClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmClicked,
    TResult Function()? notNowClicked,
    required TResult orElse(),
  }) {
    if (notNowClicked != null) {
      return notNowClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmClicked value) confirmClicked,
    required TResult Function(NotNowClicked value) notNowClicked,
  }) {
    return notNowClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmClicked value)? confirmClicked,
    TResult Function(NotNowClicked value)? notNowClicked,
    required TResult orElse(),
  }) {
    if (notNowClicked != null) {
      return notNowClicked(this);
    }
    return orElse();
  }
}

abstract class NotNowClicked implements ConfirmAccountEvent {
  factory NotNowClicked() = _$NotNowClicked;
}

/// @nodoc
class _$ConfirmAccountStateTearOff {
  const _$ConfirmAccountStateTearOff();

  _ConfirmAccountState call({BlocAction? action}) {
    return _ConfirmAccountState(
      action: action,
    );
  }
}

/// @nodoc
const $ConfirmAccountState = _$ConfirmAccountStateTearOff();

/// @nodoc
mixin _$ConfirmAccountState {
  BlocAction? get action => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmAccountStateCopyWith<ConfirmAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmAccountStateCopyWith<$Res> {
  factory $ConfirmAccountStateCopyWith(
          ConfirmAccountState value, $Res Function(ConfirmAccountState) then) =
      _$ConfirmAccountStateCopyWithImpl<$Res>;
  $Res call({BlocAction? action});
}

/// @nodoc
class _$ConfirmAccountStateCopyWithImpl<$Res>
    implements $ConfirmAccountStateCopyWith<$Res> {
  _$ConfirmAccountStateCopyWithImpl(this._value, this._then);

  final ConfirmAccountState _value;
  // ignore: unused_field
  final $Res Function(ConfirmAccountState) _then;

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
abstract class _$ConfirmAccountStateCopyWith<$Res>
    implements $ConfirmAccountStateCopyWith<$Res> {
  factory _$ConfirmAccountStateCopyWith(_ConfirmAccountState value,
          $Res Function(_ConfirmAccountState) then) =
      __$ConfirmAccountStateCopyWithImpl<$Res>;
  @override
  $Res call({BlocAction? action});
}

/// @nodoc
class __$ConfirmAccountStateCopyWithImpl<$Res>
    extends _$ConfirmAccountStateCopyWithImpl<$Res>
    implements _$ConfirmAccountStateCopyWith<$Res> {
  __$ConfirmAccountStateCopyWithImpl(
      _ConfirmAccountState _value, $Res Function(_ConfirmAccountState) _then)
      : super(_value, (v) => _then(v as _ConfirmAccountState));

  @override
  _ConfirmAccountState get _value => super._value as _ConfirmAccountState;

  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(_ConfirmAccountState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
    ));
  }
}

/// @nodoc

class _$_ConfirmAccountState implements _ConfirmAccountState {
  _$_ConfirmAccountState({this.action});

  @override
  final BlocAction? action;

  @override
  String toString() {
    return 'ConfirmAccountState(action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfirmAccountState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  _$ConfirmAccountStateCopyWith<_ConfirmAccountState> get copyWith =>
      __$ConfirmAccountStateCopyWithImpl<_ConfirmAccountState>(
          this, _$identity);
}

abstract class _ConfirmAccountState implements ConfirmAccountState {
  factory _ConfirmAccountState({BlocAction? action}) = _$_ConfirmAccountState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConfirmAccountStateCopyWith<_ConfirmAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

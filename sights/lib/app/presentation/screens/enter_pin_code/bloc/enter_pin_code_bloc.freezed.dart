// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'enter_pin_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EnterPinCodeEventTearOff {
  const _$EnterPinCodeEventTearOff();

  Init init() {
    return Init();
  }

  DigitClicked digitClicked(String digit) {
    return DigitClicked(
      digit,
    );
  }

  BackspaceClicked backspaceClicked() {
    return BackspaceClicked();
  }

  ContinueClicked continueClicked() {
    return ContinueClicked();
  }

  ExitClicked exitClicked() {
    return ExitClicked();
  }
}

/// @nodoc
const $EnterPinCodeEvent = _$EnterPinCodeEventTearOff();

/// @nodoc
mixin _$EnterPinCodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String digit) digitClicked,
    required TResult Function() backspaceClicked,
    required TResult Function() continueClicked,
    required TResult Function() exitClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String digit)? digitClicked,
    TResult Function()? backspaceClicked,
    TResult Function()? continueClicked,
    TResult Function()? exitClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(DigitClicked value) digitClicked,
    required TResult Function(BackspaceClicked value) backspaceClicked,
    required TResult Function(ContinueClicked value) continueClicked,
    required TResult Function(ExitClicked value) exitClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(DigitClicked value)? digitClicked,
    TResult Function(BackspaceClicked value)? backspaceClicked,
    TResult Function(ContinueClicked value)? continueClicked,
    TResult Function(ExitClicked value)? exitClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterPinCodeEventCopyWith<$Res> {
  factory $EnterPinCodeEventCopyWith(
          EnterPinCodeEvent value, $Res Function(EnterPinCodeEvent) then) =
      _$EnterPinCodeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EnterPinCodeEventCopyWithImpl<$Res>
    implements $EnterPinCodeEventCopyWith<$Res> {
  _$EnterPinCodeEventCopyWithImpl(this._value, this._then);

  final EnterPinCodeEvent _value;
  // ignore: unused_field
  final $Res Function(EnterPinCodeEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$EnterPinCodeEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;
}

/// @nodoc

class _$Init implements Init {
  _$Init();

  @override
  String toString() {
    return 'EnterPinCodeEvent.init()';
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
    required TResult Function(String digit) digitClicked,
    required TResult Function() backspaceClicked,
    required TResult Function() continueClicked,
    required TResult Function() exitClicked,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String digit)? digitClicked,
    TResult Function()? backspaceClicked,
    TResult Function()? continueClicked,
    TResult Function()? exitClicked,
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
    required TResult Function(DigitClicked value) digitClicked,
    required TResult Function(BackspaceClicked value) backspaceClicked,
    required TResult Function(ContinueClicked value) continueClicked,
    required TResult Function(ExitClicked value) exitClicked,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(DigitClicked value)? digitClicked,
    TResult Function(BackspaceClicked value)? backspaceClicked,
    TResult Function(ContinueClicked value)? continueClicked,
    TResult Function(ExitClicked value)? exitClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements EnterPinCodeEvent {
  factory Init() = _$Init;
}

/// @nodoc
abstract class $DigitClickedCopyWith<$Res> {
  factory $DigitClickedCopyWith(
          DigitClicked value, $Res Function(DigitClicked) then) =
      _$DigitClickedCopyWithImpl<$Res>;
  $Res call({String digit});
}

/// @nodoc
class _$DigitClickedCopyWithImpl<$Res>
    extends _$EnterPinCodeEventCopyWithImpl<$Res>
    implements $DigitClickedCopyWith<$Res> {
  _$DigitClickedCopyWithImpl(
      DigitClicked _value, $Res Function(DigitClicked) _then)
      : super(_value, (v) => _then(v as DigitClicked));

  @override
  DigitClicked get _value => super._value as DigitClicked;

  @override
  $Res call({
    Object? digit = freezed,
  }) {
    return _then(DigitClicked(
      digit == freezed
          ? _value.digit
          : digit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DigitClicked implements DigitClicked {
  _$DigitClicked(this.digit);

  @override
  final String digit;

  @override
  String toString() {
    return 'EnterPinCodeEvent.digitClicked(digit: $digit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DigitClicked &&
            (identical(other.digit, digit) ||
                const DeepCollectionEquality().equals(other.digit, digit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(digit);

  @JsonKey(ignore: true)
  @override
  $DigitClickedCopyWith<DigitClicked> get copyWith =>
      _$DigitClickedCopyWithImpl<DigitClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String digit) digitClicked,
    required TResult Function() backspaceClicked,
    required TResult Function() continueClicked,
    required TResult Function() exitClicked,
  }) {
    return digitClicked(digit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String digit)? digitClicked,
    TResult Function()? backspaceClicked,
    TResult Function()? continueClicked,
    TResult Function()? exitClicked,
    required TResult orElse(),
  }) {
    if (digitClicked != null) {
      return digitClicked(digit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(DigitClicked value) digitClicked,
    required TResult Function(BackspaceClicked value) backspaceClicked,
    required TResult Function(ContinueClicked value) continueClicked,
    required TResult Function(ExitClicked value) exitClicked,
  }) {
    return digitClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(DigitClicked value)? digitClicked,
    TResult Function(BackspaceClicked value)? backspaceClicked,
    TResult Function(ContinueClicked value)? continueClicked,
    TResult Function(ExitClicked value)? exitClicked,
    required TResult orElse(),
  }) {
    if (digitClicked != null) {
      return digitClicked(this);
    }
    return orElse();
  }
}

abstract class DigitClicked implements EnterPinCodeEvent {
  factory DigitClicked(String digit) = _$DigitClicked;

  String get digit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DigitClickedCopyWith<DigitClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackspaceClickedCopyWith<$Res> {
  factory $BackspaceClickedCopyWith(
          BackspaceClicked value, $Res Function(BackspaceClicked) then) =
      _$BackspaceClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$BackspaceClickedCopyWithImpl<$Res>
    extends _$EnterPinCodeEventCopyWithImpl<$Res>
    implements $BackspaceClickedCopyWith<$Res> {
  _$BackspaceClickedCopyWithImpl(
      BackspaceClicked _value, $Res Function(BackspaceClicked) _then)
      : super(_value, (v) => _then(v as BackspaceClicked));

  @override
  BackspaceClicked get _value => super._value as BackspaceClicked;
}

/// @nodoc

class _$BackspaceClicked implements BackspaceClicked {
  _$BackspaceClicked();

  @override
  String toString() {
    return 'EnterPinCodeEvent.backspaceClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BackspaceClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String digit) digitClicked,
    required TResult Function() backspaceClicked,
    required TResult Function() continueClicked,
    required TResult Function() exitClicked,
  }) {
    return backspaceClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String digit)? digitClicked,
    TResult Function()? backspaceClicked,
    TResult Function()? continueClicked,
    TResult Function()? exitClicked,
    required TResult orElse(),
  }) {
    if (backspaceClicked != null) {
      return backspaceClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(DigitClicked value) digitClicked,
    required TResult Function(BackspaceClicked value) backspaceClicked,
    required TResult Function(ContinueClicked value) continueClicked,
    required TResult Function(ExitClicked value) exitClicked,
  }) {
    return backspaceClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(DigitClicked value)? digitClicked,
    TResult Function(BackspaceClicked value)? backspaceClicked,
    TResult Function(ContinueClicked value)? continueClicked,
    TResult Function(ExitClicked value)? exitClicked,
    required TResult orElse(),
  }) {
    if (backspaceClicked != null) {
      return backspaceClicked(this);
    }
    return orElse();
  }
}

abstract class BackspaceClicked implements EnterPinCodeEvent {
  factory BackspaceClicked() = _$BackspaceClicked;
}

/// @nodoc
abstract class $ContinueClickedCopyWith<$Res> {
  factory $ContinueClickedCopyWith(
          ContinueClicked value, $Res Function(ContinueClicked) then) =
      _$ContinueClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContinueClickedCopyWithImpl<$Res>
    extends _$EnterPinCodeEventCopyWithImpl<$Res>
    implements $ContinueClickedCopyWith<$Res> {
  _$ContinueClickedCopyWithImpl(
      ContinueClicked _value, $Res Function(ContinueClicked) _then)
      : super(_value, (v) => _then(v as ContinueClicked));

  @override
  ContinueClicked get _value => super._value as ContinueClicked;
}

/// @nodoc

class _$ContinueClicked implements ContinueClicked {
  _$ContinueClicked();

  @override
  String toString() {
    return 'EnterPinCodeEvent.continueClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ContinueClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String digit) digitClicked,
    required TResult Function() backspaceClicked,
    required TResult Function() continueClicked,
    required TResult Function() exitClicked,
  }) {
    return continueClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String digit)? digitClicked,
    TResult Function()? backspaceClicked,
    TResult Function()? continueClicked,
    TResult Function()? exitClicked,
    required TResult orElse(),
  }) {
    if (continueClicked != null) {
      return continueClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(DigitClicked value) digitClicked,
    required TResult Function(BackspaceClicked value) backspaceClicked,
    required TResult Function(ContinueClicked value) continueClicked,
    required TResult Function(ExitClicked value) exitClicked,
  }) {
    return continueClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(DigitClicked value)? digitClicked,
    TResult Function(BackspaceClicked value)? backspaceClicked,
    TResult Function(ContinueClicked value)? continueClicked,
    TResult Function(ExitClicked value)? exitClicked,
    required TResult orElse(),
  }) {
    if (continueClicked != null) {
      return continueClicked(this);
    }
    return orElse();
  }
}

abstract class ContinueClicked implements EnterPinCodeEvent {
  factory ContinueClicked() = _$ContinueClicked;
}

/// @nodoc
abstract class $ExitClickedCopyWith<$Res> {
  factory $ExitClickedCopyWith(
          ExitClicked value, $Res Function(ExitClicked) then) =
      _$ExitClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExitClickedCopyWithImpl<$Res>
    extends _$EnterPinCodeEventCopyWithImpl<$Res>
    implements $ExitClickedCopyWith<$Res> {
  _$ExitClickedCopyWithImpl(
      ExitClicked _value, $Res Function(ExitClicked) _then)
      : super(_value, (v) => _then(v as ExitClicked));

  @override
  ExitClicked get _value => super._value as ExitClicked;
}

/// @nodoc

class _$ExitClicked implements ExitClicked {
  _$ExitClicked();

  @override
  String toString() {
    return 'EnterPinCodeEvent.exitClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ExitClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String digit) digitClicked,
    required TResult Function() backspaceClicked,
    required TResult Function() continueClicked,
    required TResult Function() exitClicked,
  }) {
    return exitClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String digit)? digitClicked,
    TResult Function()? backspaceClicked,
    TResult Function()? continueClicked,
    TResult Function()? exitClicked,
    required TResult orElse(),
  }) {
    if (exitClicked != null) {
      return exitClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(DigitClicked value) digitClicked,
    required TResult Function(BackspaceClicked value) backspaceClicked,
    required TResult Function(ContinueClicked value) continueClicked,
    required TResult Function(ExitClicked value) exitClicked,
  }) {
    return exitClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(DigitClicked value)? digitClicked,
    TResult Function(BackspaceClicked value)? backspaceClicked,
    TResult Function(ContinueClicked value)? continueClicked,
    TResult Function(ExitClicked value)? exitClicked,
    required TResult orElse(),
  }) {
    if (exitClicked != null) {
      return exitClicked(this);
    }
    return orElse();
  }
}

abstract class ExitClicked implements EnterPinCodeEvent {
  factory ExitClicked() = _$ExitClicked;
}

/// @nodoc
class _$EnterPinCodeStateTearOff {
  const _$EnterPinCodeStateTearOff();

  _EnterPinCodeState call(
      {BlocAction? action,
      required EnterCodeType enterCodeType,
      String code = '',
      int codeLength = 4,
      String? error,
      BiometricType? biometricType}) {
    return _EnterPinCodeState(
      action: action,
      enterCodeType: enterCodeType,
      code: code,
      codeLength: codeLength,
      error: error,
      biometricType: biometricType,
    );
  }
}

/// @nodoc
const $EnterPinCodeState = _$EnterPinCodeStateTearOff();

/// @nodoc
mixin _$EnterPinCodeState {
  BlocAction? get action => throw _privateConstructorUsedError;
  EnterCodeType get enterCodeType => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  int get codeLength => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  BiometricType? get biometricType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnterPinCodeStateCopyWith<EnterPinCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterPinCodeStateCopyWith<$Res> {
  factory $EnterPinCodeStateCopyWith(
          EnterPinCodeState value, $Res Function(EnterPinCodeState) then) =
      _$EnterPinCodeStateCopyWithImpl<$Res>;
  $Res call(
      {BlocAction? action,
      EnterCodeType enterCodeType,
      String code,
      int codeLength,
      String? error,
      BiometricType? biometricType});
}

/// @nodoc
class _$EnterPinCodeStateCopyWithImpl<$Res>
    implements $EnterPinCodeStateCopyWith<$Res> {
  _$EnterPinCodeStateCopyWithImpl(this._value, this._then);

  final EnterPinCodeState _value;
  // ignore: unused_field
  final $Res Function(EnterPinCodeState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? enterCodeType = freezed,
    Object? code = freezed,
    Object? codeLength = freezed,
    Object? error = freezed,
    Object? biometricType = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      enterCodeType: enterCodeType == freezed
          ? _value.enterCodeType
          : enterCodeType // ignore: cast_nullable_to_non_nullable
              as EnterCodeType,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      codeLength: codeLength == freezed
          ? _value.codeLength
          : codeLength // ignore: cast_nullable_to_non_nullable
              as int,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      biometricType: biometricType == freezed
          ? _value.biometricType
          : biometricType // ignore: cast_nullable_to_non_nullable
              as BiometricType?,
    ));
  }
}

/// @nodoc
abstract class _$EnterPinCodeStateCopyWith<$Res>
    implements $EnterPinCodeStateCopyWith<$Res> {
  factory _$EnterPinCodeStateCopyWith(
          _EnterPinCodeState value, $Res Function(_EnterPinCodeState) then) =
      __$EnterPinCodeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocAction? action,
      EnterCodeType enterCodeType,
      String code,
      int codeLength,
      String? error,
      BiometricType? biometricType});
}

/// @nodoc
class __$EnterPinCodeStateCopyWithImpl<$Res>
    extends _$EnterPinCodeStateCopyWithImpl<$Res>
    implements _$EnterPinCodeStateCopyWith<$Res> {
  __$EnterPinCodeStateCopyWithImpl(
      _EnterPinCodeState _value, $Res Function(_EnterPinCodeState) _then)
      : super(_value, (v) => _then(v as _EnterPinCodeState));

  @override
  _EnterPinCodeState get _value => super._value as _EnterPinCodeState;

  @override
  $Res call({
    Object? action = freezed,
    Object? enterCodeType = freezed,
    Object? code = freezed,
    Object? codeLength = freezed,
    Object? error = freezed,
    Object? biometricType = freezed,
  }) {
    return _then(_EnterPinCodeState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      enterCodeType: enterCodeType == freezed
          ? _value.enterCodeType
          : enterCodeType // ignore: cast_nullable_to_non_nullable
              as EnterCodeType,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      codeLength: codeLength == freezed
          ? _value.codeLength
          : codeLength // ignore: cast_nullable_to_non_nullable
              as int,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      biometricType: biometricType == freezed
          ? _value.biometricType
          : biometricType // ignore: cast_nullable_to_non_nullable
              as BiometricType?,
    ));
  }
}

/// @nodoc

class _$_EnterPinCodeState implements _EnterPinCodeState {
  _$_EnterPinCodeState(
      {this.action,
      required this.enterCodeType,
      this.code = '',
      this.codeLength = 4,
      this.error,
      this.biometricType});

  @override
  final BlocAction? action;
  @override
  final EnterCodeType enterCodeType;
  @JsonKey(defaultValue: '')
  @override
  final String code;
  @JsonKey(defaultValue: 4)
  @override
  final int codeLength;
  @override
  final String? error;
  @override
  final BiometricType? biometricType;

  @override
  String toString() {
    return 'EnterPinCodeState(action: $action, enterCodeType: $enterCodeType, code: $code, codeLength: $codeLength, error: $error, biometricType: $biometricType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EnterPinCodeState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.enterCodeType, enterCodeType) ||
                const DeepCollectionEquality()
                    .equals(other.enterCodeType, enterCodeType)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.codeLength, codeLength) ||
                const DeepCollectionEquality()
                    .equals(other.codeLength, codeLength)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.biometricType, biometricType) ||
                const DeepCollectionEquality()
                    .equals(other.biometricType, biometricType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(enterCodeType) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(codeLength) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(biometricType);

  @JsonKey(ignore: true)
  @override
  _$EnterPinCodeStateCopyWith<_EnterPinCodeState> get copyWith =>
      __$EnterPinCodeStateCopyWithImpl<_EnterPinCodeState>(this, _$identity);
}

abstract class _EnterPinCodeState implements EnterPinCodeState {
  factory _EnterPinCodeState(
      {BlocAction? action,
      required EnterCodeType enterCodeType,
      String code,
      int codeLength,
      String? error,
      BiometricType? biometricType}) = _$_EnterPinCodeState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  EnterCodeType get enterCodeType => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  int get codeLength => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  BiometricType? get biometricType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EnterPinCodeStateCopyWith<_EnterPinCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

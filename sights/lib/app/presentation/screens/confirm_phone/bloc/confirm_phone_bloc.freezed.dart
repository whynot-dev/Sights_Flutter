// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'confirm_phone_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConfirmPhoneEventTearOff {
  const _$ConfirmPhoneEventTearOff();

  Init init() {
    return Init();
  }

  ScreenOpened screenOpened() {
    return ScreenOpened();
  }

  CodeUpdated codeUpdated(String code) {
    return CodeUpdated(
      code,
    );
  }

  ChangePhoneClicked changePhoneClicked() {
    return ChangePhoneClicked();
  }

  ResendCodeClicked resendCodeClicked() {
    return ResendCodeClicked();
  }

  CountOfSecondsToResendChanged countOfSecondsToResendChanged(
      int countSecondsToResendChanged) {
    return CountOfSecondsToResendChanged(
      countSecondsToResendChanged,
    );
  }

  CodeChanged codeChanged(String code) {
    return CodeChanged(
      code,
    );
  }

  PopScopeCaught popScopeCaught() {
    return PopScopeCaught();
  }
}

/// @nodoc
const $ConfirmPhoneEvent = _$ConfirmPhoneEventTearOff();

/// @nodoc
mixin _$ConfirmPhoneEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function(String code) codeUpdated,
    required TResult Function() changePhoneClicked,
    required TResult Function() resendCodeClicked,
    required TResult Function(int countSecondsToResendChanged)
        countOfSecondsToResendChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function() popScopeCaught,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function(String code)? codeUpdated,
    TResult Function()? changePhoneClicked,
    TResult Function()? resendCodeClicked,
    TResult Function(int countSecondsToResendChanged)?
        countOfSecondsToResendChanged,
    TResult Function(String code)? codeChanged,
    TResult Function()? popScopeCaught,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CodeUpdated value) codeUpdated,
    required TResult Function(ChangePhoneClicked value) changePhoneClicked,
    required TResult Function(ResendCodeClicked value) resendCodeClicked,
    required TResult Function(CountOfSecondsToResendChanged value)
        countOfSecondsToResendChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PopScopeCaught value) popScopeCaught,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CodeUpdated value)? codeUpdated,
    TResult Function(ChangePhoneClicked value)? changePhoneClicked,
    TResult Function(ResendCodeClicked value)? resendCodeClicked,
    TResult Function(CountOfSecondsToResendChanged value)?
        countOfSecondsToResendChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PopScopeCaught value)? popScopeCaught,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmPhoneEventCopyWith<$Res> {
  factory $ConfirmPhoneEventCopyWith(
          ConfirmPhoneEvent value, $Res Function(ConfirmPhoneEvent) then) =
      _$ConfirmPhoneEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmPhoneEventCopyWithImpl<$Res>
    implements $ConfirmPhoneEventCopyWith<$Res> {
  _$ConfirmPhoneEventCopyWithImpl(this._value, this._then);

  final ConfirmPhoneEvent _value;
  // ignore: unused_field
  final $Res Function(ConfirmPhoneEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$ConfirmPhoneEventCopyWithImpl<$Res>
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
    return 'ConfirmPhoneEvent.init()';
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
    required TResult Function() screenOpened,
    required TResult Function(String code) codeUpdated,
    required TResult Function() changePhoneClicked,
    required TResult Function() resendCodeClicked,
    required TResult Function(int countSecondsToResendChanged)
        countOfSecondsToResendChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function() popScopeCaught,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function(String code)? codeUpdated,
    TResult Function()? changePhoneClicked,
    TResult Function()? resendCodeClicked,
    TResult Function(int countSecondsToResendChanged)?
        countOfSecondsToResendChanged,
    TResult Function(String code)? codeChanged,
    TResult Function()? popScopeCaught,
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
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CodeUpdated value) codeUpdated,
    required TResult Function(ChangePhoneClicked value) changePhoneClicked,
    required TResult Function(ResendCodeClicked value) resendCodeClicked,
    required TResult Function(CountOfSecondsToResendChanged value)
        countOfSecondsToResendChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PopScopeCaught value) popScopeCaught,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CodeUpdated value)? codeUpdated,
    TResult Function(ChangePhoneClicked value)? changePhoneClicked,
    TResult Function(ResendCodeClicked value)? resendCodeClicked,
    TResult Function(CountOfSecondsToResendChanged value)?
        countOfSecondsToResendChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PopScopeCaught value)? popScopeCaught,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements ConfirmPhoneEvent {
  factory Init() = _$Init;
}

/// @nodoc
abstract class $ScreenOpenedCopyWith<$Res> {
  factory $ScreenOpenedCopyWith(
          ScreenOpened value, $Res Function(ScreenOpened) then) =
      _$ScreenOpenedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScreenOpenedCopyWithImpl<$Res>
    extends _$ConfirmPhoneEventCopyWithImpl<$Res>
    implements $ScreenOpenedCopyWith<$Res> {
  _$ScreenOpenedCopyWithImpl(
      ScreenOpened _value, $Res Function(ScreenOpened) _then)
      : super(_value, (v) => _then(v as ScreenOpened));

  @override
  ScreenOpened get _value => super._value as ScreenOpened;
}

/// @nodoc

class _$ScreenOpened implements ScreenOpened {
  _$ScreenOpened();

  @override
  String toString() {
    return 'ConfirmPhoneEvent.screenOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ScreenOpened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function(String code) codeUpdated,
    required TResult Function() changePhoneClicked,
    required TResult Function() resendCodeClicked,
    required TResult Function(int countSecondsToResendChanged)
        countOfSecondsToResendChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function() popScopeCaught,
  }) {
    return screenOpened();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function(String code)? codeUpdated,
    TResult Function()? changePhoneClicked,
    TResult Function()? resendCodeClicked,
    TResult Function(int countSecondsToResendChanged)?
        countOfSecondsToResendChanged,
    TResult Function(String code)? codeChanged,
    TResult Function()? popScopeCaught,
    required TResult orElse(),
  }) {
    if (screenOpened != null) {
      return screenOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CodeUpdated value) codeUpdated,
    required TResult Function(ChangePhoneClicked value) changePhoneClicked,
    required TResult Function(ResendCodeClicked value) resendCodeClicked,
    required TResult Function(CountOfSecondsToResendChanged value)
        countOfSecondsToResendChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PopScopeCaught value) popScopeCaught,
  }) {
    return screenOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CodeUpdated value)? codeUpdated,
    TResult Function(ChangePhoneClicked value)? changePhoneClicked,
    TResult Function(ResendCodeClicked value)? resendCodeClicked,
    TResult Function(CountOfSecondsToResendChanged value)?
        countOfSecondsToResendChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PopScopeCaught value)? popScopeCaught,
    required TResult orElse(),
  }) {
    if (screenOpened != null) {
      return screenOpened(this);
    }
    return orElse();
  }
}

abstract class ScreenOpened implements ConfirmPhoneEvent {
  factory ScreenOpened() = _$ScreenOpened;
}

/// @nodoc
abstract class $CodeUpdatedCopyWith<$Res> {
  factory $CodeUpdatedCopyWith(
          CodeUpdated value, $Res Function(CodeUpdated) then) =
      _$CodeUpdatedCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class _$CodeUpdatedCopyWithImpl<$Res>
    extends _$ConfirmPhoneEventCopyWithImpl<$Res>
    implements $CodeUpdatedCopyWith<$Res> {
  _$CodeUpdatedCopyWithImpl(
      CodeUpdated _value, $Res Function(CodeUpdated) _then)
      : super(_value, (v) => _then(v as CodeUpdated));

  @override
  CodeUpdated get _value => super._value as CodeUpdated;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(CodeUpdated(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CodeUpdated implements CodeUpdated {
  _$CodeUpdated(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'ConfirmPhoneEvent.codeUpdated(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CodeUpdated &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  $CodeUpdatedCopyWith<CodeUpdated> get copyWith =>
      _$CodeUpdatedCopyWithImpl<CodeUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function(String code) codeUpdated,
    required TResult Function() changePhoneClicked,
    required TResult Function() resendCodeClicked,
    required TResult Function(int countSecondsToResendChanged)
        countOfSecondsToResendChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function() popScopeCaught,
  }) {
    return codeUpdated(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function(String code)? codeUpdated,
    TResult Function()? changePhoneClicked,
    TResult Function()? resendCodeClicked,
    TResult Function(int countSecondsToResendChanged)?
        countOfSecondsToResendChanged,
    TResult Function(String code)? codeChanged,
    TResult Function()? popScopeCaught,
    required TResult orElse(),
  }) {
    if (codeUpdated != null) {
      return codeUpdated(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CodeUpdated value) codeUpdated,
    required TResult Function(ChangePhoneClicked value) changePhoneClicked,
    required TResult Function(ResendCodeClicked value) resendCodeClicked,
    required TResult Function(CountOfSecondsToResendChanged value)
        countOfSecondsToResendChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PopScopeCaught value) popScopeCaught,
  }) {
    return codeUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CodeUpdated value)? codeUpdated,
    TResult Function(ChangePhoneClicked value)? changePhoneClicked,
    TResult Function(ResendCodeClicked value)? resendCodeClicked,
    TResult Function(CountOfSecondsToResendChanged value)?
        countOfSecondsToResendChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PopScopeCaught value)? popScopeCaught,
    required TResult orElse(),
  }) {
    if (codeUpdated != null) {
      return codeUpdated(this);
    }
    return orElse();
  }
}

abstract class CodeUpdated implements ConfirmPhoneEvent {
  factory CodeUpdated(String code) = _$CodeUpdated;

  String get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeUpdatedCopyWith<CodeUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePhoneClickedCopyWith<$Res> {
  factory $ChangePhoneClickedCopyWith(
          ChangePhoneClicked value, $Res Function(ChangePhoneClicked) then) =
      _$ChangePhoneClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangePhoneClickedCopyWithImpl<$Res>
    extends _$ConfirmPhoneEventCopyWithImpl<$Res>
    implements $ChangePhoneClickedCopyWith<$Res> {
  _$ChangePhoneClickedCopyWithImpl(
      ChangePhoneClicked _value, $Res Function(ChangePhoneClicked) _then)
      : super(_value, (v) => _then(v as ChangePhoneClicked));

  @override
  ChangePhoneClicked get _value => super._value as ChangePhoneClicked;
}

/// @nodoc

class _$ChangePhoneClicked implements ChangePhoneClicked {
  _$ChangePhoneClicked();

  @override
  String toString() {
    return 'ConfirmPhoneEvent.changePhoneClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChangePhoneClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function(String code) codeUpdated,
    required TResult Function() changePhoneClicked,
    required TResult Function() resendCodeClicked,
    required TResult Function(int countSecondsToResendChanged)
        countOfSecondsToResendChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function() popScopeCaught,
  }) {
    return changePhoneClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function(String code)? codeUpdated,
    TResult Function()? changePhoneClicked,
    TResult Function()? resendCodeClicked,
    TResult Function(int countSecondsToResendChanged)?
        countOfSecondsToResendChanged,
    TResult Function(String code)? codeChanged,
    TResult Function()? popScopeCaught,
    required TResult orElse(),
  }) {
    if (changePhoneClicked != null) {
      return changePhoneClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CodeUpdated value) codeUpdated,
    required TResult Function(ChangePhoneClicked value) changePhoneClicked,
    required TResult Function(ResendCodeClicked value) resendCodeClicked,
    required TResult Function(CountOfSecondsToResendChanged value)
        countOfSecondsToResendChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PopScopeCaught value) popScopeCaught,
  }) {
    return changePhoneClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CodeUpdated value)? codeUpdated,
    TResult Function(ChangePhoneClicked value)? changePhoneClicked,
    TResult Function(ResendCodeClicked value)? resendCodeClicked,
    TResult Function(CountOfSecondsToResendChanged value)?
        countOfSecondsToResendChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PopScopeCaught value)? popScopeCaught,
    required TResult orElse(),
  }) {
    if (changePhoneClicked != null) {
      return changePhoneClicked(this);
    }
    return orElse();
  }
}

abstract class ChangePhoneClicked implements ConfirmPhoneEvent {
  factory ChangePhoneClicked() = _$ChangePhoneClicked;
}

/// @nodoc
abstract class $ResendCodeClickedCopyWith<$Res> {
  factory $ResendCodeClickedCopyWith(
          ResendCodeClicked value, $Res Function(ResendCodeClicked) then) =
      _$ResendCodeClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResendCodeClickedCopyWithImpl<$Res>
    extends _$ConfirmPhoneEventCopyWithImpl<$Res>
    implements $ResendCodeClickedCopyWith<$Res> {
  _$ResendCodeClickedCopyWithImpl(
      ResendCodeClicked _value, $Res Function(ResendCodeClicked) _then)
      : super(_value, (v) => _then(v as ResendCodeClicked));

  @override
  ResendCodeClicked get _value => super._value as ResendCodeClicked;
}

/// @nodoc

class _$ResendCodeClicked implements ResendCodeClicked {
  _$ResendCodeClicked();

  @override
  String toString() {
    return 'ConfirmPhoneEvent.resendCodeClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResendCodeClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function(String code) codeUpdated,
    required TResult Function() changePhoneClicked,
    required TResult Function() resendCodeClicked,
    required TResult Function(int countSecondsToResendChanged)
        countOfSecondsToResendChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function() popScopeCaught,
  }) {
    return resendCodeClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function(String code)? codeUpdated,
    TResult Function()? changePhoneClicked,
    TResult Function()? resendCodeClicked,
    TResult Function(int countSecondsToResendChanged)?
        countOfSecondsToResendChanged,
    TResult Function(String code)? codeChanged,
    TResult Function()? popScopeCaught,
    required TResult orElse(),
  }) {
    if (resendCodeClicked != null) {
      return resendCodeClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CodeUpdated value) codeUpdated,
    required TResult Function(ChangePhoneClicked value) changePhoneClicked,
    required TResult Function(ResendCodeClicked value) resendCodeClicked,
    required TResult Function(CountOfSecondsToResendChanged value)
        countOfSecondsToResendChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PopScopeCaught value) popScopeCaught,
  }) {
    return resendCodeClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CodeUpdated value)? codeUpdated,
    TResult Function(ChangePhoneClicked value)? changePhoneClicked,
    TResult Function(ResendCodeClicked value)? resendCodeClicked,
    TResult Function(CountOfSecondsToResendChanged value)?
        countOfSecondsToResendChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PopScopeCaught value)? popScopeCaught,
    required TResult orElse(),
  }) {
    if (resendCodeClicked != null) {
      return resendCodeClicked(this);
    }
    return orElse();
  }
}

abstract class ResendCodeClicked implements ConfirmPhoneEvent {
  factory ResendCodeClicked() = _$ResendCodeClicked;
}

/// @nodoc
abstract class $CountOfSecondsToResendChangedCopyWith<$Res> {
  factory $CountOfSecondsToResendChangedCopyWith(
          CountOfSecondsToResendChanged value,
          $Res Function(CountOfSecondsToResendChanged) then) =
      _$CountOfSecondsToResendChangedCopyWithImpl<$Res>;
  $Res call({int countSecondsToResendChanged});
}

/// @nodoc
class _$CountOfSecondsToResendChangedCopyWithImpl<$Res>
    extends _$ConfirmPhoneEventCopyWithImpl<$Res>
    implements $CountOfSecondsToResendChangedCopyWith<$Res> {
  _$CountOfSecondsToResendChangedCopyWithImpl(
      CountOfSecondsToResendChanged _value,
      $Res Function(CountOfSecondsToResendChanged) _then)
      : super(_value, (v) => _then(v as CountOfSecondsToResendChanged));

  @override
  CountOfSecondsToResendChanged get _value =>
      super._value as CountOfSecondsToResendChanged;

  @override
  $Res call({
    Object? countSecondsToResendChanged = freezed,
  }) {
    return _then(CountOfSecondsToResendChanged(
      countSecondsToResendChanged == freezed
          ? _value.countSecondsToResendChanged
          : countSecondsToResendChanged // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CountOfSecondsToResendChanged implements CountOfSecondsToResendChanged {
  _$CountOfSecondsToResendChanged(this.countSecondsToResendChanged);

  @override
  final int countSecondsToResendChanged;

  @override
  String toString() {
    return 'ConfirmPhoneEvent.countOfSecondsToResendChanged(countSecondsToResendChanged: $countSecondsToResendChanged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CountOfSecondsToResendChanged &&
            (identical(other.countSecondsToResendChanged,
                    countSecondsToResendChanged) ||
                const DeepCollectionEquality().equals(
                    other.countSecondsToResendChanged,
                    countSecondsToResendChanged)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(countSecondsToResendChanged);

  @JsonKey(ignore: true)
  @override
  $CountOfSecondsToResendChangedCopyWith<CountOfSecondsToResendChanged>
      get copyWith => _$CountOfSecondsToResendChangedCopyWithImpl<
          CountOfSecondsToResendChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function(String code) codeUpdated,
    required TResult Function() changePhoneClicked,
    required TResult Function() resendCodeClicked,
    required TResult Function(int countSecondsToResendChanged)
        countOfSecondsToResendChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function() popScopeCaught,
  }) {
    return countOfSecondsToResendChanged(countSecondsToResendChanged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function(String code)? codeUpdated,
    TResult Function()? changePhoneClicked,
    TResult Function()? resendCodeClicked,
    TResult Function(int countSecondsToResendChanged)?
        countOfSecondsToResendChanged,
    TResult Function(String code)? codeChanged,
    TResult Function()? popScopeCaught,
    required TResult orElse(),
  }) {
    if (countOfSecondsToResendChanged != null) {
      return countOfSecondsToResendChanged(countSecondsToResendChanged);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CodeUpdated value) codeUpdated,
    required TResult Function(ChangePhoneClicked value) changePhoneClicked,
    required TResult Function(ResendCodeClicked value) resendCodeClicked,
    required TResult Function(CountOfSecondsToResendChanged value)
        countOfSecondsToResendChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PopScopeCaught value) popScopeCaught,
  }) {
    return countOfSecondsToResendChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CodeUpdated value)? codeUpdated,
    TResult Function(ChangePhoneClicked value)? changePhoneClicked,
    TResult Function(ResendCodeClicked value)? resendCodeClicked,
    TResult Function(CountOfSecondsToResendChanged value)?
        countOfSecondsToResendChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PopScopeCaught value)? popScopeCaught,
    required TResult orElse(),
  }) {
    if (countOfSecondsToResendChanged != null) {
      return countOfSecondsToResendChanged(this);
    }
    return orElse();
  }
}

abstract class CountOfSecondsToResendChanged implements ConfirmPhoneEvent {
  factory CountOfSecondsToResendChanged(int countSecondsToResendChanged) =
      _$CountOfSecondsToResendChanged;

  int get countSecondsToResendChanged => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountOfSecondsToResendChangedCopyWith<CountOfSecondsToResendChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeChangedCopyWith<$Res> {
  factory $CodeChangedCopyWith(
          CodeChanged value, $Res Function(CodeChanged) then) =
      _$CodeChangedCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class _$CodeChangedCopyWithImpl<$Res>
    extends _$ConfirmPhoneEventCopyWithImpl<$Res>
    implements $CodeChangedCopyWith<$Res> {
  _$CodeChangedCopyWithImpl(
      CodeChanged _value, $Res Function(CodeChanged) _then)
      : super(_value, (v) => _then(v as CodeChanged));

  @override
  CodeChanged get _value => super._value as CodeChanged;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(CodeChanged(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CodeChanged implements CodeChanged {
  _$CodeChanged(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'ConfirmPhoneEvent.codeChanged(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CodeChanged &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  $CodeChangedCopyWith<CodeChanged> get copyWith =>
      _$CodeChangedCopyWithImpl<CodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function(String code) codeUpdated,
    required TResult Function() changePhoneClicked,
    required TResult Function() resendCodeClicked,
    required TResult Function(int countSecondsToResendChanged)
        countOfSecondsToResendChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function() popScopeCaught,
  }) {
    return codeChanged(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function(String code)? codeUpdated,
    TResult Function()? changePhoneClicked,
    TResult Function()? resendCodeClicked,
    TResult Function(int countSecondsToResendChanged)?
        countOfSecondsToResendChanged,
    TResult Function(String code)? codeChanged,
    TResult Function()? popScopeCaught,
    required TResult orElse(),
  }) {
    if (codeChanged != null) {
      return codeChanged(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CodeUpdated value) codeUpdated,
    required TResult Function(ChangePhoneClicked value) changePhoneClicked,
    required TResult Function(ResendCodeClicked value) resendCodeClicked,
    required TResult Function(CountOfSecondsToResendChanged value)
        countOfSecondsToResendChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PopScopeCaught value) popScopeCaught,
  }) {
    return codeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CodeUpdated value)? codeUpdated,
    TResult Function(ChangePhoneClicked value)? changePhoneClicked,
    TResult Function(ResendCodeClicked value)? resendCodeClicked,
    TResult Function(CountOfSecondsToResendChanged value)?
        countOfSecondsToResendChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PopScopeCaught value)? popScopeCaught,
    required TResult orElse(),
  }) {
    if (codeChanged != null) {
      return codeChanged(this);
    }
    return orElse();
  }
}

abstract class CodeChanged implements ConfirmPhoneEvent {
  factory CodeChanged(String code) = _$CodeChanged;

  String get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeChangedCopyWith<CodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopScopeCaughtCopyWith<$Res> {
  factory $PopScopeCaughtCopyWith(
          PopScopeCaught value, $Res Function(PopScopeCaught) then) =
      _$PopScopeCaughtCopyWithImpl<$Res>;
}

/// @nodoc
class _$PopScopeCaughtCopyWithImpl<$Res>
    extends _$ConfirmPhoneEventCopyWithImpl<$Res>
    implements $PopScopeCaughtCopyWith<$Res> {
  _$PopScopeCaughtCopyWithImpl(
      PopScopeCaught _value, $Res Function(PopScopeCaught) _then)
      : super(_value, (v) => _then(v as PopScopeCaught));

  @override
  PopScopeCaught get _value => super._value as PopScopeCaught;
}

/// @nodoc

class _$PopScopeCaught implements PopScopeCaught {
  _$PopScopeCaught();

  @override
  String toString() {
    return 'ConfirmPhoneEvent.popScopeCaught()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PopScopeCaught);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function(String code) codeUpdated,
    required TResult Function() changePhoneClicked,
    required TResult Function() resendCodeClicked,
    required TResult Function(int countSecondsToResendChanged)
        countOfSecondsToResendChanged,
    required TResult Function(String code) codeChanged,
    required TResult Function() popScopeCaught,
  }) {
    return popScopeCaught();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function(String code)? codeUpdated,
    TResult Function()? changePhoneClicked,
    TResult Function()? resendCodeClicked,
    TResult Function(int countSecondsToResendChanged)?
        countOfSecondsToResendChanged,
    TResult Function(String code)? codeChanged,
    TResult Function()? popScopeCaught,
    required TResult orElse(),
  }) {
    if (popScopeCaught != null) {
      return popScopeCaught();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CodeUpdated value) codeUpdated,
    required TResult Function(ChangePhoneClicked value) changePhoneClicked,
    required TResult Function(ResendCodeClicked value) resendCodeClicked,
    required TResult Function(CountOfSecondsToResendChanged value)
        countOfSecondsToResendChanged,
    required TResult Function(CodeChanged value) codeChanged,
    required TResult Function(PopScopeCaught value) popScopeCaught,
  }) {
    return popScopeCaught(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CodeUpdated value)? codeUpdated,
    TResult Function(ChangePhoneClicked value)? changePhoneClicked,
    TResult Function(ResendCodeClicked value)? resendCodeClicked,
    TResult Function(CountOfSecondsToResendChanged value)?
        countOfSecondsToResendChanged,
    TResult Function(CodeChanged value)? codeChanged,
    TResult Function(PopScopeCaught value)? popScopeCaught,
    required TResult orElse(),
  }) {
    if (popScopeCaught != null) {
      return popScopeCaught(this);
    }
    return orElse();
  }
}

abstract class PopScopeCaught implements ConfirmPhoneEvent {
  factory PopScopeCaught() = _$PopScopeCaught;
}

/// @nodoc
class _$ConfirmPhoneStateTearOff {
  const _$ConfirmPhoneStateTearOff();

  _ConfirmPhoneState call(
      {BlocAction? action,
      required String phoneNumber,
      String code = '',
      int countOfSecondsToResend = 0,
      bool isCodeValid = true,
      String? errorMessage}) {
    return _ConfirmPhoneState(
      action: action,
      phoneNumber: phoneNumber,
      code: code,
      countOfSecondsToResend: countOfSecondsToResend,
      isCodeValid: isCodeValid,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $ConfirmPhoneState = _$ConfirmPhoneStateTearOff();

/// @nodoc
mixin _$ConfirmPhoneState {
  BlocAction? get action => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  int get countOfSecondsToResend => throw _privateConstructorUsedError;
  bool get isCodeValid => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmPhoneStateCopyWith<ConfirmPhoneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmPhoneStateCopyWith<$Res> {
  factory $ConfirmPhoneStateCopyWith(
          ConfirmPhoneState value, $Res Function(ConfirmPhoneState) then) =
      _$ConfirmPhoneStateCopyWithImpl<$Res>;
  $Res call(
      {BlocAction? action,
      String phoneNumber,
      String code,
      int countOfSecondsToResend,
      bool isCodeValid,
      String? errorMessage});
}

/// @nodoc
class _$ConfirmPhoneStateCopyWithImpl<$Res>
    implements $ConfirmPhoneStateCopyWith<$Res> {
  _$ConfirmPhoneStateCopyWithImpl(this._value, this._then);

  final ConfirmPhoneState _value;
  // ignore: unused_field
  final $Res Function(ConfirmPhoneState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? phoneNumber = freezed,
    Object? code = freezed,
    Object? countOfSecondsToResend = freezed,
    Object? isCodeValid = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      countOfSecondsToResend: countOfSecondsToResend == freezed
          ? _value.countOfSecondsToResend
          : countOfSecondsToResend // ignore: cast_nullable_to_non_nullable
              as int,
      isCodeValid: isCodeValid == freezed
          ? _value.isCodeValid
          : isCodeValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ConfirmPhoneStateCopyWith<$Res>
    implements $ConfirmPhoneStateCopyWith<$Res> {
  factory _$ConfirmPhoneStateCopyWith(
          _ConfirmPhoneState value, $Res Function(_ConfirmPhoneState) then) =
      __$ConfirmPhoneStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocAction? action,
      String phoneNumber,
      String code,
      int countOfSecondsToResend,
      bool isCodeValid,
      String? errorMessage});
}

/// @nodoc
class __$ConfirmPhoneStateCopyWithImpl<$Res>
    extends _$ConfirmPhoneStateCopyWithImpl<$Res>
    implements _$ConfirmPhoneStateCopyWith<$Res> {
  __$ConfirmPhoneStateCopyWithImpl(
      _ConfirmPhoneState _value, $Res Function(_ConfirmPhoneState) _then)
      : super(_value, (v) => _then(v as _ConfirmPhoneState));

  @override
  _ConfirmPhoneState get _value => super._value as _ConfirmPhoneState;

  @override
  $Res call({
    Object? action = freezed,
    Object? phoneNumber = freezed,
    Object? code = freezed,
    Object? countOfSecondsToResend = freezed,
    Object? isCodeValid = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_ConfirmPhoneState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      countOfSecondsToResend: countOfSecondsToResend == freezed
          ? _value.countOfSecondsToResend
          : countOfSecondsToResend // ignore: cast_nullable_to_non_nullable
              as int,
      isCodeValid: isCodeValid == freezed
          ? _value.isCodeValid
          : isCodeValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ConfirmPhoneState implements _ConfirmPhoneState {
  _$_ConfirmPhoneState(
      {this.action,
      required this.phoneNumber,
      this.code = '',
      this.countOfSecondsToResend = 0,
      this.isCodeValid = true,
      this.errorMessage});

  @override
  final BlocAction? action;
  @override
  final String phoneNumber;
  @JsonKey(defaultValue: '')
  @override
  final String code;
  @JsonKey(defaultValue: 0)
  @override
  final int countOfSecondsToResend;
  @JsonKey(defaultValue: true)
  @override
  final bool isCodeValid;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ConfirmPhoneState(action: $action, phoneNumber: $phoneNumber, code: $code, countOfSecondsToResend: $countOfSecondsToResend, isCodeValid: $isCodeValid, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfirmPhoneState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.countOfSecondsToResend, countOfSecondsToResend) ||
                const DeepCollectionEquality().equals(
                    other.countOfSecondsToResend, countOfSecondsToResend)) &&
            (identical(other.isCodeValid, isCodeValid) ||
                const DeepCollectionEquality()
                    .equals(other.isCodeValid, isCodeValid)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(countOfSecondsToResend) ^
      const DeepCollectionEquality().hash(isCodeValid) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$ConfirmPhoneStateCopyWith<_ConfirmPhoneState> get copyWith =>
      __$ConfirmPhoneStateCopyWithImpl<_ConfirmPhoneState>(this, _$identity);
}

abstract class _ConfirmPhoneState implements ConfirmPhoneState {
  factory _ConfirmPhoneState(
      {BlocAction? action,
      required String phoneNumber,
      String code,
      int countOfSecondsToResend,
      bool isCodeValid,
      String? errorMessage}) = _$_ConfirmPhoneState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  int get countOfSecondsToResend => throw _privateConstructorUsedError;
  @override
  bool get isCodeValid => throw _privateConstructorUsedError;
  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConfirmPhoneStateCopyWith<_ConfirmPhoneState> get copyWith =>
      throw _privateConstructorUsedError;
}

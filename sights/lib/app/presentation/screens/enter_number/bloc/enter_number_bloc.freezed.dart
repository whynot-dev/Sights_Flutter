// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'enter_number_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EnterNumberEventTearOff {
  const _$EnterNumberEventTearOff();

  Init init() {
    return Init();
  }

  PhoneChanged phoneChanged(PhoneNumber number) {
    return PhoneChanged(
      number,
    );
  }

  SendCodeClicked sendCodeClicked() {
    return SendCodeClicked();
  }

  PopScopeCaught popScopeCaught() {
    return PopScopeCaught();
  }

  ScreenResumed screenResumed() {
    return ScreenResumed();
  }
}

/// @nodoc
const $EnterNumberEvent = _$EnterNumberEventTearOff();

/// @nodoc
mixin _$EnterNumberEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(PhoneNumber number) phoneChanged,
    required TResult Function() sendCodeClicked,
    required TResult Function() popScopeCaught,
    required TResult Function() screenResumed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(PhoneNumber number)? phoneChanged,
    TResult Function()? sendCodeClicked,
    TResult Function()? popScopeCaught,
    TResult Function()? screenResumed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(SendCodeClicked value) sendCodeClicked,
    required TResult Function(PopScopeCaught value) popScopeCaught,
    required TResult Function(ScreenResumed value) screenResumed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(SendCodeClicked value)? sendCodeClicked,
    TResult Function(PopScopeCaught value)? popScopeCaught,
    TResult Function(ScreenResumed value)? screenResumed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterNumberEventCopyWith<$Res> {
  factory $EnterNumberEventCopyWith(
          EnterNumberEvent value, $Res Function(EnterNumberEvent) then) =
      _$EnterNumberEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EnterNumberEventCopyWithImpl<$Res>
    implements $EnterNumberEventCopyWith<$Res> {
  _$EnterNumberEventCopyWithImpl(this._value, this._then);

  final EnterNumberEvent _value;
  // ignore: unused_field
  final $Res Function(EnterNumberEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$EnterNumberEventCopyWithImpl<$Res>
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
    return 'EnterNumberEvent.init()';
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
    required TResult Function(PhoneNumber number) phoneChanged,
    required TResult Function() sendCodeClicked,
    required TResult Function() popScopeCaught,
    required TResult Function() screenResumed,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(PhoneNumber number)? phoneChanged,
    TResult Function()? sendCodeClicked,
    TResult Function()? popScopeCaught,
    TResult Function()? screenResumed,
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
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(SendCodeClicked value) sendCodeClicked,
    required TResult Function(PopScopeCaught value) popScopeCaught,
    required TResult Function(ScreenResumed value) screenResumed,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(SendCodeClicked value)? sendCodeClicked,
    TResult Function(PopScopeCaught value)? popScopeCaught,
    TResult Function(ScreenResumed value)? screenResumed,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements EnterNumberEvent {
  factory Init() = _$Init;
}

/// @nodoc
abstract class $PhoneChangedCopyWith<$Res> {
  factory $PhoneChangedCopyWith(
          PhoneChanged value, $Res Function(PhoneChanged) then) =
      _$PhoneChangedCopyWithImpl<$Res>;
  $Res call({PhoneNumber number});
}

/// @nodoc
class _$PhoneChangedCopyWithImpl<$Res>
    extends _$EnterNumberEventCopyWithImpl<$Res>
    implements $PhoneChangedCopyWith<$Res> {
  _$PhoneChangedCopyWithImpl(
      PhoneChanged _value, $Res Function(PhoneChanged) _then)
      : super(_value, (v) => _then(v as PhoneChanged));

  @override
  PhoneChanged get _value => super._value as PhoneChanged;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(PhoneChanged(
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
    ));
  }
}

/// @nodoc

class _$PhoneChanged implements PhoneChanged {
  _$PhoneChanged(this.number);

  @override
  final PhoneNumber number;

  @override
  String toString() {
    return 'EnterNumberEvent.phoneChanged(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneChanged &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @JsonKey(ignore: true)
  @override
  $PhoneChangedCopyWith<PhoneChanged> get copyWith =>
      _$PhoneChangedCopyWithImpl<PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(PhoneNumber number) phoneChanged,
    required TResult Function() sendCodeClicked,
    required TResult Function() popScopeCaught,
    required TResult Function() screenResumed,
  }) {
    return phoneChanged(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(PhoneNumber number)? phoneChanged,
    TResult Function()? sendCodeClicked,
    TResult Function()? popScopeCaught,
    TResult Function()? screenResumed,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(SendCodeClicked value) sendCodeClicked,
    required TResult Function(PopScopeCaught value) popScopeCaught,
    required TResult Function(ScreenResumed value) screenResumed,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(SendCodeClicked value)? sendCodeClicked,
    TResult Function(PopScopeCaught value)? popScopeCaught,
    TResult Function(ScreenResumed value)? screenResumed,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneChanged implements EnterNumberEvent {
  factory PhoneChanged(PhoneNumber number) = _$PhoneChanged;

  PhoneNumber get number => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneChangedCopyWith<PhoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendCodeClickedCopyWith<$Res> {
  factory $SendCodeClickedCopyWith(
          SendCodeClicked value, $Res Function(SendCodeClicked) then) =
      _$SendCodeClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendCodeClickedCopyWithImpl<$Res>
    extends _$EnterNumberEventCopyWithImpl<$Res>
    implements $SendCodeClickedCopyWith<$Res> {
  _$SendCodeClickedCopyWithImpl(
      SendCodeClicked _value, $Res Function(SendCodeClicked) _then)
      : super(_value, (v) => _then(v as SendCodeClicked));

  @override
  SendCodeClicked get _value => super._value as SendCodeClicked;
}

/// @nodoc

class _$SendCodeClicked implements SendCodeClicked {
  _$SendCodeClicked();

  @override
  String toString() {
    return 'EnterNumberEvent.sendCodeClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SendCodeClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(PhoneNumber number) phoneChanged,
    required TResult Function() sendCodeClicked,
    required TResult Function() popScopeCaught,
    required TResult Function() screenResumed,
  }) {
    return sendCodeClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(PhoneNumber number)? phoneChanged,
    TResult Function()? sendCodeClicked,
    TResult Function()? popScopeCaught,
    TResult Function()? screenResumed,
    required TResult orElse(),
  }) {
    if (sendCodeClicked != null) {
      return sendCodeClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(SendCodeClicked value) sendCodeClicked,
    required TResult Function(PopScopeCaught value) popScopeCaught,
    required TResult Function(ScreenResumed value) screenResumed,
  }) {
    return sendCodeClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(SendCodeClicked value)? sendCodeClicked,
    TResult Function(PopScopeCaught value)? popScopeCaught,
    TResult Function(ScreenResumed value)? screenResumed,
    required TResult orElse(),
  }) {
    if (sendCodeClicked != null) {
      return sendCodeClicked(this);
    }
    return orElse();
  }
}

abstract class SendCodeClicked implements EnterNumberEvent {
  factory SendCodeClicked() = _$SendCodeClicked;
}

/// @nodoc
abstract class $PopScopeCaughtCopyWith<$Res> {
  factory $PopScopeCaughtCopyWith(
          PopScopeCaught value, $Res Function(PopScopeCaught) then) =
      _$PopScopeCaughtCopyWithImpl<$Res>;
}

/// @nodoc
class _$PopScopeCaughtCopyWithImpl<$Res>
    extends _$EnterNumberEventCopyWithImpl<$Res>
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
    return 'EnterNumberEvent.popScopeCaught()';
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
    required TResult Function(PhoneNumber number) phoneChanged,
    required TResult Function() sendCodeClicked,
    required TResult Function() popScopeCaught,
    required TResult Function() screenResumed,
  }) {
    return popScopeCaught();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(PhoneNumber number)? phoneChanged,
    TResult Function()? sendCodeClicked,
    TResult Function()? popScopeCaught,
    TResult Function()? screenResumed,
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
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(SendCodeClicked value) sendCodeClicked,
    required TResult Function(PopScopeCaught value) popScopeCaught,
    required TResult Function(ScreenResumed value) screenResumed,
  }) {
    return popScopeCaught(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(SendCodeClicked value)? sendCodeClicked,
    TResult Function(PopScopeCaught value)? popScopeCaught,
    TResult Function(ScreenResumed value)? screenResumed,
    required TResult orElse(),
  }) {
    if (popScopeCaught != null) {
      return popScopeCaught(this);
    }
    return orElse();
  }
}

abstract class PopScopeCaught implements EnterNumberEvent {
  factory PopScopeCaught() = _$PopScopeCaught;
}

/// @nodoc
abstract class $ScreenResumedCopyWith<$Res> {
  factory $ScreenResumedCopyWith(
          ScreenResumed value, $Res Function(ScreenResumed) then) =
      _$ScreenResumedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScreenResumedCopyWithImpl<$Res>
    extends _$EnterNumberEventCopyWithImpl<$Res>
    implements $ScreenResumedCopyWith<$Res> {
  _$ScreenResumedCopyWithImpl(
      ScreenResumed _value, $Res Function(ScreenResumed) _then)
      : super(_value, (v) => _then(v as ScreenResumed));

  @override
  ScreenResumed get _value => super._value as ScreenResumed;
}

/// @nodoc

class _$ScreenResumed implements ScreenResumed {
  _$ScreenResumed();

  @override
  String toString() {
    return 'EnterNumberEvent.screenResumed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ScreenResumed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(PhoneNumber number) phoneChanged,
    required TResult Function() sendCodeClicked,
    required TResult Function() popScopeCaught,
    required TResult Function() screenResumed,
  }) {
    return screenResumed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(PhoneNumber number)? phoneChanged,
    TResult Function()? sendCodeClicked,
    TResult Function()? popScopeCaught,
    TResult Function()? screenResumed,
    required TResult orElse(),
  }) {
    if (screenResumed != null) {
      return screenResumed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(SendCodeClicked value) sendCodeClicked,
    required TResult Function(PopScopeCaught value) popScopeCaught,
    required TResult Function(ScreenResumed value) screenResumed,
  }) {
    return screenResumed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(SendCodeClicked value)? sendCodeClicked,
    TResult Function(PopScopeCaught value)? popScopeCaught,
    TResult Function(ScreenResumed value)? screenResumed,
    required TResult orElse(),
  }) {
    if (screenResumed != null) {
      return screenResumed(this);
    }
    return orElse();
  }
}

abstract class ScreenResumed implements EnterNumberEvent {
  factory ScreenResumed() = _$ScreenResumed;
}

/// @nodoc
class _$EnterNumberStateTearOff {
  const _$EnterNumberStateTearOff();

  _EnterNumberState call(
      {BlocAction? action,
      PhoneNumber? phoneNumber,
      bool isLoading = false,
      bool buttonEnabled = false}) {
    return _EnterNumberState(
      action: action,
      phoneNumber: phoneNumber,
      isLoading: isLoading,
      buttonEnabled: buttonEnabled,
    );
  }
}

/// @nodoc
const $EnterNumberState = _$EnterNumberStateTearOff();

/// @nodoc
mixin _$EnterNumberState {
  BlocAction? get action => throw _privateConstructorUsedError;
  PhoneNumber? get phoneNumber => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get buttonEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnterNumberStateCopyWith<EnterNumberState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterNumberStateCopyWith<$Res> {
  factory $EnterNumberStateCopyWith(
          EnterNumberState value, $Res Function(EnterNumberState) then) =
      _$EnterNumberStateCopyWithImpl<$Res>;
  $Res call(
      {BlocAction? action,
      PhoneNumber? phoneNumber,
      bool isLoading,
      bool buttonEnabled});
}

/// @nodoc
class _$EnterNumberStateCopyWithImpl<$Res>
    implements $EnterNumberStateCopyWith<$Res> {
  _$EnterNumberStateCopyWithImpl(this._value, this._then);

  final EnterNumberState _value;
  // ignore: unused_field
  final $Res Function(EnterNumberState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? phoneNumber = freezed,
    Object? isLoading = freezed,
    Object? buttonEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      buttonEnabled: buttonEnabled == freezed
          ? _value.buttonEnabled
          : buttonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$EnterNumberStateCopyWith<$Res>
    implements $EnterNumberStateCopyWith<$Res> {
  factory _$EnterNumberStateCopyWith(
          _EnterNumberState value, $Res Function(_EnterNumberState) then) =
      __$EnterNumberStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocAction? action,
      PhoneNumber? phoneNumber,
      bool isLoading,
      bool buttonEnabled});
}

/// @nodoc
class __$EnterNumberStateCopyWithImpl<$Res>
    extends _$EnterNumberStateCopyWithImpl<$Res>
    implements _$EnterNumberStateCopyWith<$Res> {
  __$EnterNumberStateCopyWithImpl(
      _EnterNumberState _value, $Res Function(_EnterNumberState) _then)
      : super(_value, (v) => _then(v as _EnterNumberState));

  @override
  _EnterNumberState get _value => super._value as _EnterNumberState;

  @override
  $Res call({
    Object? action = freezed,
    Object? phoneNumber = freezed,
    Object? isLoading = freezed,
    Object? buttonEnabled = freezed,
  }) {
    return _then(_EnterNumberState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      buttonEnabled: buttonEnabled == freezed
          ? _value.buttonEnabled
          : buttonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EnterNumberState implements _EnterNumberState {
  _$_EnterNumberState(
      {this.action,
      this.phoneNumber,
      this.isLoading = false,
      this.buttonEnabled = false});

  @override
  final BlocAction? action;
  @override
  final PhoneNumber? phoneNumber;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool buttonEnabled;

  @override
  String toString() {
    return 'EnterNumberState(action: $action, phoneNumber: $phoneNumber, isLoading: $isLoading, buttonEnabled: $buttonEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EnterNumberState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.buttonEnabled, buttonEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.buttonEnabled, buttonEnabled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(buttonEnabled);

  @JsonKey(ignore: true)
  @override
  _$EnterNumberStateCopyWith<_EnterNumberState> get copyWith =>
      __$EnterNumberStateCopyWithImpl<_EnterNumberState>(this, _$identity);
}

abstract class _EnterNumberState implements EnterNumberState {
  factory _EnterNumberState(
      {BlocAction? action,
      PhoneNumber? phoneNumber,
      bool isLoading,
      bool buttonEnabled}) = _$_EnterNumberState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  PhoneNumber? get phoneNumber => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get buttonEnabled => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EnterNumberStateCopyWith<_EnterNumberState> get copyWith =>
      throw _privateConstructorUsedError;
}

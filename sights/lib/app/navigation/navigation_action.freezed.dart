// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'navigation_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavigateActionTearOff {
  const _$NavigateActionTearOff();

  NavigateBack navigateBack({dynamic result = null}) {
    return NavigateBack(
      result: result,
    );
  }

  NavigateToEnterPhoneNumber navigateToEnterPhoneNumber(
      NavigateType navigateType) {
    return NavigateToEnterPhoneNumber(
      navigateType,
    );
  }

  NavigateToEnterPinCode navigateToEnterPinCode(NavigateType navigateType,
      {required EnterCodeType enterCodeType}) {
    return NavigateToEnterPinCode(
      navigateType,
      enterCodeType: enterCodeType,
    );
  }

  NavigateToConfirmPhone navigateToConfirmPhone(NavigateType navigateType,
      {required String phoneNumber}) {
    return NavigateToConfirmPhone(
      navigateType,
      phoneNumber: phoneNumber,
    );
  }

  NavigateToNavigation navigateToNavigation(NavigateType navigateType) {
    return NavigateToNavigation(
      navigateType,
    );
  }
}

/// @nodoc
const $NavigateAction = _$NavigateActionTearOff();

/// @nodoc
mixin _$NavigateAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateActionCopyWith<$Res> {
  factory $NavigateActionCopyWith(
          NavigateAction value, $Res Function(NavigateAction) then) =
      _$NavigateActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateActionCopyWith<$Res> {
  _$NavigateActionCopyWithImpl(this._value, this._then);

  final NavigateAction _value;
  // ignore: unused_field
  final $Res Function(NavigateAction) _then;
}

/// @nodoc
abstract class $NavigateBackCopyWith<$Res> {
  factory $NavigateBackCopyWith(
          NavigateBack value, $Res Function(NavigateBack) then) =
      _$NavigateBackCopyWithImpl<$Res>;
  $Res call({dynamic result});
}

/// @nodoc
class _$NavigateBackCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateBackCopyWith<$Res> {
  _$NavigateBackCopyWithImpl(
      NavigateBack _value, $Res Function(NavigateBack) _then)
      : super(_value, (v) => _then(v as NavigateBack));

  @override
  NavigateBack get _value => super._value as NavigateBack;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(NavigateBack(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$NavigateBack implements NavigateBack {
  const _$NavigateBack({this.result = null});

  @JsonKey(defaultValue: null)
  @override
  final dynamic result;

  @override
  String toString() {
    return 'NavigateAction.navigateBack(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateBack &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $NavigateBackCopyWith<NavigateBack> get copyWith =>
      _$NavigateBackCopyWithImpl<NavigateBack>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
  }) {
    return navigateBack(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    required TResult orElse(),
  }) {
    if (navigateBack != null) {
      return navigateBack(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
  }) {
    return navigateBack(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    required TResult orElse(),
  }) {
    if (navigateBack != null) {
      return navigateBack(this);
    }
    return orElse();
  }
}

abstract class NavigateBack implements NavigateAction {
  const factory NavigateBack({dynamic result}) = _$NavigateBack;

  dynamic get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateBackCopyWith<NavigateBack> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToEnterPhoneNumberCopyWith<$Res> {
  factory $NavigateToEnterPhoneNumberCopyWith(NavigateToEnterPhoneNumber value,
          $Res Function(NavigateToEnterPhoneNumber) then) =
      _$NavigateToEnterPhoneNumberCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType});
}

/// @nodoc
class _$NavigateToEnterPhoneNumberCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToEnterPhoneNumberCopyWith<$Res> {
  _$NavigateToEnterPhoneNumberCopyWithImpl(NavigateToEnterPhoneNumber _value,
      $Res Function(NavigateToEnterPhoneNumber) _then)
      : super(_value, (v) => _then(v as NavigateToEnterPhoneNumber));

  @override
  NavigateToEnterPhoneNumber get _value =>
      super._value as NavigateToEnterPhoneNumber;

  @override
  $Res call({
    Object? navigateType = freezed,
  }) {
    return _then(NavigateToEnterPhoneNumber(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
    ));
  }
}

/// @nodoc

class _$NavigateToEnterPhoneNumber implements NavigateToEnterPhoneNumber {
  const _$NavigateToEnterPhoneNumber(this.navigateType);

  @override
  final NavigateType navigateType;

  @override
  String toString() {
    return 'NavigateAction.navigateToEnterPhoneNumber(navigateType: $navigateType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToEnterPhoneNumber &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(navigateType);

  @JsonKey(ignore: true)
  @override
  $NavigateToEnterPhoneNumberCopyWith<NavigateToEnterPhoneNumber>
      get copyWith =>
          _$NavigateToEnterPhoneNumberCopyWithImpl<NavigateToEnterPhoneNumber>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
  }) {
    return navigateToEnterPhoneNumber(navigateType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    required TResult orElse(),
  }) {
    if (navigateToEnterPhoneNumber != null) {
      return navigateToEnterPhoneNumber(navigateType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
  }) {
    return navigateToEnterPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    required TResult orElse(),
  }) {
    if (navigateToEnterPhoneNumber != null) {
      return navigateToEnterPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class NavigateToEnterPhoneNumber implements NavigateAction {
  const factory NavigateToEnterPhoneNumber(NavigateType navigateType) =
      _$NavigateToEnterPhoneNumber;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToEnterPhoneNumberCopyWith<NavigateToEnterPhoneNumber>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToEnterPinCodeCopyWith<$Res> {
  factory $NavigateToEnterPinCodeCopyWith(NavigateToEnterPinCode value,
          $Res Function(NavigateToEnterPinCode) then) =
      _$NavigateToEnterPinCodeCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType, EnterCodeType enterCodeType});
}

/// @nodoc
class _$NavigateToEnterPinCodeCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToEnterPinCodeCopyWith<$Res> {
  _$NavigateToEnterPinCodeCopyWithImpl(NavigateToEnterPinCode _value,
      $Res Function(NavigateToEnterPinCode) _then)
      : super(_value, (v) => _then(v as NavigateToEnterPinCode));

  @override
  NavigateToEnterPinCode get _value => super._value as NavigateToEnterPinCode;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? enterCodeType = freezed,
  }) {
    return _then(NavigateToEnterPinCode(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      enterCodeType: enterCodeType == freezed
          ? _value.enterCodeType
          : enterCodeType // ignore: cast_nullable_to_non_nullable
              as EnterCodeType,
    ));
  }
}

/// @nodoc

class _$NavigateToEnterPinCode implements NavigateToEnterPinCode {
  const _$NavigateToEnterPinCode(this.navigateType,
      {required this.enterCodeType});

  @override
  final NavigateType navigateType;
  @override
  final EnterCodeType enterCodeType;

  @override
  String toString() {
    return 'NavigateAction.navigateToEnterPinCode(navigateType: $navigateType, enterCodeType: $enterCodeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToEnterPinCode &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.enterCodeType, enterCodeType) ||
                const DeepCollectionEquality()
                    .equals(other.enterCodeType, enterCodeType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(enterCodeType);

  @JsonKey(ignore: true)
  @override
  $NavigateToEnterPinCodeCopyWith<NavigateToEnterPinCode> get copyWith =>
      _$NavigateToEnterPinCodeCopyWithImpl<NavigateToEnterPinCode>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
  }) {
    return navigateToEnterPinCode(navigateType, enterCodeType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    required TResult orElse(),
  }) {
    if (navigateToEnterPinCode != null) {
      return navigateToEnterPinCode(navigateType, enterCodeType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
  }) {
    return navigateToEnterPinCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    required TResult orElse(),
  }) {
    if (navigateToEnterPinCode != null) {
      return navigateToEnterPinCode(this);
    }
    return orElse();
  }
}

abstract class NavigateToEnterPinCode implements NavigateAction {
  const factory NavigateToEnterPinCode(NavigateType navigateType,
      {required EnterCodeType enterCodeType}) = _$NavigateToEnterPinCode;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  EnterCodeType get enterCodeType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToEnterPinCodeCopyWith<NavigateToEnterPinCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToConfirmPhoneCopyWith<$Res> {
  factory $NavigateToConfirmPhoneCopyWith(NavigateToConfirmPhone value,
          $Res Function(NavigateToConfirmPhone) then) =
      _$NavigateToConfirmPhoneCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType, String phoneNumber});
}

/// @nodoc
class _$NavigateToConfirmPhoneCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToConfirmPhoneCopyWith<$Res> {
  _$NavigateToConfirmPhoneCopyWithImpl(NavigateToConfirmPhone _value,
      $Res Function(NavigateToConfirmPhone) _then)
      : super(_value, (v) => _then(v as NavigateToConfirmPhone));

  @override
  NavigateToConfirmPhone get _value => super._value as NavigateToConfirmPhone;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(NavigateToConfirmPhone(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NavigateToConfirmPhone implements NavigateToConfirmPhone {
  const _$NavigateToConfirmPhone(this.navigateType,
      {required this.phoneNumber});

  @override
  final NavigateType navigateType;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'NavigateAction.navigateToConfirmPhone(navigateType: $navigateType, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToConfirmPhone &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigateType) ^
      const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  $NavigateToConfirmPhoneCopyWith<NavigateToConfirmPhone> get copyWith =>
      _$NavigateToConfirmPhoneCopyWithImpl<NavigateToConfirmPhone>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
  }) {
    return navigateToConfirmPhone(navigateType, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    required TResult orElse(),
  }) {
    if (navigateToConfirmPhone != null) {
      return navigateToConfirmPhone(navigateType, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
  }) {
    return navigateToConfirmPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    required TResult orElse(),
  }) {
    if (navigateToConfirmPhone != null) {
      return navigateToConfirmPhone(this);
    }
    return orElse();
  }
}

abstract class NavigateToConfirmPhone implements NavigateAction {
  const factory NavigateToConfirmPhone(NavigateType navigateType,
      {required String phoneNumber}) = _$NavigateToConfirmPhone;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToConfirmPhoneCopyWith<NavigateToConfirmPhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateToNavigationCopyWith<$Res> {
  factory $NavigateToNavigationCopyWith(NavigateToNavigation value,
          $Res Function(NavigateToNavigation) then) =
      _$NavigateToNavigationCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType});
}

/// @nodoc
class _$NavigateToNavigationCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateToNavigationCopyWith<$Res> {
  _$NavigateToNavigationCopyWithImpl(
      NavigateToNavigation _value, $Res Function(NavigateToNavigation) _then)
      : super(_value, (v) => _then(v as NavigateToNavigation));

  @override
  NavigateToNavigation get _value => super._value as NavigateToNavigation;

  @override
  $Res call({
    Object? navigateType = freezed,
  }) {
    return _then(NavigateToNavigation(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
    ));
  }
}

/// @nodoc

class _$NavigateToNavigation implements NavigateToNavigation {
  const _$NavigateToNavigation(this.navigateType);

  @override
  final NavigateType navigateType;

  @override
  String toString() {
    return 'NavigateAction.navigateToNavigation(navigateType: $navigateType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToNavigation &&
            (identical(other.navigateType, navigateType) ||
                const DeepCollectionEquality()
                    .equals(other.navigateType, navigateType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(navigateType);

  @JsonKey(ignore: true)
  @override
  $NavigateToNavigationCopyWith<NavigateToNavigation> get copyWith =>
      _$NavigateToNavigationCopyWithImpl<NavigateToNavigation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic result) navigateBack,
    required TResult Function(NavigateType navigateType)
        navigateToEnterPhoneNumber,
    required TResult Function(
            NavigateType navigateType, EnterCodeType enterCodeType)
        navigateToEnterPinCode,
    required TResult Function(NavigateType navigateType, String phoneNumber)
        navigateToConfirmPhone,
    required TResult Function(NavigateType navigateType) navigateToNavigation,
  }) {
    return navigateToNavigation(navigateType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic result)? navigateBack,
    TResult Function(NavigateType navigateType)? navigateToEnterPhoneNumber,
    TResult Function(NavigateType navigateType, EnterCodeType enterCodeType)?
        navigateToEnterPinCode,
    TResult Function(NavigateType navigateType, String phoneNumber)?
        navigateToConfirmPhone,
    TResult Function(NavigateType navigateType)? navigateToNavigation,
    required TResult orElse(),
  }) {
    if (navigateToNavigation != null) {
      return navigateToNavigation(navigateType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToEnterPhoneNumber value)
        navigateToEnterPhoneNumber,
    required TResult Function(NavigateToEnterPinCode value)
        navigateToEnterPinCode,
    required TResult Function(NavigateToConfirmPhone value)
        navigateToConfirmPhone,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
  }) {
    return navigateToNavigation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToEnterPhoneNumber value)?
        navigateToEnterPhoneNumber,
    TResult Function(NavigateToEnterPinCode value)? navigateToEnterPinCode,
    TResult Function(NavigateToConfirmPhone value)? navigateToConfirmPhone,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    required TResult orElse(),
  }) {
    if (navigateToNavigation != null) {
      return navigateToNavigation(this);
    }
    return orElse();
  }
}

abstract class NavigateToNavigation implements NavigateAction {
  const factory NavigateToNavigation(NavigateType navigateType) =
      _$NavigateToNavigation;

  NavigateType get navigateType => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigateToNavigationCopyWith<NavigateToNavigation> get copyWith =>
      throw _privateConstructorUsedError;
}

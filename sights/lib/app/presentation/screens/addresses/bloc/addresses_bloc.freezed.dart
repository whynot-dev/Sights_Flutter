// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'addresses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddressesStateTearOff {
  const _$AddressesStateTearOff();

  _AddressesState call(
      {BlocAction? action, List<AddressItemEntity> addresses = const []}) {
    return _AddressesState(
      action: action,
      addresses: addresses,
    );
  }
}

/// @nodoc
const $AddressesState = _$AddressesStateTearOff();

/// @nodoc
mixin _$AddressesState {
  BlocAction? get action => throw _privateConstructorUsedError;
  List<AddressItemEntity> get addresses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressesStateCopyWith<AddressesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressesStateCopyWith<$Res> {
  factory $AddressesStateCopyWith(
          AddressesState value, $Res Function(AddressesState) then) =
      _$AddressesStateCopyWithImpl<$Res>;
  $Res call({BlocAction? action, List<AddressItemEntity> addresses});
}

/// @nodoc
class _$AddressesStateCopyWithImpl<$Res>
    implements $AddressesStateCopyWith<$Res> {
  _$AddressesStateCopyWithImpl(this._value, this._then);

  final AddressesState _value;
  // ignore: unused_field
  final $Res Function(AddressesState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? addresses = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      addresses: addresses == freezed
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressItemEntity>,
    ));
  }
}

/// @nodoc
abstract class _$AddressesStateCopyWith<$Res>
    implements $AddressesStateCopyWith<$Res> {
  factory _$AddressesStateCopyWith(
          _AddressesState value, $Res Function(_AddressesState) then) =
      __$AddressesStateCopyWithImpl<$Res>;
  @override
  $Res call({BlocAction? action, List<AddressItemEntity> addresses});
}

/// @nodoc
class __$AddressesStateCopyWithImpl<$Res>
    extends _$AddressesStateCopyWithImpl<$Res>
    implements _$AddressesStateCopyWith<$Res> {
  __$AddressesStateCopyWithImpl(
      _AddressesState _value, $Res Function(_AddressesState) _then)
      : super(_value, (v) => _then(v as _AddressesState));

  @override
  _AddressesState get _value => super._value as _AddressesState;

  @override
  $Res call({
    Object? action = freezed,
    Object? addresses = freezed,
  }) {
    return _then(_AddressesState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      addresses: addresses == freezed
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressItemEntity>,
    ));
  }
}

/// @nodoc

class _$_AddressesState implements _AddressesState {
  _$_AddressesState({this.action, this.addresses = const []});

  @override
  final BlocAction? action;
  @JsonKey(defaultValue: const [])
  @override
  final List<AddressItemEntity> addresses;

  @override
  String toString() {
    return 'AddressesState(action: $action, addresses: $addresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddressesState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.addresses, addresses) ||
                const DeepCollectionEquality()
                    .equals(other.addresses, addresses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(addresses);

  @JsonKey(ignore: true)
  @override
  _$AddressesStateCopyWith<_AddressesState> get copyWith =>
      __$AddressesStateCopyWithImpl<_AddressesState>(this, _$identity);
}

abstract class _AddressesState implements AddressesState {
  factory _AddressesState(
      {BlocAction? action,
      List<AddressItemEntity> addresses}) = _$_AddressesState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  List<AddressItemEntity> get addresses => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddressesStateCopyWith<_AddressesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddressesEventTearOff {
  const _$AddressesEventTearOff();

  Init init() {
    return const Init();
  }

  GetProfile getProfile() {
    return const GetProfile();
  }

  NewAddressClicked newAddressClicked() {
    return const NewAddressClicked();
  }

  AddressClicked addressClicked(AddressItemEntity addressItemEntity) {
    return AddressClicked(
      addressItemEntity,
    );
  }
}

/// @nodoc
const $AddressesEvent = _$AddressesEventTearOff();

/// @nodoc
mixin _$AddressesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() getProfile,
    required TResult Function() newAddressClicked,
    required TResult Function(AddressItemEntity addressItemEntity)
        addressClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? getProfile,
    TResult Function()? newAddressClicked,
    TResult Function(AddressItemEntity addressItemEntity)? addressClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(GetProfile value) getProfile,
    required TResult Function(NewAddressClicked value) newAddressClicked,
    required TResult Function(AddressClicked value) addressClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(GetProfile value)? getProfile,
    TResult Function(NewAddressClicked value)? newAddressClicked,
    TResult Function(AddressClicked value)? addressClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressesEventCopyWith<$Res> {
  factory $AddressesEventCopyWith(
          AddressesEvent value, $Res Function(AddressesEvent) then) =
      _$AddressesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddressesEventCopyWithImpl<$Res>
    implements $AddressesEventCopyWith<$Res> {
  _$AddressesEventCopyWithImpl(this._value, this._then);

  final AddressesEvent _value;
  // ignore: unused_field
  final $Res Function(AddressesEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$AddressesEventCopyWithImpl<$Res>
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
    return 'AddressesEvent.init()';
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
    required TResult Function() getProfile,
    required TResult Function() newAddressClicked,
    required TResult Function(AddressItemEntity addressItemEntity)
        addressClicked,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? getProfile,
    TResult Function()? newAddressClicked,
    TResult Function(AddressItemEntity addressItemEntity)? addressClicked,
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
    required TResult Function(GetProfile value) getProfile,
    required TResult Function(NewAddressClicked value) newAddressClicked,
    required TResult Function(AddressClicked value) addressClicked,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(GetProfile value)? getProfile,
    TResult Function(NewAddressClicked value)? newAddressClicked,
    TResult Function(AddressClicked value)? addressClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements AddressesEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class $GetProfileCopyWith<$Res> {
  factory $GetProfileCopyWith(
          GetProfile value, $Res Function(GetProfile) then) =
      _$GetProfileCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProfileCopyWithImpl<$Res> extends _$AddressesEventCopyWithImpl<$Res>
    implements $GetProfileCopyWith<$Res> {
  _$GetProfileCopyWithImpl(GetProfile _value, $Res Function(GetProfile) _then)
      : super(_value, (v) => _then(v as GetProfile));

  @override
  GetProfile get _value => super._value as GetProfile;
}

/// @nodoc

class _$GetProfile implements GetProfile {
  const _$GetProfile();

  @override
  String toString() {
    return 'AddressesEvent.getProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() getProfile,
    required TResult Function() newAddressClicked,
    required TResult Function(AddressItemEntity addressItemEntity)
        addressClicked,
  }) {
    return getProfile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? getProfile,
    TResult Function()? newAddressClicked,
    TResult Function(AddressItemEntity addressItemEntity)? addressClicked,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(GetProfile value) getProfile,
    required TResult Function(NewAddressClicked value) newAddressClicked,
    required TResult Function(AddressClicked value) addressClicked,
  }) {
    return getProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(GetProfile value)? getProfile,
    TResult Function(NewAddressClicked value)? newAddressClicked,
    TResult Function(AddressClicked value)? addressClicked,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(this);
    }
    return orElse();
  }
}

abstract class GetProfile implements AddressesEvent {
  const factory GetProfile() = _$GetProfile;
}

/// @nodoc
abstract class $NewAddressClickedCopyWith<$Res> {
  factory $NewAddressClickedCopyWith(
          NewAddressClicked value, $Res Function(NewAddressClicked) then) =
      _$NewAddressClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewAddressClickedCopyWithImpl<$Res>
    extends _$AddressesEventCopyWithImpl<$Res>
    implements $NewAddressClickedCopyWith<$Res> {
  _$NewAddressClickedCopyWithImpl(
      NewAddressClicked _value, $Res Function(NewAddressClicked) _then)
      : super(_value, (v) => _then(v as NewAddressClicked));

  @override
  NewAddressClicked get _value => super._value as NewAddressClicked;
}

/// @nodoc

class _$NewAddressClicked implements NewAddressClicked {
  const _$NewAddressClicked();

  @override
  String toString() {
    return 'AddressesEvent.newAddressClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NewAddressClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() getProfile,
    required TResult Function() newAddressClicked,
    required TResult Function(AddressItemEntity addressItemEntity)
        addressClicked,
  }) {
    return newAddressClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? getProfile,
    TResult Function()? newAddressClicked,
    TResult Function(AddressItemEntity addressItemEntity)? addressClicked,
    required TResult orElse(),
  }) {
    if (newAddressClicked != null) {
      return newAddressClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(GetProfile value) getProfile,
    required TResult Function(NewAddressClicked value) newAddressClicked,
    required TResult Function(AddressClicked value) addressClicked,
  }) {
    return newAddressClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(GetProfile value)? getProfile,
    TResult Function(NewAddressClicked value)? newAddressClicked,
    TResult Function(AddressClicked value)? addressClicked,
    required TResult orElse(),
  }) {
    if (newAddressClicked != null) {
      return newAddressClicked(this);
    }
    return orElse();
  }
}

abstract class NewAddressClicked implements AddressesEvent {
  const factory NewAddressClicked() = _$NewAddressClicked;
}

/// @nodoc
abstract class $AddressClickedCopyWith<$Res> {
  factory $AddressClickedCopyWith(
          AddressClicked value, $Res Function(AddressClicked) then) =
      _$AddressClickedCopyWithImpl<$Res>;
  $Res call({AddressItemEntity addressItemEntity});

  $AddressItemEntityCopyWith<$Res> get addressItemEntity;
}

/// @nodoc
class _$AddressClickedCopyWithImpl<$Res>
    extends _$AddressesEventCopyWithImpl<$Res>
    implements $AddressClickedCopyWith<$Res> {
  _$AddressClickedCopyWithImpl(
      AddressClicked _value, $Res Function(AddressClicked) _then)
      : super(_value, (v) => _then(v as AddressClicked));

  @override
  AddressClicked get _value => super._value as AddressClicked;

  @override
  $Res call({
    Object? addressItemEntity = freezed,
  }) {
    return _then(AddressClicked(
      addressItemEntity == freezed
          ? _value.addressItemEntity
          : addressItemEntity // ignore: cast_nullable_to_non_nullable
              as AddressItemEntity,
    ));
  }

  @override
  $AddressItemEntityCopyWith<$Res> get addressItemEntity {
    return $AddressItemEntityCopyWith<$Res>(_value.addressItemEntity, (value) {
      return _then(_value.copyWith(addressItemEntity: value));
    });
  }
}

/// @nodoc

class _$AddressClicked implements AddressClicked {
  const _$AddressClicked(this.addressItemEntity);

  @override
  final AddressItemEntity addressItemEntity;

  @override
  String toString() {
    return 'AddressesEvent.addressClicked(addressItemEntity: $addressItemEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressClicked &&
            (identical(other.addressItemEntity, addressItemEntity) ||
                const DeepCollectionEquality()
                    .equals(other.addressItemEntity, addressItemEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addressItemEntity);

  @JsonKey(ignore: true)
  @override
  $AddressClickedCopyWith<AddressClicked> get copyWith =>
      _$AddressClickedCopyWithImpl<AddressClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() getProfile,
    required TResult Function() newAddressClicked,
    required TResult Function(AddressItemEntity addressItemEntity)
        addressClicked,
  }) {
    return addressClicked(addressItemEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? getProfile,
    TResult Function()? newAddressClicked,
    TResult Function(AddressItemEntity addressItemEntity)? addressClicked,
    required TResult orElse(),
  }) {
    if (addressClicked != null) {
      return addressClicked(addressItemEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(GetProfile value) getProfile,
    required TResult Function(NewAddressClicked value) newAddressClicked,
    required TResult Function(AddressClicked value) addressClicked,
  }) {
    return addressClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(GetProfile value)? getProfile,
    TResult Function(NewAddressClicked value)? newAddressClicked,
    TResult Function(AddressClicked value)? addressClicked,
    required TResult orElse(),
  }) {
    if (addressClicked != null) {
      return addressClicked(this);
    }
    return orElse();
  }
}

abstract class AddressClicked implements AddressesEvent {
  const factory AddressClicked(AddressItemEntity addressItemEntity) =
      _$AddressClicked;

  AddressItemEntity get addressItemEntity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressClickedCopyWith<AddressClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

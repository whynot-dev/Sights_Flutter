// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'edit_address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditAddressStateTearOff {
  const _$EditAddressStateTearOff();

  _EditAddressState call(
      {BlocAction? action,
      required String address,
      String? apartment,
      String? entrance,
      String? floor,
      String? comment}) {
    return _EditAddressState(
      action: action,
      address: address,
      apartment: apartment,
      entrance: entrance,
      floor: floor,
      comment: comment,
    );
  }
}

/// @nodoc
const $EditAddressState = _$EditAddressStateTearOff();

/// @nodoc
mixin _$EditAddressState {
  BlocAction? get action => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String? get apartment => throw _privateConstructorUsedError;
  String? get entrance => throw _privateConstructorUsedError;
  String? get floor => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditAddressStateCopyWith<EditAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditAddressStateCopyWith<$Res> {
  factory $EditAddressStateCopyWith(
          EditAddressState value, $Res Function(EditAddressState) then) =
      _$EditAddressStateCopyWithImpl<$Res>;
  $Res call(
      {BlocAction? action,
      String address,
      String? apartment,
      String? entrance,
      String? floor,
      String? comment});
}

/// @nodoc
class _$EditAddressStateCopyWithImpl<$Res>
    implements $EditAddressStateCopyWith<$Res> {
  _$EditAddressStateCopyWithImpl(this._value, this._then);

  final EditAddressState _value;
  // ignore: unused_field
  final $Res Function(EditAddressState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? address = freezed,
    Object? apartment = freezed,
    Object? entrance = freezed,
    Object? floor = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String?,
      entrance: entrance == freezed
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EditAddressStateCopyWith<$Res>
    implements $EditAddressStateCopyWith<$Res> {
  factory _$EditAddressStateCopyWith(
          _EditAddressState value, $Res Function(_EditAddressState) then) =
      __$EditAddressStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocAction? action,
      String address,
      String? apartment,
      String? entrance,
      String? floor,
      String? comment});
}

/// @nodoc
class __$EditAddressStateCopyWithImpl<$Res>
    extends _$EditAddressStateCopyWithImpl<$Res>
    implements _$EditAddressStateCopyWith<$Res> {
  __$EditAddressStateCopyWithImpl(
      _EditAddressState _value, $Res Function(_EditAddressState) _then)
      : super(_value, (v) => _then(v as _EditAddressState));

  @override
  _EditAddressState get _value => super._value as _EditAddressState;

  @override
  $Res call({
    Object? action = freezed,
    Object? address = freezed,
    Object? apartment = freezed,
    Object? entrance = freezed,
    Object? floor = freezed,
    Object? comment = freezed,
  }) {
    return _then(_EditAddressState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String?,
      entrance: entrance == freezed
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_EditAddressState implements _EditAddressState {
  _$_EditAddressState(
      {this.action,
      required this.address,
      this.apartment,
      this.entrance,
      this.floor,
      this.comment});

  @override
  final BlocAction? action;
  @override
  final String address;
  @override
  final String? apartment;
  @override
  final String? entrance;
  @override
  final String? floor;
  @override
  final String? comment;

  @override
  String toString() {
    return 'EditAddressState(action: $action, address: $address, apartment: $apartment, entrance: $entrance, floor: $floor, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditAddressState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality()
                    .equals(other.apartment, apartment)) &&
            (identical(other.entrance, entrance) ||
                const DeepCollectionEquality()
                    .equals(other.entrance, entrance)) &&
            (identical(other.floor, floor) ||
                const DeepCollectionEquality().equals(other.floor, floor)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(entrance) ^
      const DeepCollectionEquality().hash(floor) ^
      const DeepCollectionEquality().hash(comment);

  @JsonKey(ignore: true)
  @override
  _$EditAddressStateCopyWith<_EditAddressState> get copyWith =>
      __$EditAddressStateCopyWithImpl<_EditAddressState>(this, _$identity);
}

abstract class _EditAddressState implements EditAddressState {
  factory _EditAddressState(
      {BlocAction? action,
      required String address,
      String? apartment,
      String? entrance,
      String? floor,
      String? comment}) = _$_EditAddressState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String? get apartment => throw _privateConstructorUsedError;
  @override
  String? get entrance => throw _privateConstructorUsedError;
  @override
  String? get floor => throw _privateConstructorUsedError;
  @override
  String? get comment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditAddressStateCopyWith<_EditAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EditAddressEventTearOff {
  const _$EditAddressEventTearOff();

  Init init() {
    return const Init();
  }

  ApartmentChanged apartmentChanged(String text) {
    return ApartmentChanged(
      text,
    );
  }

  EntranceChanged entranceChanged(String text) {
    return EntranceChanged(
      text,
    );
  }

  FloorChanged floorChanged(String text) {
    return FloorChanged(
      text,
    );
  }

  CommentChanged commentChanged(String text) {
    return CommentChanged(
      text,
    );
  }

  SaveClicked saveClicked() {
    return const SaveClicked();
  }

  DeleteClicked deleteClicked() {
    return const DeleteClicked();
  }
}

/// @nodoc
const $EditAddressEvent = _$EditAddressEventTearOff();

/// @nodoc
mixin _$EditAddressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String text) apartmentChanged,
    required TResult Function(String text) entranceChanged,
    required TResult Function(String text) floorChanged,
    required TResult Function(String text) commentChanged,
    required TResult Function() saveClicked,
    required TResult Function() deleteClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String text)? apartmentChanged,
    TResult Function(String text)? entranceChanged,
    TResult Function(String text)? floorChanged,
    TResult Function(String text)? commentChanged,
    TResult Function()? saveClicked,
    TResult Function()? deleteClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ApartmentChanged value) apartmentChanged,
    required TResult Function(EntranceChanged value) entranceChanged,
    required TResult Function(FloorChanged value) floorChanged,
    required TResult Function(CommentChanged value) commentChanged,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(DeleteClicked value) deleteClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ApartmentChanged value)? apartmentChanged,
    TResult Function(EntranceChanged value)? entranceChanged,
    TResult Function(FloorChanged value)? floorChanged,
    TResult Function(CommentChanged value)? commentChanged,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(DeleteClicked value)? deleteClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditAddressEventCopyWith<$Res> {
  factory $EditAddressEventCopyWith(
          EditAddressEvent value, $Res Function(EditAddressEvent) then) =
      _$EditAddressEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditAddressEventCopyWithImpl<$Res>
    implements $EditAddressEventCopyWith<$Res> {
  _$EditAddressEventCopyWithImpl(this._value, this._then);

  final EditAddressEvent _value;
  // ignore: unused_field
  final $Res Function(EditAddressEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$EditAddressEventCopyWithImpl<$Res>
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
    return 'EditAddressEvent.init()';
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
    required TResult Function(String text) apartmentChanged,
    required TResult Function(String text) entranceChanged,
    required TResult Function(String text) floorChanged,
    required TResult Function(String text) commentChanged,
    required TResult Function() saveClicked,
    required TResult Function() deleteClicked,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String text)? apartmentChanged,
    TResult Function(String text)? entranceChanged,
    TResult Function(String text)? floorChanged,
    TResult Function(String text)? commentChanged,
    TResult Function()? saveClicked,
    TResult Function()? deleteClicked,
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
    required TResult Function(ApartmentChanged value) apartmentChanged,
    required TResult Function(EntranceChanged value) entranceChanged,
    required TResult Function(FloorChanged value) floorChanged,
    required TResult Function(CommentChanged value) commentChanged,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(DeleteClicked value) deleteClicked,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ApartmentChanged value)? apartmentChanged,
    TResult Function(EntranceChanged value)? entranceChanged,
    TResult Function(FloorChanged value)? floorChanged,
    TResult Function(CommentChanged value)? commentChanged,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(DeleteClicked value)? deleteClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements EditAddressEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class $ApartmentChangedCopyWith<$Res> {
  factory $ApartmentChangedCopyWith(
          ApartmentChanged value, $Res Function(ApartmentChanged) then) =
      _$ApartmentChangedCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$ApartmentChangedCopyWithImpl<$Res>
    extends _$EditAddressEventCopyWithImpl<$Res>
    implements $ApartmentChangedCopyWith<$Res> {
  _$ApartmentChangedCopyWithImpl(
      ApartmentChanged _value, $Res Function(ApartmentChanged) _then)
      : super(_value, (v) => _then(v as ApartmentChanged));

  @override
  ApartmentChanged get _value => super._value as ApartmentChanged;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(ApartmentChanged(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApartmentChanged implements ApartmentChanged {
  const _$ApartmentChanged(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'EditAddressEvent.apartmentChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApartmentChanged &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  $ApartmentChangedCopyWith<ApartmentChanged> get copyWith =>
      _$ApartmentChangedCopyWithImpl<ApartmentChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String text) apartmentChanged,
    required TResult Function(String text) entranceChanged,
    required TResult Function(String text) floorChanged,
    required TResult Function(String text) commentChanged,
    required TResult Function() saveClicked,
    required TResult Function() deleteClicked,
  }) {
    return apartmentChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String text)? apartmentChanged,
    TResult Function(String text)? entranceChanged,
    TResult Function(String text)? floorChanged,
    TResult Function(String text)? commentChanged,
    TResult Function()? saveClicked,
    TResult Function()? deleteClicked,
    required TResult orElse(),
  }) {
    if (apartmentChanged != null) {
      return apartmentChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ApartmentChanged value) apartmentChanged,
    required TResult Function(EntranceChanged value) entranceChanged,
    required TResult Function(FloorChanged value) floorChanged,
    required TResult Function(CommentChanged value) commentChanged,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(DeleteClicked value) deleteClicked,
  }) {
    return apartmentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ApartmentChanged value)? apartmentChanged,
    TResult Function(EntranceChanged value)? entranceChanged,
    TResult Function(FloorChanged value)? floorChanged,
    TResult Function(CommentChanged value)? commentChanged,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(DeleteClicked value)? deleteClicked,
    required TResult orElse(),
  }) {
    if (apartmentChanged != null) {
      return apartmentChanged(this);
    }
    return orElse();
  }
}

abstract class ApartmentChanged implements EditAddressEvent {
  const factory ApartmentChanged(String text) = _$ApartmentChanged;

  String get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApartmentChangedCopyWith<ApartmentChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntranceChangedCopyWith<$Res> {
  factory $EntranceChangedCopyWith(
          EntranceChanged value, $Res Function(EntranceChanged) then) =
      _$EntranceChangedCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$EntranceChangedCopyWithImpl<$Res>
    extends _$EditAddressEventCopyWithImpl<$Res>
    implements $EntranceChangedCopyWith<$Res> {
  _$EntranceChangedCopyWithImpl(
      EntranceChanged _value, $Res Function(EntranceChanged) _then)
      : super(_value, (v) => _then(v as EntranceChanged));

  @override
  EntranceChanged get _value => super._value as EntranceChanged;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(EntranceChanged(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EntranceChanged implements EntranceChanged {
  const _$EntranceChanged(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'EditAddressEvent.entranceChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EntranceChanged &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  $EntranceChangedCopyWith<EntranceChanged> get copyWith =>
      _$EntranceChangedCopyWithImpl<EntranceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String text) apartmentChanged,
    required TResult Function(String text) entranceChanged,
    required TResult Function(String text) floorChanged,
    required TResult Function(String text) commentChanged,
    required TResult Function() saveClicked,
    required TResult Function() deleteClicked,
  }) {
    return entranceChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String text)? apartmentChanged,
    TResult Function(String text)? entranceChanged,
    TResult Function(String text)? floorChanged,
    TResult Function(String text)? commentChanged,
    TResult Function()? saveClicked,
    TResult Function()? deleteClicked,
    required TResult orElse(),
  }) {
    if (entranceChanged != null) {
      return entranceChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ApartmentChanged value) apartmentChanged,
    required TResult Function(EntranceChanged value) entranceChanged,
    required TResult Function(FloorChanged value) floorChanged,
    required TResult Function(CommentChanged value) commentChanged,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(DeleteClicked value) deleteClicked,
  }) {
    return entranceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ApartmentChanged value)? apartmentChanged,
    TResult Function(EntranceChanged value)? entranceChanged,
    TResult Function(FloorChanged value)? floorChanged,
    TResult Function(CommentChanged value)? commentChanged,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(DeleteClicked value)? deleteClicked,
    required TResult orElse(),
  }) {
    if (entranceChanged != null) {
      return entranceChanged(this);
    }
    return orElse();
  }
}

abstract class EntranceChanged implements EditAddressEvent {
  const factory EntranceChanged(String text) = _$EntranceChanged;

  String get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntranceChangedCopyWith<EntranceChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloorChangedCopyWith<$Res> {
  factory $FloorChangedCopyWith(
          FloorChanged value, $Res Function(FloorChanged) then) =
      _$FloorChangedCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$FloorChangedCopyWithImpl<$Res>
    extends _$EditAddressEventCopyWithImpl<$Res>
    implements $FloorChangedCopyWith<$Res> {
  _$FloorChangedCopyWithImpl(
      FloorChanged _value, $Res Function(FloorChanged) _then)
      : super(_value, (v) => _then(v as FloorChanged));

  @override
  FloorChanged get _value => super._value as FloorChanged;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(FloorChanged(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FloorChanged implements FloorChanged {
  const _$FloorChanged(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'EditAddressEvent.floorChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FloorChanged &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  $FloorChangedCopyWith<FloorChanged> get copyWith =>
      _$FloorChangedCopyWithImpl<FloorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String text) apartmentChanged,
    required TResult Function(String text) entranceChanged,
    required TResult Function(String text) floorChanged,
    required TResult Function(String text) commentChanged,
    required TResult Function() saveClicked,
    required TResult Function() deleteClicked,
  }) {
    return floorChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String text)? apartmentChanged,
    TResult Function(String text)? entranceChanged,
    TResult Function(String text)? floorChanged,
    TResult Function(String text)? commentChanged,
    TResult Function()? saveClicked,
    TResult Function()? deleteClicked,
    required TResult orElse(),
  }) {
    if (floorChanged != null) {
      return floorChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ApartmentChanged value) apartmentChanged,
    required TResult Function(EntranceChanged value) entranceChanged,
    required TResult Function(FloorChanged value) floorChanged,
    required TResult Function(CommentChanged value) commentChanged,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(DeleteClicked value) deleteClicked,
  }) {
    return floorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ApartmentChanged value)? apartmentChanged,
    TResult Function(EntranceChanged value)? entranceChanged,
    TResult Function(FloorChanged value)? floorChanged,
    TResult Function(CommentChanged value)? commentChanged,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(DeleteClicked value)? deleteClicked,
    required TResult orElse(),
  }) {
    if (floorChanged != null) {
      return floorChanged(this);
    }
    return orElse();
  }
}

abstract class FloorChanged implements EditAddressEvent {
  const factory FloorChanged(String text) = _$FloorChanged;

  String get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FloorChangedCopyWith<FloorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentChangedCopyWith<$Res> {
  factory $CommentChangedCopyWith(
          CommentChanged value, $Res Function(CommentChanged) then) =
      _$CommentChangedCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$CommentChangedCopyWithImpl<$Res>
    extends _$EditAddressEventCopyWithImpl<$Res>
    implements $CommentChangedCopyWith<$Res> {
  _$CommentChangedCopyWithImpl(
      CommentChanged _value, $Res Function(CommentChanged) _then)
      : super(_value, (v) => _then(v as CommentChanged));

  @override
  CommentChanged get _value => super._value as CommentChanged;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(CommentChanged(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommentChanged implements CommentChanged {
  const _$CommentChanged(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'EditAddressEvent.commentChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommentChanged &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  $CommentChangedCopyWith<CommentChanged> get copyWith =>
      _$CommentChangedCopyWithImpl<CommentChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String text) apartmentChanged,
    required TResult Function(String text) entranceChanged,
    required TResult Function(String text) floorChanged,
    required TResult Function(String text) commentChanged,
    required TResult Function() saveClicked,
    required TResult Function() deleteClicked,
  }) {
    return commentChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String text)? apartmentChanged,
    TResult Function(String text)? entranceChanged,
    TResult Function(String text)? floorChanged,
    TResult Function(String text)? commentChanged,
    TResult Function()? saveClicked,
    TResult Function()? deleteClicked,
    required TResult orElse(),
  }) {
    if (commentChanged != null) {
      return commentChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ApartmentChanged value) apartmentChanged,
    required TResult Function(EntranceChanged value) entranceChanged,
    required TResult Function(FloorChanged value) floorChanged,
    required TResult Function(CommentChanged value) commentChanged,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(DeleteClicked value) deleteClicked,
  }) {
    return commentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ApartmentChanged value)? apartmentChanged,
    TResult Function(EntranceChanged value)? entranceChanged,
    TResult Function(FloorChanged value)? floorChanged,
    TResult Function(CommentChanged value)? commentChanged,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(DeleteClicked value)? deleteClicked,
    required TResult orElse(),
  }) {
    if (commentChanged != null) {
      return commentChanged(this);
    }
    return orElse();
  }
}

abstract class CommentChanged implements EditAddressEvent {
  const factory CommentChanged(String text) = _$CommentChanged;

  String get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentChangedCopyWith<CommentChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveClickedCopyWith<$Res> {
  factory $SaveClickedCopyWith(
          SaveClicked value, $Res Function(SaveClicked) then) =
      _$SaveClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveClickedCopyWithImpl<$Res>
    extends _$EditAddressEventCopyWithImpl<$Res>
    implements $SaveClickedCopyWith<$Res> {
  _$SaveClickedCopyWithImpl(
      SaveClicked _value, $Res Function(SaveClicked) _then)
      : super(_value, (v) => _then(v as SaveClicked));

  @override
  SaveClicked get _value => super._value as SaveClicked;
}

/// @nodoc

class _$SaveClicked implements SaveClicked {
  const _$SaveClicked();

  @override
  String toString() {
    return 'EditAddressEvent.saveClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SaveClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String text) apartmentChanged,
    required TResult Function(String text) entranceChanged,
    required TResult Function(String text) floorChanged,
    required TResult Function(String text) commentChanged,
    required TResult Function() saveClicked,
    required TResult Function() deleteClicked,
  }) {
    return saveClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String text)? apartmentChanged,
    TResult Function(String text)? entranceChanged,
    TResult Function(String text)? floorChanged,
    TResult Function(String text)? commentChanged,
    TResult Function()? saveClicked,
    TResult Function()? deleteClicked,
    required TResult orElse(),
  }) {
    if (saveClicked != null) {
      return saveClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ApartmentChanged value) apartmentChanged,
    required TResult Function(EntranceChanged value) entranceChanged,
    required TResult Function(FloorChanged value) floorChanged,
    required TResult Function(CommentChanged value) commentChanged,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(DeleteClicked value) deleteClicked,
  }) {
    return saveClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ApartmentChanged value)? apartmentChanged,
    TResult Function(EntranceChanged value)? entranceChanged,
    TResult Function(FloorChanged value)? floorChanged,
    TResult Function(CommentChanged value)? commentChanged,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(DeleteClicked value)? deleteClicked,
    required TResult orElse(),
  }) {
    if (saveClicked != null) {
      return saveClicked(this);
    }
    return orElse();
  }
}

abstract class SaveClicked implements EditAddressEvent {
  const factory SaveClicked() = _$SaveClicked;
}

/// @nodoc
abstract class $DeleteClickedCopyWith<$Res> {
  factory $DeleteClickedCopyWith(
          DeleteClicked value, $Res Function(DeleteClicked) then) =
      _$DeleteClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteClickedCopyWithImpl<$Res>
    extends _$EditAddressEventCopyWithImpl<$Res>
    implements $DeleteClickedCopyWith<$Res> {
  _$DeleteClickedCopyWithImpl(
      DeleteClicked _value, $Res Function(DeleteClicked) _then)
      : super(_value, (v) => _then(v as DeleteClicked));

  @override
  DeleteClicked get _value => super._value as DeleteClicked;
}

/// @nodoc

class _$DeleteClicked implements DeleteClicked {
  const _$DeleteClicked();

  @override
  String toString() {
    return 'EditAddressEvent.deleteClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String text) apartmentChanged,
    required TResult Function(String text) entranceChanged,
    required TResult Function(String text) floorChanged,
    required TResult Function(String text) commentChanged,
    required TResult Function() saveClicked,
    required TResult Function() deleteClicked,
  }) {
    return deleteClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String text)? apartmentChanged,
    TResult Function(String text)? entranceChanged,
    TResult Function(String text)? floorChanged,
    TResult Function(String text)? commentChanged,
    TResult Function()? saveClicked,
    TResult Function()? deleteClicked,
    required TResult orElse(),
  }) {
    if (deleteClicked != null) {
      return deleteClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ApartmentChanged value) apartmentChanged,
    required TResult Function(EntranceChanged value) entranceChanged,
    required TResult Function(FloorChanged value) floorChanged,
    required TResult Function(CommentChanged value) commentChanged,
    required TResult Function(SaveClicked value) saveClicked,
    required TResult Function(DeleteClicked value) deleteClicked,
  }) {
    return deleteClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ApartmentChanged value)? apartmentChanged,
    TResult Function(EntranceChanged value)? entranceChanged,
    TResult Function(FloorChanged value)? floorChanged,
    TResult Function(CommentChanged value)? commentChanged,
    TResult Function(SaveClicked value)? saveClicked,
    TResult Function(DeleteClicked value)? deleteClicked,
    required TResult orElse(),
  }) {
    if (deleteClicked != null) {
      return deleteClicked(this);
    }
    return orElse();
  }
}

abstract class DeleteClicked implements EditAddressEvent {
  const factory DeleteClicked() = _$DeleteClicked;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchAddressStateTearOff {
  const _$SearchAddressStateTearOff();

  _SearchAddressState call(
      {BlocAction? action,
      String? searchText,
      List<AddressItemEntity> myAddresses = const [],
      Map<AddressItemEntity, Point?> searchAddresses = const {},
      bool needShowMyAddresses = true}) {
    return _SearchAddressState(
      action: action,
      searchText: searchText,
      myAddresses: myAddresses,
      searchAddresses: searchAddresses,
      needShowMyAddresses: needShowMyAddresses,
    );
  }
}

/// @nodoc
const $SearchAddressState = _$SearchAddressStateTearOff();

/// @nodoc
mixin _$SearchAddressState {
  BlocAction? get action => throw _privateConstructorUsedError;
  String? get searchText => throw _privateConstructorUsedError;
  List<AddressItemEntity> get myAddresses => throw _privateConstructorUsedError;
  Map<AddressItemEntity, Point?> get searchAddresses =>
      throw _privateConstructorUsedError;
  bool get needShowMyAddresses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchAddressStateCopyWith<SearchAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAddressStateCopyWith<$Res> {
  factory $SearchAddressStateCopyWith(
          SearchAddressState value, $Res Function(SearchAddressState) then) =
      _$SearchAddressStateCopyWithImpl<$Res>;
  $Res call(
      {BlocAction? action,
      String? searchText,
      List<AddressItemEntity> myAddresses,
      Map<AddressItemEntity, Point?> searchAddresses,
      bool needShowMyAddresses});
}

/// @nodoc
class _$SearchAddressStateCopyWithImpl<$Res>
    implements $SearchAddressStateCopyWith<$Res> {
  _$SearchAddressStateCopyWithImpl(this._value, this._then);

  final SearchAddressState _value;
  // ignore: unused_field
  final $Res Function(SearchAddressState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? searchText = freezed,
    Object? myAddresses = freezed,
    Object? searchAddresses = freezed,
    Object? needShowMyAddresses = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      searchText: searchText == freezed
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      myAddresses: myAddresses == freezed
          ? _value.myAddresses
          : myAddresses // ignore: cast_nullable_to_non_nullable
              as List<AddressItemEntity>,
      searchAddresses: searchAddresses == freezed
          ? _value.searchAddresses
          : searchAddresses // ignore: cast_nullable_to_non_nullable
              as Map<AddressItemEntity, Point?>,
      needShowMyAddresses: needShowMyAddresses == freezed
          ? _value.needShowMyAddresses
          : needShowMyAddresses // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SearchAddressStateCopyWith<$Res>
    implements $SearchAddressStateCopyWith<$Res> {
  factory _$SearchAddressStateCopyWith(
          _SearchAddressState value, $Res Function(_SearchAddressState) then) =
      __$SearchAddressStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocAction? action,
      String? searchText,
      List<AddressItemEntity> myAddresses,
      Map<AddressItemEntity, Point?> searchAddresses,
      bool needShowMyAddresses});
}

/// @nodoc
class __$SearchAddressStateCopyWithImpl<$Res>
    extends _$SearchAddressStateCopyWithImpl<$Res>
    implements _$SearchAddressStateCopyWith<$Res> {
  __$SearchAddressStateCopyWithImpl(
      _SearchAddressState _value, $Res Function(_SearchAddressState) _then)
      : super(_value, (v) => _then(v as _SearchAddressState));

  @override
  _SearchAddressState get _value => super._value as _SearchAddressState;

  @override
  $Res call({
    Object? action = freezed,
    Object? searchText = freezed,
    Object? myAddresses = freezed,
    Object? searchAddresses = freezed,
    Object? needShowMyAddresses = freezed,
  }) {
    return _then(_SearchAddressState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      searchText: searchText == freezed
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      myAddresses: myAddresses == freezed
          ? _value.myAddresses
          : myAddresses // ignore: cast_nullable_to_non_nullable
              as List<AddressItemEntity>,
      searchAddresses: searchAddresses == freezed
          ? _value.searchAddresses
          : searchAddresses // ignore: cast_nullable_to_non_nullable
              as Map<AddressItemEntity, Point?>,
      needShowMyAddresses: needShowMyAddresses == freezed
          ? _value.needShowMyAddresses
          : needShowMyAddresses // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchAddressState implements _SearchAddressState {
  _$_SearchAddressState(
      {this.action,
      this.searchText,
      this.myAddresses = const [],
      this.searchAddresses = const {},
      this.needShowMyAddresses = true});

  @override
  final BlocAction? action;
  @override
  final String? searchText;
  @JsonKey(defaultValue: const [])
  @override
  final List<AddressItemEntity> myAddresses;
  @JsonKey(defaultValue: const {})
  @override
  final Map<AddressItemEntity, Point?> searchAddresses;
  @JsonKey(defaultValue: true)
  @override
  final bool needShowMyAddresses;

  @override
  String toString() {
    return 'SearchAddressState(action: $action, searchText: $searchText, myAddresses: $myAddresses, searchAddresses: $searchAddresses, needShowMyAddresses: $needShowMyAddresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchAddressState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.searchText, searchText) ||
                const DeepCollectionEquality()
                    .equals(other.searchText, searchText)) &&
            (identical(other.myAddresses, myAddresses) ||
                const DeepCollectionEquality()
                    .equals(other.myAddresses, myAddresses)) &&
            (identical(other.searchAddresses, searchAddresses) ||
                const DeepCollectionEquality()
                    .equals(other.searchAddresses, searchAddresses)) &&
            (identical(other.needShowMyAddresses, needShowMyAddresses) ||
                const DeepCollectionEquality()
                    .equals(other.needShowMyAddresses, needShowMyAddresses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(searchText) ^
      const DeepCollectionEquality().hash(myAddresses) ^
      const DeepCollectionEquality().hash(searchAddresses) ^
      const DeepCollectionEquality().hash(needShowMyAddresses);

  @JsonKey(ignore: true)
  @override
  _$SearchAddressStateCopyWith<_SearchAddressState> get copyWith =>
      __$SearchAddressStateCopyWithImpl<_SearchAddressState>(this, _$identity);
}

abstract class _SearchAddressState implements SearchAddressState {
  factory _SearchAddressState(
      {BlocAction? action,
      String? searchText,
      List<AddressItemEntity> myAddresses,
      Map<AddressItemEntity, Point?> searchAddresses,
      bool needShowMyAddresses}) = _$_SearchAddressState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  String? get searchText => throw _privateConstructorUsedError;
  @override
  List<AddressItemEntity> get myAddresses => throw _privateConstructorUsedError;
  @override
  Map<AddressItemEntity, Point?> get searchAddresses =>
      throw _privateConstructorUsedError;
  @override
  bool get needShowMyAddresses => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchAddressStateCopyWith<_SearchAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchAddressEventTearOff {
  const _$SearchAddressEventTearOff();

  Init init() {
    return const Init();
  }

  CancelClicked cancelClicked() {
    return const CancelClicked();
  }

  SearchChanged searchChanged(String text) {
    return SearchChanged(
      text,
    );
  }

  AddressClicked addressClicked(
      AddressItemEntity addressItemEntity, bool isSearchAddress) {
    return AddressClicked(
      addressItemEntity,
      isSearchAddress,
    );
  }
}

/// @nodoc
const $SearchAddressEvent = _$SearchAddressEventTearOff();

/// @nodoc
mixin _$SearchAddressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() cancelClicked,
    required TResult Function(String text) searchChanged,
    required TResult Function(
            AddressItemEntity addressItemEntity, bool isSearchAddress)
        addressClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? cancelClicked,
    TResult Function(String text)? searchChanged,
    TResult Function(AddressItemEntity addressItemEntity, bool isSearchAddress)?
        addressClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(CancelClicked value) cancelClicked,
    required TResult Function(SearchChanged value) searchChanged,
    required TResult Function(AddressClicked value) addressClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CancelClicked value)? cancelClicked,
    TResult Function(SearchChanged value)? searchChanged,
    TResult Function(AddressClicked value)? addressClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAddressEventCopyWith<$Res> {
  factory $SearchAddressEventCopyWith(
          SearchAddressEvent value, $Res Function(SearchAddressEvent) then) =
      _$SearchAddressEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchAddressEventCopyWithImpl<$Res>
    implements $SearchAddressEventCopyWith<$Res> {
  _$SearchAddressEventCopyWithImpl(this._value, this._then);

  final SearchAddressEvent _value;
  // ignore: unused_field
  final $Res Function(SearchAddressEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$SearchAddressEventCopyWithImpl<$Res>
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
    return 'SearchAddressEvent.init()';
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
    required TResult Function() cancelClicked,
    required TResult Function(String text) searchChanged,
    required TResult Function(
            AddressItemEntity addressItemEntity, bool isSearchAddress)
        addressClicked,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? cancelClicked,
    TResult Function(String text)? searchChanged,
    TResult Function(AddressItemEntity addressItemEntity, bool isSearchAddress)?
        addressClicked,
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
    required TResult Function(CancelClicked value) cancelClicked,
    required TResult Function(SearchChanged value) searchChanged,
    required TResult Function(AddressClicked value) addressClicked,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CancelClicked value)? cancelClicked,
    TResult Function(SearchChanged value)? searchChanged,
    TResult Function(AddressClicked value)? addressClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements SearchAddressEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class $CancelClickedCopyWith<$Res> {
  factory $CancelClickedCopyWith(
          CancelClicked value, $Res Function(CancelClicked) then) =
      _$CancelClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelClickedCopyWithImpl<$Res>
    extends _$SearchAddressEventCopyWithImpl<$Res>
    implements $CancelClickedCopyWith<$Res> {
  _$CancelClickedCopyWithImpl(
      CancelClicked _value, $Res Function(CancelClicked) _then)
      : super(_value, (v) => _then(v as CancelClicked));

  @override
  CancelClicked get _value => super._value as CancelClicked;
}

/// @nodoc

class _$CancelClicked implements CancelClicked {
  const _$CancelClicked();

  @override
  String toString() {
    return 'SearchAddressEvent.cancelClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() cancelClicked,
    required TResult Function(String text) searchChanged,
    required TResult Function(
            AddressItemEntity addressItemEntity, bool isSearchAddress)
        addressClicked,
  }) {
    return cancelClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? cancelClicked,
    TResult Function(String text)? searchChanged,
    TResult Function(AddressItemEntity addressItemEntity, bool isSearchAddress)?
        addressClicked,
    required TResult orElse(),
  }) {
    if (cancelClicked != null) {
      return cancelClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(CancelClicked value) cancelClicked,
    required TResult Function(SearchChanged value) searchChanged,
    required TResult Function(AddressClicked value) addressClicked,
  }) {
    return cancelClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CancelClicked value)? cancelClicked,
    TResult Function(SearchChanged value)? searchChanged,
    TResult Function(AddressClicked value)? addressClicked,
    required TResult orElse(),
  }) {
    if (cancelClicked != null) {
      return cancelClicked(this);
    }
    return orElse();
  }
}

abstract class CancelClicked implements SearchAddressEvent {
  const factory CancelClicked() = _$CancelClicked;
}

/// @nodoc
abstract class $SearchChangedCopyWith<$Res> {
  factory $SearchChangedCopyWith(
          SearchChanged value, $Res Function(SearchChanged) then) =
      _$SearchChangedCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$SearchChangedCopyWithImpl<$Res>
    extends _$SearchAddressEventCopyWithImpl<$Res>
    implements $SearchChangedCopyWith<$Res> {
  _$SearchChangedCopyWithImpl(
      SearchChanged _value, $Res Function(SearchChanged) _then)
      : super(_value, (v) => _then(v as SearchChanged));

  @override
  SearchChanged get _value => super._value as SearchChanged;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(SearchChanged(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchChanged implements SearchChanged {
  const _$SearchChanged(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'SearchAddressEvent.searchChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchChanged &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  $SearchChangedCopyWith<SearchChanged> get copyWith =>
      _$SearchChangedCopyWithImpl<SearchChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() cancelClicked,
    required TResult Function(String text) searchChanged,
    required TResult Function(
            AddressItemEntity addressItemEntity, bool isSearchAddress)
        addressClicked,
  }) {
    return searchChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? cancelClicked,
    TResult Function(String text)? searchChanged,
    TResult Function(AddressItemEntity addressItemEntity, bool isSearchAddress)?
        addressClicked,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(CancelClicked value) cancelClicked,
    required TResult Function(SearchChanged value) searchChanged,
    required TResult Function(AddressClicked value) addressClicked,
  }) {
    return searchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CancelClicked value)? cancelClicked,
    TResult Function(SearchChanged value)? searchChanged,
    TResult Function(AddressClicked value)? addressClicked,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(this);
    }
    return orElse();
  }
}

abstract class SearchChanged implements SearchAddressEvent {
  const factory SearchChanged(String text) = _$SearchChanged;

  String get text => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchChangedCopyWith<SearchChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressClickedCopyWith<$Res> {
  factory $AddressClickedCopyWith(
          AddressClicked value, $Res Function(AddressClicked) then) =
      _$AddressClickedCopyWithImpl<$Res>;
  $Res call({AddressItemEntity addressItemEntity, bool isSearchAddress});

  $AddressItemEntityCopyWith<$Res> get addressItemEntity;
}

/// @nodoc
class _$AddressClickedCopyWithImpl<$Res>
    extends _$SearchAddressEventCopyWithImpl<$Res>
    implements $AddressClickedCopyWith<$Res> {
  _$AddressClickedCopyWithImpl(
      AddressClicked _value, $Res Function(AddressClicked) _then)
      : super(_value, (v) => _then(v as AddressClicked));

  @override
  AddressClicked get _value => super._value as AddressClicked;

  @override
  $Res call({
    Object? addressItemEntity = freezed,
    Object? isSearchAddress = freezed,
  }) {
    return _then(AddressClicked(
      addressItemEntity == freezed
          ? _value.addressItemEntity
          : addressItemEntity // ignore: cast_nullable_to_non_nullable
              as AddressItemEntity,
      isSearchAddress == freezed
          ? _value.isSearchAddress
          : isSearchAddress // ignore: cast_nullable_to_non_nullable
              as bool,
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
  const _$AddressClicked(this.addressItemEntity, this.isSearchAddress);

  @override
  final AddressItemEntity addressItemEntity;
  @override
  final bool isSearchAddress;

  @override
  String toString() {
    return 'SearchAddressEvent.addressClicked(addressItemEntity: $addressItemEntity, isSearchAddress: $isSearchAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressClicked &&
            (identical(other.addressItemEntity, addressItemEntity) ||
                const DeepCollectionEquality()
                    .equals(other.addressItemEntity, addressItemEntity)) &&
            (identical(other.isSearchAddress, isSearchAddress) ||
                const DeepCollectionEquality()
                    .equals(other.isSearchAddress, isSearchAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(addressItemEntity) ^
      const DeepCollectionEquality().hash(isSearchAddress);

  @JsonKey(ignore: true)
  @override
  $AddressClickedCopyWith<AddressClicked> get copyWith =>
      _$AddressClickedCopyWithImpl<AddressClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() cancelClicked,
    required TResult Function(String text) searchChanged,
    required TResult Function(
            AddressItemEntity addressItemEntity, bool isSearchAddress)
        addressClicked,
  }) {
    return addressClicked(addressItemEntity, isSearchAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? cancelClicked,
    TResult Function(String text)? searchChanged,
    TResult Function(AddressItemEntity addressItemEntity, bool isSearchAddress)?
        addressClicked,
    required TResult orElse(),
  }) {
    if (addressClicked != null) {
      return addressClicked(addressItemEntity, isSearchAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(CancelClicked value) cancelClicked,
    required TResult Function(SearchChanged value) searchChanged,
    required TResult Function(AddressClicked value) addressClicked,
  }) {
    return addressClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CancelClicked value)? cancelClicked,
    TResult Function(SearchChanged value)? searchChanged,
    TResult Function(AddressClicked value)? addressClicked,
    required TResult orElse(),
  }) {
    if (addressClicked != null) {
      return addressClicked(this);
    }
    return orElse();
  }
}

abstract class AddressClicked implements SearchAddressEvent {
  const factory AddressClicked(
          AddressItemEntity addressItemEntity, bool isSearchAddress) =
      _$AddressClicked;

  AddressItemEntity get addressItemEntity => throw _privateConstructorUsedError;
  bool get isSearchAddress => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressClickedCopyWith<AddressClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

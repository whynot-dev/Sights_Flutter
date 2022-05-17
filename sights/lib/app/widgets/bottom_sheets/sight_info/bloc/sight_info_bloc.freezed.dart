// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sight_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SightInfoStateTearOff {
  const _$SightInfoStateTearOff();

  _SightInfoState call(
      {required Feature feature,
      Place? place,
      BlocAction? action,
      bool isLoading = false}) {
    return _SightInfoState(
      feature: feature,
      place: place,
      action: action,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $SightInfoState = _$SightInfoStateTearOff();

/// @nodoc
mixin _$SightInfoState {
  Feature get feature => throw _privateConstructorUsedError;
  Place? get place => throw _privateConstructorUsedError;
  BlocAction? get action => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SightInfoStateCopyWith<SightInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SightInfoStateCopyWith<$Res> {
  factory $SightInfoStateCopyWith(
          SightInfoState value, $Res Function(SightInfoState) then) =
      _$SightInfoStateCopyWithImpl<$Res>;
  $Res call(
      {Feature feature, Place? place, BlocAction? action, bool isLoading});
}

/// @nodoc
class _$SightInfoStateCopyWithImpl<$Res>
    implements $SightInfoStateCopyWith<$Res> {
  _$SightInfoStateCopyWithImpl(this._value, this._then);

  final SightInfoState _value;
  // ignore: unused_field
  final $Res Function(SightInfoState) _then;

  @override
  $Res call({
    Object? feature = freezed,
    Object? place = freezed,
    Object? action = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      feature: feature == freezed
          ? _value.feature
          : feature // ignore: cast_nullable_to_non_nullable
              as Feature,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SightInfoStateCopyWith<$Res>
    implements $SightInfoStateCopyWith<$Res> {
  factory _$SightInfoStateCopyWith(
          _SightInfoState value, $Res Function(_SightInfoState) then) =
      __$SightInfoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Feature feature, Place? place, BlocAction? action, bool isLoading});
}

/// @nodoc
class __$SightInfoStateCopyWithImpl<$Res>
    extends _$SightInfoStateCopyWithImpl<$Res>
    implements _$SightInfoStateCopyWith<$Res> {
  __$SightInfoStateCopyWithImpl(
      _SightInfoState _value, $Res Function(_SightInfoState) _then)
      : super(_value, (v) => _then(v as _SightInfoState));

  @override
  _SightInfoState get _value => super._value as _SightInfoState;

  @override
  $Res call({
    Object? feature = freezed,
    Object? place = freezed,
    Object? action = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_SightInfoState(
      feature: feature == freezed
          ? _value.feature
          : feature // ignore: cast_nullable_to_non_nullable
              as Feature,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SightInfoState implements _SightInfoState {
  _$_SightInfoState(
      {required this.feature, this.place, this.action, this.isLoading = false});

  @override
  final Feature feature;
  @override
  final Place? place;
  @override
  final BlocAction? action;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'SightInfoState(feature: $feature, place: $place, action: $action, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SightInfoState &&
            (identical(other.feature, feature) ||
                const DeepCollectionEquality()
                    .equals(other.feature, feature)) &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(feature) ^
      const DeepCollectionEquality().hash(place) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$SightInfoStateCopyWith<_SightInfoState> get copyWith =>
      __$SightInfoStateCopyWithImpl<_SightInfoState>(this, _$identity);
}

abstract class _SightInfoState implements SightInfoState {
  factory _SightInfoState(
      {required Feature feature,
      Place? place,
      BlocAction? action,
      bool isLoading}) = _$_SightInfoState;

  @override
  Feature get feature => throw _privateConstructorUsedError;
  @override
  Place? get place => throw _privateConstructorUsedError;
  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SightInfoStateCopyWith<_SightInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SightInfoEventTearOff {
  const _$SightInfoEventTearOff();

  Init init() {
    return const Init();
  }

  WikiClicked wikiClicked() {
    return const WikiClicked();
  }
}

/// @nodoc
const $SightInfoEvent = _$SightInfoEventTearOff();

/// @nodoc
mixin _$SightInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() wikiClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? wikiClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(WikiClicked value) wikiClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(WikiClicked value)? wikiClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SightInfoEventCopyWith<$Res> {
  factory $SightInfoEventCopyWith(
          SightInfoEvent value, $Res Function(SightInfoEvent) then) =
      _$SightInfoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SightInfoEventCopyWithImpl<$Res>
    implements $SightInfoEventCopyWith<$Res> {
  _$SightInfoEventCopyWithImpl(this._value, this._then);

  final SightInfoEvent _value;
  // ignore: unused_field
  final $Res Function(SightInfoEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$SightInfoEventCopyWithImpl<$Res>
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
    return 'SightInfoEvent.init()';
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
    required TResult Function() wikiClicked,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? wikiClicked,
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
    required TResult Function(WikiClicked value) wikiClicked,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(WikiClicked value)? wikiClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements SightInfoEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class $WikiClickedCopyWith<$Res> {
  factory $WikiClickedCopyWith(
          WikiClicked value, $Res Function(WikiClicked) then) =
      _$WikiClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WikiClickedCopyWithImpl<$Res> extends _$SightInfoEventCopyWithImpl<$Res>
    implements $WikiClickedCopyWith<$Res> {
  _$WikiClickedCopyWithImpl(
      WikiClicked _value, $Res Function(WikiClicked) _then)
      : super(_value, (v) => _then(v as WikiClicked));

  @override
  WikiClicked get _value => super._value as WikiClicked;
}

/// @nodoc

class _$WikiClicked implements WikiClicked {
  const _$WikiClicked();

  @override
  String toString() {
    return 'SightInfoEvent.wikiClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WikiClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() wikiClicked,
  }) {
    return wikiClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? wikiClicked,
    required TResult orElse(),
  }) {
    if (wikiClicked != null) {
      return wikiClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(WikiClicked value) wikiClicked,
  }) {
    return wikiClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(WikiClicked value)? wikiClicked,
    required TResult orElse(),
  }) {
    if (wikiClicked != null) {
      return wikiClicked(this);
    }
    return orElse();
  }
}

abstract class WikiClicked implements SightInfoEvent {
  const factory WikiClicked() = _$WikiClicked;
}

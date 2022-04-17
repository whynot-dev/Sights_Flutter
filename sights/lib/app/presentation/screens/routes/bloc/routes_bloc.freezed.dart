// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'routes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RoutesStateTearOff {
  const _$RoutesStateTearOff();

  _RoutesState call({BlocAction? action}) {
    return _RoutesState(
      action: action,
    );
  }
}

/// @nodoc
const $RoutesState = _$RoutesStateTearOff();

/// @nodoc
mixin _$RoutesState {
  BlocAction? get action => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoutesStateCopyWith<RoutesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutesStateCopyWith<$Res> {
  factory $RoutesStateCopyWith(
          RoutesState value, $Res Function(RoutesState) then) =
      _$RoutesStateCopyWithImpl<$Res>;
  $Res call({BlocAction? action});
}

/// @nodoc
class _$RoutesStateCopyWithImpl<$Res> implements $RoutesStateCopyWith<$Res> {
  _$RoutesStateCopyWithImpl(this._value, this._then);

  final RoutesState _value;
  // ignore: unused_field
  final $Res Function(RoutesState) _then;

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
abstract class _$RoutesStateCopyWith<$Res>
    implements $RoutesStateCopyWith<$Res> {
  factory _$RoutesStateCopyWith(
          _RoutesState value, $Res Function(_RoutesState) then) =
      __$RoutesStateCopyWithImpl<$Res>;
  @override
  $Res call({BlocAction? action});
}

/// @nodoc
class __$RoutesStateCopyWithImpl<$Res> extends _$RoutesStateCopyWithImpl<$Res>
    implements _$RoutesStateCopyWith<$Res> {
  __$RoutesStateCopyWithImpl(
      _RoutesState _value, $Res Function(_RoutesState) _then)
      : super(_value, (v) => _then(v as _RoutesState));

  @override
  _RoutesState get _value => super._value as _RoutesState;

  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(_RoutesState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
    ));
  }
}

/// @nodoc

class _$_RoutesState implements _RoutesState {
  _$_RoutesState({this.action});

  @override
  final BlocAction? action;

  @override
  String toString() {
    return 'RoutesState(action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoutesState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  _$RoutesStateCopyWith<_RoutesState> get copyWith =>
      __$RoutesStateCopyWithImpl<_RoutesState>(this, _$identity);
}

abstract class _RoutesState implements RoutesState {
  factory _RoutesState({BlocAction? action}) = _$_RoutesState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RoutesStateCopyWith<_RoutesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RoutesEventTearOff {
  const _$RoutesEventTearOff();

  Init init() {
    return const Init();
  }
}

/// @nodoc
const $RoutesEvent = _$RoutesEventTearOff();

/// @nodoc
mixin _$RoutesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutesEventCopyWith<$Res> {
  factory $RoutesEventCopyWith(
          RoutesEvent value, $Res Function(RoutesEvent) then) =
      _$RoutesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoutesEventCopyWithImpl<$Res> implements $RoutesEventCopyWith<$Res> {
  _$RoutesEventCopyWithImpl(this._value, this._then);

  final RoutesEvent _value;
  // ignore: unused_field
  final $Res Function(RoutesEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$RoutesEventCopyWithImpl<$Res>
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
    return 'RoutesEvent.init()';
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
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
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
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements RoutesEvent {
  const factory Init() = _$Init;
}

part of 'routes_bloc.dart';

@freezed
class RoutesState with _$RoutesState {
  factory RoutesState({
    BlocAction? action,
    @Default([]) List<String> routes,
  }) = _RoutesState;
}

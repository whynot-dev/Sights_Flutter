part of 'navigation_bloc.dart';

@freezed
class NavigationState with _$NavigationState {
  factory NavigationState({
    BlocAction? action,
    @Default(1) int selectedTabIndex,
  }) = _NavigationState;
}

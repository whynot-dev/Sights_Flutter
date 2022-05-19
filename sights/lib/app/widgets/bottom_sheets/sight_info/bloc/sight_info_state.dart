part of 'sight_info_bloc.dart';

@freezed
class SightInfoState with _$SightInfoState {
  factory SightInfoState({
    required Feature feature,
    required SightType sightType,
    Place? place,
    BlocAction? action,
    @Default(false) bool isLoading,
  }) = _SightInfoState;
}

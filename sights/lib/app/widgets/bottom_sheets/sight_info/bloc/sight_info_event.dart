part of 'sight_info_bloc.dart';

@freezed
class SightInfoEvent with _$SightInfoEvent {
  const factory SightInfoEvent.init() = Init;
  const factory SightInfoEvent.wikiClicked() = WikiClicked;
}
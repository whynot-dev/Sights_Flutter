import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/navigation/navigation_type.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sights/core/failures.dart';
import 'package:sights/data/repositories/map_repository.dart';
import 'package:sights/domain/entities/feature.dart';
import 'package:sights/domain/entities/place.dart';
import 'package:sights/domain/entities/sight_entity.dart';
import 'package:sights/domain/enums/sight_type.dart';

part 'sight_info_state.dart';

part 'sight_info_event.dart';

part 'sight_info_bloc.freezed.dart';

class SightInfoBloc extends Bloc<SightInfoEvent, SightInfoState> {
  SightInfoBloc({
    required SightEntity sight,
    required this.mapRepository,
  }) : super(SightInfoState(feature: sight.feature, sightType: sight.sightType)) {
    on<Init>(_init);
    on<WikiClicked>(_wikiClicked);
    this.add(SightInfoEvent.init());
  }

  MapRepository mapRepository;

  FutureOr<void> _init(Init event, Emitter<SightInfoState> emit) async {
    emit(state.copyWith(isLoading: true));
    Either<Place, Failure> result = await mapRepository.getPlace(xid: state.feature.properties.xid);
    result.fold(
      (data) => emit(state.copyWith(place: data)),
      (error) {},
    );
    emit(state.copyWith(isLoading: false));
  }

  FutureOr<void> _wikiClicked(WikiClicked event, Emitter<SightInfoState> emit) async {
    String _url = state.place?.wikipedia ?? '';
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: NavigateAction.navigateToWebView(NavigateType.push, url: _url)));
  }
}

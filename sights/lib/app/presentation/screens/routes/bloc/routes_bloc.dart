import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'routes_state.dart';

part 'routes_event.dart';

part 'routes_bloc.freezed.dart';

class RoutesBloc extends Bloc<RoutesEvent, RoutesState> {
  RoutesBloc() : super(RoutesState()) {
    on<Init>(_init);
  }

  FutureOr<void> _init(Init event, Emitter<RoutesState> emit) {
    emit(state.copyWith());
  }
}

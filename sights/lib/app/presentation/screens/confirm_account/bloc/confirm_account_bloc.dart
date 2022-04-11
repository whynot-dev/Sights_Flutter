import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/navigation/navigation_type.dart';
import 'package:sights/core/bloc/bloc_action.dart';

part 'confirm_account_bloc.freezed.dart';
part 'confirm_account_event.dart';
part 'confirm_account_state.dart';

class ConfirmAccountBloc extends Bloc<ConfirmAccountEvent, ConfirmAccountState> {
  ConfirmAccountBloc() : super(ConfirmAccountState()) {
    on<ConfirmAccountEvent>((event, emit) {});
    on<ConfirmClicked>(_onConfirmClicked);
    on<NotNowClicked>(_onNotNowClicked);

  }

  FutureOr<void> _onConfirmClicked(ConfirmClicked event, Emitter<ConfirmAccountState> emit) async {
    emit(state.copyWith(action: NavigateToConfirmationSteps(NavigateType.push)));
    emit(state.copyWith(action: null)); // костыль, но без этого не слушает изменение экшена после возвращения назад с экрана confirmation_step_1
  }

  FutureOr<void> _onNotNowClicked(NotNowClicked event, Emitter<ConfirmAccountState> emit) async {
    emit(state.copyWith(action: NavigateToNavigation(NavigateType.pushReplacement)));
    emit(state.copyWith(action: null)); // костыль, но без этого не слушает изменение экшена после возвращения назад с экрана confirmation_step_1
  }


}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.dart';

part 'profile_event.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState()) {
    on<Init>(_init);
  }

  FutureOr<void> _init(Init event, Emitter<ProfileState> emit) {
    emit(state.copyWith());
  }
}

import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:sights/domain/entities/direction.dart';
import 'package:sights/domain/entities/save_route_entity.dart';
import 'package:sights/domain/enums/transport_type.dart';

part 'routes_state.dart';

part 'routes_event.dart';

part 'routes_bloc.freezed.dart';

class RoutesBloc extends Bloc<RoutesEvent, RoutesState> {
  RoutesBloc() : super(RoutesState()) {
    on<Init>(_init);
    on<RouteClicked>(_routeClicked);
    on<RouteDeleteClicked>(_routeDeleteClicked);
    this.add(RoutesEvent.init());
  }

  late Box<SaveRouteEntity> _box;

  FutureOr<void> _init(Init event, Emitter<RoutesState> emit) async {
    Directory directory = await pathProvider.getApplicationDocumentsDirectory();

    _box = await Hive.openBox('routes', path: directory.path);

    List<SaveRouteEntity> routes = _box.values.toList();
    emit(state.copyWith(routes: routes));
  }

  FutureOr<void> _routeClicked(RouteClicked event, Emitter<RoutesState> emit) async {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: NavigateBack(result: state.routes[event.index])));
  }

  FutureOr<void> _routeDeleteClicked(RouteDeleteClicked event, Emitter<RoutesState> emit) async {
    _box.deleteAt(event.index);
    List<SaveRouteEntity> routes = _box.values.toList();
    emit(state.copyWith(routes: routes));
  }
}

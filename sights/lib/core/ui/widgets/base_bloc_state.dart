import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBlocState<W extends StatefulWidget, B extends Bloc> extends State<W> {
  B getBloc(BuildContext context) => context.read<B>();
}

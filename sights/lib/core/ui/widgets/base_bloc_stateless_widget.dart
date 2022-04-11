import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBlocStatelessWidget<B extends Bloc> extends StatelessWidget {
  const BaseBlocStatelessWidget();
  B getBloc(BuildContext context) => context.read<B>();
}

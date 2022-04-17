import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/app/navigation/app_navigator.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/core/ui/widgets/base_bloc_stateless_widget.dart';

import 'bloc/profile_bloc.dart';

class ProfileScreen extends BaseBlocStatelessWidget<ProfileBloc> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: _buildBody(context),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<ProfileBloc, ProfileState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) async {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            AppNavigator.navigate(context: context, action: action);
          }
        },
        child: Container(),
      );
}

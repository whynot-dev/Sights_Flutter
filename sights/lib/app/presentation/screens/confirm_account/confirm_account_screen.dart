import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sights/app/navigation/app_navigator.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/presentation/screens/confirm_account/bloc/confirm_account_bloc.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/buttons/default_button.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:sights/core/ui/widgets/base_bloc_stateless_widget.dart';
import 'package:sights/gen/assets.gen.dart';
import 'package:sights/localization/app_localizations.dart';

class ConfirmAccountScreen extends BaseBlocStatelessWidget<ConfirmAccountBloc> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: _buildBody(context),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<ConfirmAccountBloc, ConfirmAccountState>(
        listenWhen: (previousState, currentState) => previousState.action != currentState.action,
        listener: (context, state) async {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            AppNavigator.navigate(context: context, action: action);
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              _buildTitle(context),
              const SizedBox(height: 8),
              _buildDescription(context),
              const SizedBox(height: 16),
              Center(child: _buildImage(context)),
              // const SizedBox(height: 16),
              Spacer(),
              _buildConfirmButton(context),
              const SizedBox(height: 8),
              _buildNotNowButton(context),
              const SizedBox(height: 20),
            ],
          ),
        ),
      );

  Widget _buildTitle(BuildContext context) => Text(
        AppLocalizations.of(context).confirmationAccount,
        style: const TextStyle(
          fontSize: 24,
          height: 32 / 24,
          fontWeight: FontWeight.w600,
          color: AppColors.onBackground,
        ),
      );

  Widget _buildDescription(BuildContext context) => Text(
        AppLocalizations.of(context).confirmationAccountDescription,
        textAlign: TextAlign.start,
        style: const TextStyle(
          fontSize: 15,
          height: 20 / 15,
          fontWeight: FontWeight.w500,
          color: AppColors.onBackground,
        ),
      );

  Widget _buildImage(BuildContext context) {
    double height = MediaQuery.of(context).size.height - 162 - 280; //162 = height of buttons+paddings
    //if (height > 380) height = 380;
    return SvgPicture.asset(Assets.images.confirmAccountBsSvg, height: height);
  }

  Widget _buildConfirmButton(BuildContext context) => DefaultButton(
        text: AppLocalizations.of(context).confirm,
        onPressed: () {
          getBloc(context).add(ConfirmAccountEvent.confirmClicked());
        },
      );

  Widget _buildNotNowButton(BuildContext context) => DefaultButton(
        text: AppLocalizations.of(context).notNow,
        color: AppColors.gray4,
        onPressed: () {
          getBloc(context).add(ConfirmAccountEvent.notNowClicked());
        },
      );
}

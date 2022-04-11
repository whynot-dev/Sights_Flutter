import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sights/app/navigation/app_navigator.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/resources/app_styles.dart';
import 'package:sights/app/widgets/buttons/loader_button.dart';
import 'package:sights/app/widgets/inputs/phone_input.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:sights/core/ui/widgets/base_bloc_state.dart';
import 'package:sights/gen/assets.gen.dart';
import 'package:sights/localization/app_localizations.dart';

import 'bloc/enter_number_bloc.dart';

class EnterNumberScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EnterNumberScreenState();
}

class _EnterNumberScreenState extends BaseBlocState<EnterNumberScreen, EnterNumberBloc> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(AppStyles.lightStyle);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async {
          getBloc(context).add(EnterNumberEvent.popScopeCaught());
          return false;
        },
        child: Scaffold(
          backgroundColor: AppColors.white,
          body: SafeArea(
            child: _buildBody(context),
          ),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<EnterNumberBloc, EnterNumberState>(
        listenWhen: (previousState, currentState) => previousState.action != currentState.action,
        listener: (context, state) async {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            bool? screenResumed = false;
            // Future<bool?>
            screenResumed = await
            // (await
            AppNavigator.navigate(context: context, action: action);
          // ) as Future<bool?>;
            if (screenResumed ?? false) {
              getBloc(context).add(EnterNumberEvent.screenResumed());
            }

            action = null;
          }
          if (action is ShowMessage) {}
        },
        child: ScrollConfiguration(
          behavior: const DisableGrowEffectScrollBehavior(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildLogo(),
                _buildTitle(context),
                _buildPhoneInput(),
                _buildSendSmsCodeButton(context),
              ],
            ),
          ),
        ),
      );

  Widget _buildLogo() => Padding(
        padding: const EdgeInsets.only(top: 75),
        child: Assets.images.logo.image(height: 150, width: 150),
        // child: Image.asset('', height: 120, width: 110),
      );

  Widget _buildTitle(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 5, left: 40, right: 40),
        child: Text(
          AppLocalizations.of(context).enterNumberScreenTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            height: 20 / 15,
            fontWeight: FontWeight.w500,
            color: AppColors.onBackground,
            fontSize: 15,
          ),
        ),
      );

  Widget _buildPhoneInput() => Padding(
        padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
        child: BlocBuilder<EnterNumberBloc, EnterNumberState>(
          buildWhen: (previous, current) => previous.phoneNumber != current.phoneNumber,
          builder: (context, state) {
            return PhoneInput(
              number: state.phoneNumber,
              onChanged: (number) {
                getBloc(context).add(EnterNumberEvent.phoneChanged(number));
              },
            );
          },
        ),
      );

  Widget _buildSendSmsCodeButton(BuildContext context) => BlocBuilder<EnterNumberBloc, EnterNumberState>(
        buildWhen: (previous, current) =>
            previous.phoneNumber != current.phoneNumber
                || previous.buttonEnabled != current.buttonEnabled
                || previous.isLoading != current.isLoading,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.only(top: 40, bottom: 20, left: 16, right: 16),
          child: LoaderButton(
            enabled: state.buttonEnabled,
            isLoading: state.isLoading,
            text: AppLocalizations.of(context).sendCodeInSms,
            onPressed: () {
              getBloc(context).add(EnterNumberEvent.sendCodeClicked());
            },
          ),
        ),
      );
}

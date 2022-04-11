import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:sights/app/navigation/app_navigator.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/buttons/default_text_button.dart';
import 'package:sights/app/widgets/inputs/pin_code_input.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:sights/core/ui/widgets/base_bloc_state.dart';
import 'package:sights/core/ui/widgets/loader_dialog.dart';
import 'package:sights/localization/app_localizations.dart';

import 'bloc/confirm_phone_bloc.dart';

class ConfirmPhoneScreen extends StatefulWidget {
  @override
  _ConfirmPhoneScreenState createState() => _ConfirmPhoneScreenState();
}

class _ConfirmPhoneScreenState extends BaseBlocState<ConfirmPhoneScreen, ConfirmPhoneBloc> with CodeAutoFill {

  @override
  void codeUpdated() {
    getBloc(context).add(ConfirmPhoneEvent.codeUpdated(code!));
  }

  @override
  void initState() {
    super.initState();
    listenForCode();
  }

  @override
  void dispose() {
    cancel();
    unregisterListener();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
    onWillPop: () async {
      getBloc(context).add(ConfirmPhoneEvent.popScopeCaught());
      return false;
    },
    child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: SafeArea(
            // top: false,
            child: _buildBody(context),
          ),
        ),
  );

  Widget _buildBody(BuildContext context) => BlocListener<ConfirmPhoneBloc, ConfirmPhoneState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            AppNavigator.navigate(context: context, action: action);
          }
          if (action is RevertBack) {
            Navigator.pop(context, true);
          }
          if (action is ShowLoader) {
            LoaderDialog.show(context: context);
          }
          if (action is HideLoader) {
            Navigator.of(context).pop();
          }
        },
        child: ScrollConfiguration(
          behavior: const DisableGrowEffectScrollBehavior(),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildDescription(context),
                  SizedBox(height: 20),
                  _buildChangePhoneButton(context),
                  SizedBox(height: 44),
                  _buildPinCodeInput(context),
                  _buildResendCodeSection(context),
                ],
              ),
            ),
          ),
        ),
      );

  Widget _buildDescription(BuildContext context) => BlocBuilder<ConfirmPhoneBloc, ConfirmPhoneState>(
        buildWhen: (previous, current) => previous.phoneNumber != current.phoneNumber,
        builder: (context, state) => RichText(
          overflow: TextOverflow.fade,
          textAlign: TextAlign.center,
          maxLines: 3,
          text: TextSpan(
            style: TextStyle(fontFamily: 'TTFirsNeue'),
            children: <TextSpan>[
              TextSpan(
                  text: AppLocalizations.of(context).weSentToYourPhoneNumber,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: AppColors.onAccent)),
              TextSpan(
                  text: ' ${state.phoneNumber} ',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17, color: AppColors.onAccent)),
              TextSpan(
                  text: AppLocalizations.of(context).smsWithCode,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: AppColors.onAccent)),
            ],
          ),
        ),
      );

  Widget _buildChangePhoneButton(BuildContext context) => DefaultTextButton(
        onPressed: () {
          getBloc(context).add(ConfirmPhoneEvent.changePhoneClicked());
        },
        text: AppLocalizations.of(context).changePhoneNumber,
        textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 17,
          color: AppColors.onBackground,
        ),
      );

  Widget _buildPinCodeInput(context) => BlocBuilder<ConfirmPhoneBloc, ConfirmPhoneState>(
        buildWhen: (previous, current) => previous.code != current.code || previous.errorMessage != current.errorMessage,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              PinCodeInput(
                code: state.code,
                activeColor: (state.errorMessage == AppLocalizations.of(context).wrongCodeFromSms) ? AppColors.errorMessage : AppColors.focusedInputBorder,
                selectedColor: (state.errorMessage == AppLocalizations.of(context).wrongCodeFromSms) ? AppColors.errorMessage : AppColors.focusedInputBorder,
                onChanged: (String code) {
                  getBloc(context).add(ConfirmPhoneEvent.codeChanged(code));
                },
              ),
              if (state.errorMessage == AppLocalizations.of(context).wrongCodeFromSms) Text(
                AppLocalizations.of(context).wrongCodeFromSms,
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color:AppColors.errorMessage)
              )
            ],
          ),
        ),
      );

  Widget _buildResendCodeSection(context) => BlocBuilder<ConfirmPhoneBloc, ConfirmPhoneState>(
      buildWhen: (previous, current) => previous.countOfSecondsToResend != current.countOfSecondsToResend,
      builder: (context, state) {
        String text;
        bool enabled = state.countOfSecondsToResend <= 0;
        if (!enabled) {
          text = AppLocalizations.of(context)
              .againCodeCanBeSentInSeconds(_getSeconds(state.countOfSecondsToResend.toString()));
        } else {
          text = AppLocalizations.of(context).resendTheCode;
        }
        return DefaultTextButton(
          text: text,
          enabled: enabled,
          onPressed: () {
            getBloc(context).add(ConfirmPhoneEvent.resendCodeClicked());
          },
          textStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.onAccent,
          ),
          textStyleDisabled: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.gray3,
          ),
        );
      });

  String _getSeconds(String seconds) {
    if (seconds.length == 1)
      return '0$seconds';
    else
      return seconds;
  }
}

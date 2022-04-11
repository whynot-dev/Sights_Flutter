import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:local_auth/local_auth.dart';
import 'package:sights/app/navigation/app_navigator.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/app/presentation/screens/enter_pin_code/bloc/enter_pin_code_bloc.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/backgrounds/default_white_background.dart';
import 'package:sights/app/widgets/buttons/default_text_button.dart';
import 'package:sights/app/widgets/indicators/pin_code_indicator.dart';
import 'package:sights/app/widgets/keyboards/pin_code_keyboard.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/core/ui/widgets/base_bloc_stateless_widget.dart';
import 'package:sights/domain/enums/enter_code_type.dart';
import 'package:sights/gen/assets.gen.dart';
import 'package:sights/localization/app_localizations.dart';

class EnterPinCodeScreen extends BaseBlocStatelessWidget<EnterPinCodeBloc> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: DefaultWhiteBackground(
          child: SafeArea(
            child: _buildBody(context),
          ),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<EnterPinCodeBloc, EnterPinCodeState>(
        listenWhen: (previousState, currentState) => previousState.action != currentState.action,
        listener: (context, state) async {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            AppNavigator.navigate(context: context, action: action);
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Spacer(flex: 76),
            _buildTitle(),
            _buildSubtitle(),
            Spacer(flex: 48),
            _buildCodeIndicators(),
            _buildContinueButton(),
            Spacer(flex: 50),
            _buildPinCodeKeyboard(context),
            Spacer(flex: 95),
          ],
        ),
      );

  Widget _buildTitle() => BlocBuilder<EnterPinCodeBloc, EnterPinCodeState>(
        buildWhen: (previous, current) => previous.enterCodeType != current.enterCodeType,
        builder: (context, state) {
          return Text(
            state.enterCodeType == EnterCodeType.create
                ? AppLocalizations.of(context).createPinCodeScreenTitle
                : AppLocalizations.of(context).enterPinCodeScreenTitle,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: AppColors.onBackground),
          );
        },
      );

  Widget _buildSubtitle() => BlocBuilder<EnterPinCodeBloc, EnterPinCodeState>(
        buildWhen: (previous, current) => previous.enterCodeType != current.enterCodeType,
        builder: (context, state) {
          if (state.enterCodeType == EnterCodeType.enter) {
            return SizedBox();
          }
          return Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              AppLocalizations.of(context).createPinCodeScreenDescription,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.onBackground),
            ),
          );
        },
      );

  Widget _buildCodeIndicators() => BlocBuilder<EnterPinCodeBloc, EnterPinCodeState>(
        buildWhen: (previous, current) =>
            previous.code != current.code ||
            previous.codeLength != current.codeLength ||
            previous.enterCodeType != current.enterCodeType,
        builder: (context, state) {
          return Center(
            child: PinCodeIndicator(
              code: state.code,
              indicatorsAmount: state.enterCodeType == EnterCodeType.create
                  ? state.code.length <= 4
                      ? 4
                      : state.code.length
                  : state.codeLength,
            ),
          );
        },
      );

  Widget _buildContinueButton() => BlocBuilder<EnterPinCodeBloc, EnterPinCodeState>(
        buildWhen: (previous, current) =>
            previous.code != current.code ||
            previous.error != current.error ||
            previous.enterCodeType != current.enterCodeType,
        builder: (context, state) {
          if (state.enterCodeType == EnterCodeType.enter) {
            return state.error == null
                ? SizedBox(height: 80)
                : Container(
                    height: 80,
                    alignment: Alignment.center,
                    child: _buildError(state.error!),
                  );
          }
          return Padding(
              padding: const EdgeInsets.only(top: 30),
              child: DefaultTextButton(
                text: AppLocalizations.of(context).continueStr,
                enabled: state.code.length >= 4,
                onPressed: () {
                  getBloc(context).add(EnterPinCodeEvent.continueClicked());
                },
              ));
        },
      );

  Widget _buildError(String text) => Text(text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: AppColors.error,
      ));

  Widget _buildPinCodeKeyboard(BuildContext context) => BlocBuilder<EnterPinCodeBloc, EnterPinCodeState>(
        buildWhen: (previous, current) =>
            previous.code != current.code ||
            previous.biometricType != current.biometricType ||
            previous.enterCodeType != current.enterCodeType,
        builder: (context, state) {
          return PinCodeKeyboard(
            onDigitPressed: (String digit) {
              getBloc(context).add(EnterPinCodeEvent.digitClicked(digit));
            },
            onRightKeyPressed: () {
              if (state.code.length > 0) {
                getBloc(context).add(EnterPinCodeEvent.backspaceClicked());
              } else if (state.biometricType != null) {
                getBloc(context).add(EnterPinCodeEvent.enterUsingBiometricClicked());
              }
            },
            onLeftKeyPressed: () {
              getBloc(context).add(EnterPinCodeEvent.exitClicked());
            },
            rightKey: SvgPicture.asset(
              (state.code.length == 0 && state.biometricType == null) || state.code.length > 0
                  ? Assets.images.backspace
                  : (state.biometricType == BiometricType.face)
                      ? Assets.images.faceId2
                      : Assets.images.touchId2,
              color: state.code.length == 0
                  ? state.biometricType == null
                      ? AppColors.gray3
                      : AppColors.brightAcid2
                  : AppColors.brightAcid,
              width: 32,
              height: 32,
              fit: BoxFit.cover,
            ),
            leftKey: state.enterCodeType == EnterCodeType.enter
                ? Text(
                    AppLocalizations.of(context).exit,
                    style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: AppColors.black),
                  )
                : SizedBox(),
          );
        },
      );
}

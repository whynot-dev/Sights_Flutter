import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/app_bars/default_appbar.dart';
import 'package:sights/app/widgets/backgrounds/white_gradient_background.dart';
import 'package:sights/app/widgets/buttons/default_button.dart';
import 'package:sights/app/widgets/inputs/default_input.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/app/navigation/app_navigator.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:sights/core/ui/widgets/base_bloc_stateless_widget.dart';
import 'package:sights/localization/app_localizations.dart';

import 'bloc/edit_address_bloc.dart';

class EditAddressScreen extends BaseBlocStatelessWidget<EditAddressBloc> {
  EditAddressScreen({required this.needDeleteButton});

  final bool needDeleteButton;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: WhiteGradientBackground(
          child: SafeArea(
            bottom: false,
            child: _buildBody(context),
          ),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<EditAddressBloc, EditAddressState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) async {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            AppNavigator.navigate(context: context, action: action);
          }
        },
        child: ScrollConfiguration(
          behavior: const DisableGrowEffectScrollBehavior(),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildAppBar(context),
                    const SizedBox(height: 24),
                    _buildAddress(),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Expanded(child: _buildApartmentInput()),
                          const SizedBox(width: 8),
                          Expanded(child: _buildEntranceInput()),
                          const SizedBox(width: 8),
                          Expanded(child: _buildFloorInput()),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildCommentInput(),
                    _buildBottomButtons(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildAppBar(BuildContext context) => DefaultAppbar(
        title: AppLocalizations.of(context).deliveryAddress,
        backgroundColor: AppColors.white4,
        onBackPressed: () {
          Navigator.pop(context);
        },
      );

  Widget _buildAddress() => BlocBuilder<EditAddressBloc, EditAddressState>(
        buildWhen: (previous, current) => previous.address != current.address,
        builder: (context, state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            state.address,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.onAccent),
          ),
        ),
      );

  Widget _buildApartmentInput() => BlocBuilder<EditAddressBloc, EditAddressState>(
        buildWhen: (previous, current) => previous.apartment != current.apartment,
        builder: (context, state) => DefaultInput(
          maxLength: 10,
          label: AppLocalizations.of(context).apartmentOffice,
          hint: AppLocalizations.of(context).apartmentOffice,
          text: state.apartment != null ? state.apartment.toString() : null,
          onChanged: (text) {
            getBloc(context).add(EditAddressEvent.apartmentChanged(text));
          },
        ),
      );

  Widget _buildEntranceInput() => BlocBuilder<EditAddressBloc, EditAddressState>(
        buildWhen: (previous, current) => previous.entrance != current.entrance,
        builder: (context, state) => DefaultInput(
          maxLength: 10,
          label: AppLocalizations.of(context).entrance,
          hint: AppLocalizations.of(context).entrance,
          text: state.entrance != null ? state.entrance.toString() : null,
          onChanged: (text) {
            getBloc(context).add(EditAddressEvent.entranceChanged(text));
          },
        ),
      );

  Widget _buildFloorInput() => BlocBuilder<EditAddressBloc, EditAddressState>(
        buildWhen: (previous, current) => previous.floor != current.floor,
        builder: (context, state) => DefaultInput(
          maxLength: 10,
          label: AppLocalizations.of(context).floor,
          hint: AppLocalizations.of(context).floor,
          text: state.floor != null ? state.floor.toString() : null,
          onChanged: (text) {
            getBloc(context).add(EditAddressEvent.floorChanged(text));
          },
        ),
      );

  Widget _buildCommentInput() => BlocBuilder<EditAddressBloc, EditAddressState>(
        buildWhen: (previous, current) => previous.comment != current.comment,
        builder: (context, state) => Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: DefaultInput(
              label: AppLocalizations.of(context).comment,
              hint: AppLocalizations.of(context).comment,
              text: state.comment,
              minLines: 1,
              maxLines: 15,
              maxLength: 350,
              onChanged: (text) {
                getBloc(context).add(EditAddressEvent.commentChanged(text));
              },
            ),
          ),
        ),
      );

  Widget _buildBottomButtons(BuildContext context) => Padding(
        padding: EdgeInsets.only(bottom: 20 + MediaQuery.of(context).viewPadding.bottom, left: 16, right: 16, top: 24),
        child: Column(
          children: [
            _buildSaveButton(context),
            if (needDeleteButton) const SizedBox(height: 8),
            if (needDeleteButton) _buildDeleteButton(context),
          ],
        ),
      );

  Widget _buildSaveButton(BuildContext context) => DefaultButton(
        text: AppLocalizations.of(context).save,
        onPressed: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
          getBloc(context).add(EditAddressEvent.saveClicked());
        },
      );

  Widget _buildDeleteButton(BuildContext context) => DefaultButton(
        color: AppColors.gray1,
        text: AppLocalizations.of(context).delete,
        onPressed: () {
          getBloc(context).add(EditAddressEvent.deleteClicked());
        },
      );
}

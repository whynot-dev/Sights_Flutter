import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/app_bars/default_appbar.dart';
import 'package:sights/app/widgets/backgrounds/white_gradient_background.dart';
import 'package:sights/app/widgets/buttons/default_button.dart';
import 'package:sights/app/widgets/lists/address_item.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/app/navigation/app_navigator.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:sights/core/ui/widgets/base_bloc_stateless_widget.dart';
import 'package:sights/localization/app_localizations.dart';

import 'bloc/addresses_bloc.dart';

class AddressesScreen extends BaseBlocStatelessWidget<AddressesBloc> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: WhiteGradientBackground(
          child: SafeArea(
            bottom: false,
            child: _buildBody(context),
          ),
        ),
      );

  Widget _buildBody(BuildContext context) => BlocListener<AddressesBloc, AddressesState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) async {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            AppNavigator.navigate(context: context, action: action);
          }
        },
        child: Column(
          children: [
            _buildAppBar(context),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).viewPadding.top -
                    MediaQuery.of(context).viewPadding.bottom -
                    64,
              ),
              child: Stack(
                fit: StackFit.loose,
                children: [
                  const SizedBox(width: double.infinity),
                  _buildAddresses(),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: _buildNewAddressButton(context),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget _buildAppBar(BuildContext context) => DefaultAppbar(
        title: AppLocalizations.of(context).addresses,
        backgroundColor: AppColors.white4,
        onBackPressed: () {
          Navigator.pop(context);
        },
      );

  Widget _buildAddresses() => BlocBuilder<AddressesBloc, AddressesState>(
        buildWhen: (previous, current) => previous.addresses != current.addresses,
        builder: (context, state) => state.addresses.isNotEmpty
            ? ScrollConfiguration(
                behavior: const DisableGrowEffectScrollBehavior(),
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(top: 12, bottom: 120),
                  itemCount: state.addresses.length,
                  itemBuilder: (context, index) => AddressItem(
                    address: state.addresses[index].address,
                    comment: state.addresses[index].comment,
                    onTap: () {
                      getBloc(context).add(AddressesEvent.addressClicked(state.addresses[index]));
                    },
                  ),
                ),
              )
            : _buildTextPlaceHolder(context),
      );

  Widget _buildTextPlaceHolder(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 120, top: 12),
        child: Text(
          AppLocalizations.of(context).youDontHaveFavoritesAddressesYet,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.onAccent),
        ),
      );

  Widget _buildNewAddressButton(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 40, left: 16, right: 16),
        child: DefaultButton(
          text: AppLocalizations.of(context).newAddress,
          onPressed: () {
            getBloc(context).add(AddressesEvent.newAddressClicked());
          },
        ),
      );
}

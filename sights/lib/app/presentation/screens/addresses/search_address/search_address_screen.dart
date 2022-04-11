import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/inputs/search_address_input.dart';
import 'package:sights/app/widgets/lists/address_item.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/app/navigation/app_navigator.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:sights/core/ui/widgets/base_bloc_stateless_widget.dart';
import 'package:sights/localization/app_localizations.dart';

import 'bloc/search_address_bloc.dart';

class SearchAddressScreen extends BaseBlocStatelessWidget<SearchAddressBloc> {
  @override
  Widget build(BuildContext context) => SafeArea(
        bottom: false,
        child: _buildBody(context),
      );

  Widget _buildBody(BuildContext context) => BlocListener<SearchAddressBloc, SearchAddressState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) async {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            AppNavigator.navigate(context: context, action: action);
          }
        },
        child: ScrollConfiguration(
          behavior: const DisableGrowEffectScrollBehavior(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height - 60,
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.vertical(top: const Radius.circular(30)),
              ),
              child: Column(
                children: [
                  _buildTopSection(context),
                  const SizedBox(height: 20),
                  _buildInput(),
                  const SizedBox(height: 12),
                  Expanded(child: _buildAddresses()),
                ],
              ),
            ),
          ),
        ),
      );

  Widget _buildTopSection(BuildContext context) => Row(
        children: [
          _buildTitle(context),
          const Spacer(),
          _buildCancelButton(context),
        ],
      );

  Widget _buildTitle(BuildContext context) => Text(
        AppLocalizations.of(context).changeAddress,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.onAccent),
      );

  Widget _buildCancelButton(BuildContext context) => GestureDetector(
        onTap: () {
          getBloc(context).add(SearchAddressEvent.cancelClicked());
        },
        child: Text(
          AppLocalizations.of(context).cancel,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: AppColors.onAccent),
        ),
      );

  Widget _buildInput() => BlocBuilder<SearchAddressBloc, SearchAddressState>(
        buildWhen: (previous, current) => previous.searchText != current.searchText,
        builder: (context, state) => SearchAddressInput(
          text: state.searchText,
          hintText: AppLocalizations.of(context).enterAddress,
          onChanged: (text) {
            getBloc(context).add(SearchAddressEvent.searchChanged(text));
          },
        ),
      );

  Widget _buildAddresses() => BlocBuilder<SearchAddressBloc, SearchAddressState>(
        buildWhen: (previous, current) => previous.needShowMyAddresses != current.needShowMyAddresses,
        builder: (context, state) => state.needShowMyAddresses ? _buildMyAddresses(context) : _buildSearchAddresses(),
      );

  Widget _buildMyAddresses(BuildContext context) => BlocBuilder<SearchAddressBloc, SearchAddressState>(
        buildWhen: (previous, current) => previous.myAddresses != current.myAddresses,
        builder: (context, state) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                AppLocalizations.of(context).myAddresses.toUpperCase(),
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.gray3),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: state.myAddresses.length,
                itemBuilder: (context, index) => AddressItem(
                  address: state.myAddresses[index].address,
                  comment: state.myAddresses[index].comment,
                  paddingContent: const EdgeInsets.symmetric(vertical: 12),
                  needArrow: false,
                  onTap: () {
                    getBloc(context).add(SearchAddressEvent.addressClicked(state.myAddresses[index], false));
                  },
                ),
              ),
            )
          ],
        ),
      );

  Widget _buildSearchAddresses() => BlocBuilder<SearchAddressBloc, SearchAddressState>(
        buildWhen: (previous, current) => previous.searchAddresses != current.searchAddresses,
        builder: (context, state) => ListView.builder(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewPadding.bottom + MediaQuery.of(context).viewInsets.bottom,
          ),
          itemCount: state.searchAddresses.keys.length,
          itemBuilder: (context, index) => AddressItem(
            address: state.searchAddresses.keys.toList()[index].address,
            comment:
                '${state.searchAddresses.keys.toList()[index].city.isNotEmpty ? state.searchAddresses.keys.toList()[index].city + ', ' : ''}${state.searchAddresses.keys.toList()[index].country}',
            paddingContent: const EdgeInsets.symmetric(vertical: 12),
            needArrow: false,
            addressMaxLines: 4,
            onTap: () {
              getBloc(context).add(SearchAddressEvent.addressClicked(state.searchAddresses.keys.toList()[index], true));
            },
          ),
        ),
      );
}

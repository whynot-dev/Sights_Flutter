import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/core/bloc/bloc_action.dart';
import 'package:sights/app/navigation/app_navigator.dart';
import 'package:sights/app/navigation/navigation_action.dart';
import 'package:sights/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:sights/core/ui/widgets/base_bloc_state.dart';
import 'package:sights/core/ui/widgets/base_bloc_stateless_widget.dart';
import 'package:sights/domain/enums/sight_type.dart';

import 'bloc/sight_info_bloc.dart';

class SightInfo extends StatefulWidget {

  @override
  State<SightInfo> createState() => _SightInfoState();
}

class _SightInfoState extends BaseBlocState<SightInfo, SightInfoBloc> {
  @override
  Widget build(BuildContext context) => _buildBody(context);

  Widget _buildBody(BuildContext context) => BlocListener<SightInfoBloc, SightInfoState>(
        listenWhen: (previous, current) => previous.action != current.action,
        listener: (context, state) async {
          BlocAction? action = state.action;
          if (action is NavigateAction) {
            AppNavigator.navigate(context: context, action: action, rootNavigator: true);
          }
        },
        child: ScrollConfiguration(
          behavior: const DisableGrowEffectScrollBehavior(),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                _buildNameAndDescription(),
              ],
            ),
          ),
        ),
      );

  Widget _buildNameAndDescription() => Padding(
        padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 4,
                width: 48,
                decoration: BoxDecoration(color: AppColors.gray2, borderRadius: BorderRadius.circular(2)),
              ),
            ),
            const SizedBox(height: 12),
            _buildName(),
            const SizedBox(height: 12),
            _buildDivider(),
            _buildImage(),
            _buildDescription(),
            _buildWikiUrl(),
            //if (widget.isExpanded) _buildIconAndText(Assets.images.home, widget.pickupPoint.address),
            //if (widget.isExpanded) const SizedBox(height: 22),
          ],
        ),
      );

  Widget _buildName() => BlocBuilder<SightInfoBloc, SightInfoState>(
        buildWhen: (previous, current) => previous.place?.name != current.place?.name,
        builder: (context, state) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (state.place?.name.isNotEmpty == true)
              Text(
                state.place?.name ?? '',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.onAccent),
              ),
            if (state.place?.name.isNotEmpty == true) const SizedBox(height: 5),
            Text(
              state.sightType.getName(context),
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.gray6),
            ),
          ],
        ),
      );

  Widget _buildImage() => BlocBuilder<SightInfoBloc, SightInfoState>(
        buildWhen: (previous, current) => previous.place?.image != current.place?.image,
        builder: (context, state) => state.place != null && state.place!.preview?.source != null
            ? Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CachedNetworkImage(
                        imageUrl: state.place!.preview?.source ?? '',
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) => const SizedBox(),
                      ),
                    ),
                    const SizedBox(height: 12),
                    _buildDivider(),
                  ],
                ),
              )
            : const SizedBox(),
      );

  Widget _buildDescription() => BlocBuilder<SightInfoBloc, SightInfoState>(
        buildWhen: (previous, current) => previous.place?.wikipediaExtracts != current.place?.wikipediaExtracts,
        builder: (context, state) => (state.place?.wikipediaExtracts?.text.isNotEmpty == true)
            ? Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text(
                      state.place?.wikipediaExtracts?.text ?? '',
                      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.onAccent),
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildDivider(),
                ],
              )
            : const SizedBox(),
      );

  Widget _buildDivider() => Container(
        height: 1,
        color: AppColors.gray1,
      );

  Widget _buildWikiUrl() => BlocBuilder<SightInfoBloc, SightInfoState>(
        buildWhen: (previous, current) => previous.place?.wikipedia != current.place?.wikipedia,
        builder: (context, state) => state.place?.wikipedia?.isNotEmpty == true
            ? GestureDetector(
                onTap: () {
                  getBloc(context).add(SightInfoEvent.wikiClicked());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'Wikidata',
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.blue),
                  ),
                ),
              )
            : const SizedBox(),
      );
}

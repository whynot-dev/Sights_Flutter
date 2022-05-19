import 'package:flutter/cupertino.dart';
import 'package:sights/app/resources/app_colors.dart';
import 'package:sights/app/widgets/buttons/default_button.dart';
import 'package:sights/app/widgets/lists/filter_item.dart';
import 'package:sights/core/ui/scroll_behavior/disable_glow_effect_scroll_behavior.dart';
import 'package:sights/domain/enums/sight_type.dart';
import 'package:sights/localization/app_localizations.dart';

class SightsFilterModal extends StatefulWidget {
  const SightsFilterModal({
    required this.sightFilters,
  });

  final List<SightType> sightFilters;

  @override
  _SightsFilterModalState createState() => _SightsFilterModalState();
}

class _SightsFilterModalState extends State<SightsFilterModal> {
  late List<SightType> _selectedSightFilters;

  @override
  void initState() {
    _selectedSightFilters = List.from(widget.sightFilters);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height * 0.6,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            _buildTitle(),
            const SizedBox(height: 10),
            Expanded(child: _buildFilters()),
            const SizedBox(height: 16),
            _buildButtons(),
          ],
        ),
      );

  Widget _buildTitle() => Text(
        AppLocalizations.of(context).imInterested,
        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 17, color: AppColors.onBackground),
      );

  Widget _buildFilters() => ScrollConfiguration(
        behavior: const DisableGrowEffectScrollBehavior(),
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 10),
          itemCount: SightType.values.length,
          itemBuilder: (context, index) => FilterItem(
            sightType: SightType.values[index],
            isSelected: _selectedSightFilters.contains(SightType.values[index]),
            onTap: () {
              if (_selectedSightFilters.contains(SightType.values[index])) {
                _selectedSightFilters.remove(SightType.values[index]);
              } else {
                _selectedSightFilters.add(SightType.values[index]);
              }
              setState(() {});
            },
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 10),
        ),
      );

  Widget _buildButtons() => Column(
        children: [
          DefaultButton(
            text: AppLocalizations.of(context).cancel,
            color: AppColors.gray1,
            height: 50,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 10),
          DefaultButton(
            text: AppLocalizations.of(context).apply,
            height: 50,
            onPressed: () {
              Navigator.pop(context, _selectedSightFilters);
            },
          ),
        ],
      );
}

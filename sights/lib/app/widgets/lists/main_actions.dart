import 'package:flutter/material.dart';
import 'package:sights/app/widgets/lists/main_action_item.dart';
import 'package:sights/domain/entities/main_action_entity.dart';

class MainActions extends StatelessWidget {
  const MainActions({
    required this.mainActions,
    this.onTap,
  });

  final List<MainActionEntity> mainActions;
  final Function(MainActionEntity actionEntity)? onTap;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 84,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.horizontal,
          itemCount: mainActions.length,
          itemBuilder: (context, index) => MainActionItem(
            mainAction: mainActions[index],
            onTap: (MainActionEntity actionEntity) {
              onTap?.call(mainActions[index]);
            },
          ),
          separatorBuilder: (context, index) => const SizedBox(width: 8),
        ),
      );
}

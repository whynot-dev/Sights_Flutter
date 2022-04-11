import 'package:sights/domain/enums/main_action_type.dart';

import 'network/main_action_content.dart';

class MainActionEntity {
  MainActionEntity({
    required this.title,
    required this.mainActionType,
    this.urlImage,
    this.content,
  });

  String title;
  MainActionType mainActionType;
  String? urlImage;
  String? urlIcon;
  MainActionContent? content;


//  factory MainActionEntity.fromResponse(MainAction response) => MainActionEntity(
//
//  );
}



import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_entity.freezed.dart';

@freezed
class DeliveryEntity with _$DeliveryEntity {
  factory DeliveryEntity({
    required String title,
    required String icon,
    required String price,
    String? subTitle,
  }) = _DeliveryEntity;
}
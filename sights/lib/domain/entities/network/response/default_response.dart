import 'package:sights/domain/entities/network/main_item.dart';
import 'package:sights/domain/entities/network/pickup_point.dart';

import '../banner.dart';

class DefaultResponse<M> {
  DefaultResponse({
    required this.data,
    required this.error,
  });

  M? data;
  Map<String, dynamic>? error;

  factory DefaultResponse.fromJson(Map<String, dynamic> json) => DefaultResponse(
        data: json['items'] != null ? _dataFromJson(json['items'], M) : null,
        error: json['message'],
      );

  static I _dataFromJson<I>(json, Type type) {
//    if (type == Barrier) {
//      return Barrier.fromJson(json) as I;
//    }
//
    if (<MainItem>[] is I) {
      return json.map<MainItem>((item) => MainItem.fromJson(item)).toList() as I;
    }

    if (<Banner>[] is I) {
      return json.map<Banner>((item) => Banner.fromJson(item)).toList() as I;
    }

    if (<PickupPoint>[] is I) {
      return json.map<PickupPoint>((item) => PickupPoint.fromJson(item)).toList() as I;
    }

    return json as I;
  }
}

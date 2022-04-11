import 'package:sights/domain/entities/network/notification.dart';

class PaginationResponse<M> {
  PaginationResponse({
    required this.newCount,
    required this.total,
    required this.limit,
    required this.offset,
    required this.items,
  });

  int newCount;
  int total;
  int limit;
  int offset;
  List<M> items;


  factory PaginationResponse.fromJson(Map<String, dynamic> json) => PaginationResponse(
    newCount: json['new'] as int,
    total: json['total'] as int,
    limit: int.parse(json['limit'].toString()),
    offset: int.parse(json['offset'].toString()),
    items: _itemsFromJson(json['items']),
  );

  static List<M> _itemsFromJson<M>(List<dynamic> json) {
    if (M == Notification) {
      return json.map((item) => Notification.fromJson(item) as M).toList();
    }
    return json.map<M>((item) => item as M).toList();
  }
}
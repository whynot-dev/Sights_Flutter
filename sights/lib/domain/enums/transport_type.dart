import 'package:hive/hive.dart';

part 'transport_type.g.dart';

@HiveType(typeId: 3)
enum TransportType {
  @HiveField(0)
  driving,
  @HiveField(1)
  walking,
  @HiveField(2)
  cycling,
}

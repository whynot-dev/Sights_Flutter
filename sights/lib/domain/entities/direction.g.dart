// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direction.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DirectionAdapter extends TypeAdapter<Direction> {
  @override
  final int typeId = 2;

  @override
  Direction read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Direction(
      weight: fields[0] as double,
      duration: fields[1] as double,
      distance: fields[2] as double,
      geometry: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Direction obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.weight)
      ..writeByte(1)
      ..write(obj.duration)
      ..writeByte(2)
      ..write(obj.distance)
      ..writeByte(3)
      ..write(obj.geometry);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DirectionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Direction _$DirectionFromJson(Map<String, dynamic> json) {
  return Direction(
    weight: (json['weight'] as num).toDouble(),
    duration: (json['duration'] as num).toDouble(),
    distance: (json['distance'] as num).toDouble(),
    geometry: json['geometry'] as String,
  );
}

Map<String, dynamic> _$DirectionToJson(Direction instance) => <String, dynamic>{
      'weight': instance.weight,
      'duration': instance.duration,
      'distance': instance.distance,
      'geometry': instance.geometry,
    };

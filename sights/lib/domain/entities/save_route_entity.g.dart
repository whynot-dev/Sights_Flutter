// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_route_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SaveRouteEntityAdapter extends TypeAdapter<SaveRouteEntity> {
  @override
  final int typeId = 1;

  @override
  SaveRouteEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SaveRouteEntity(
      direction: fields[0] as Direction,
      countSights: fields[1] as int,
      transportType: fields[2] as TransportType,
      startAddress: fields[3] as String,
      finishAddress: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SaveRouteEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.direction)
      ..writeByte(1)
      ..write(obj.countSights)
      ..writeByte(2)
      ..write(obj.transportType)
      ..writeByte(3)
      ..write(obj.startAddress)
      ..writeByte(4)
      ..write(obj.finishAddress);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaveRouteEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

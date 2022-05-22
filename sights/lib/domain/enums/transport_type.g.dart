// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransportTypeAdapter extends TypeAdapter<TransportType> {
  @override
  final int typeId = 3;

  @override
  TransportType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TransportType.driving;
      case 1:
        return TransportType.walking;
      case 2:
        return TransportType.cycling;
      default:
        return TransportType.driving;
    }
  }

  @override
  void write(BinaryWriter writer, TransportType obj) {
    switch (obj) {
      case TransportType.driving:
        writer.writeByte(0);
        break;
      case TransportType.walking:
        writer.writeByte(1);
        break;
      case TransportType.cycling:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransportTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

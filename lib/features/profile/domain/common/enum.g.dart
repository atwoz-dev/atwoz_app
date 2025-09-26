// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SmokingStatusAdapter extends TypeAdapter<SmokingStatus> {
  @override
  final int typeId = 11;

  @override
  SmokingStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SmokingStatus.none;
      case 1:
        return SmokingStatus.quit;
      case 2:
        return SmokingStatus.occasional;
      case 3:
        return SmokingStatus.daily;
      case 4:
        return SmokingStatus.vape;
      default:
        return SmokingStatus.none;
    }
  }

  @override
  void write(BinaryWriter writer, SmokingStatus obj) {
    switch (obj) {
      case SmokingStatus.none:
        writer.writeByte(0);
        break;
      case SmokingStatus.quit:
        writer.writeByte(1);
        break;
      case SmokingStatus.occasional:
        writer.writeByte(2);
        break;
      case SmokingStatus.daily:
        writer.writeByte(3);
        break;
      case SmokingStatus.vape:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SmokingStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DrinkingStatusAdapter extends TypeAdapter<DrinkingStatus> {
  @override
  final int typeId = 12;

  @override
  DrinkingStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return DrinkingStatus.none;
      case 1:
        return DrinkingStatus.quit;
      case 2:
        return DrinkingStatus.social;
      case 3:
        return DrinkingStatus.occasional;
      case 4:
        return DrinkingStatus.frequent;
      default:
        return DrinkingStatus.none;
    }
  }

  @override
  void write(BinaryWriter writer, DrinkingStatus obj) {
    switch (obj) {
      case DrinkingStatus.none:
        writer.writeByte(0);
        break;
      case DrinkingStatus.quit:
        writer.writeByte(1);
        break;
      case DrinkingStatus.social:
        writer.writeByte(2);
        break;
      case DrinkingStatus.occasional:
        writer.writeByte(3);
        break;
      case DrinkingStatus.frequent:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DrinkingStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ReligionAdapter extends TypeAdapter<Religion> {
  @override
  final int typeId = 13;

  @override
  Religion read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Religion.none;
      case 1:
        return Religion.christian;
      case 2:
        return Religion.catholic;
      case 3:
        return Religion.buddhist;
      case 4:
        return Religion.other;
      default:
        return Religion.none;
    }
  }

  @override
  void write(BinaryWriter writer, Religion obj) {
    switch (obj) {
      case Religion.none:
        writer.writeByte(0);
        break;
      case Religion.christian:
        writer.writeByte(1);
        break;
      case Religion.catholic:
        writer.writeByte(2);
        break;
      case Religion.buddhist:
        writer.writeByte(3);
        break;
      case Religion.other:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReligionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

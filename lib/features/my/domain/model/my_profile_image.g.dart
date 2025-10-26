// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_profile_image.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MyProfileImageAdapter extends TypeAdapter<MyProfileImage> {
  @override
  final typeId = 5;

  @override
  MyProfileImage read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MyProfileImage(
      id: (fields[0] as num).toInt(),
      imageUrl: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MyProfileImage obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.imageUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyProfileImageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

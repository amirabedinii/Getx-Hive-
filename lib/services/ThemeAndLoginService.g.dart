// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ThemeAndLoginService.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ThemeAndLoginServiceAdapter extends TypeAdapter<ThemeAndLoginService> {
  @override
  final int typeId = 4;

  @override
  ThemeAndLoginService read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ThemeAndLoginService(
      fields[60] as bool,
      fields[61] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ThemeAndLoginService obj) {
    writer
      ..writeByte(2)
      ..writeByte(60)
      ..write(obj.isDark)
      ..writeByte(61)
      ..write(obj.isLoggedIn);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ThemeAndLoginServiceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

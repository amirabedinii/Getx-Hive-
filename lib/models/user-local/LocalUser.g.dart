// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LocalUser.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalUserAdapter extends TypeAdapter<LocalUser> {
  @override
  final int typeId = 0;

  @override
  LocalUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalUser(
      name: fields[0] as String,
      email: fields[1] as String,
      password: fields[2] as String,
      phone: fields[3] as String,
      address: fields[4]??"" as String,
      city: fields[5]??"" as String,
      state: fields[6]??"" as String,
      country: fields[7]??"" as String?,
      imagePath: fields[9]??"" as String?,
      role: fields[10]??"" as String?,
      id: fields[11]??"" as String?,
      createdAt: fields[12]??"" as String?,
    )
      ..listOfFlowers = (fields[13] as List).cast<Flower>()
      ..listOfInTheBag = (fields[14] as List).cast<Flower>()
      ..listOfbought = (fields[15] as List).cast<Flower>();
  }

  @override
  void write(BinaryWriter writer, LocalUser obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.password)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.address)
      ..writeByte(5)
      ..write(obj.city)
      ..writeByte(6)
      ..write(obj.state)
      ..writeByte(7)
      ..write(obj.country)
      ..writeByte(9)
      ..write(obj.imagePath)
      ..writeByte(10)
      ..write(obj.role)
      ..writeByte(11)
      ..write(obj.id)
      ..writeByte(12)
      ..write(obj.createdAt)
      ..writeByte(13)
      ..write(obj.listOfFlowers)
      ..writeByte(14)
      ..write(obj.listOfInTheBag)
      ..writeByte(15)
      ..write(obj.listOfbought);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

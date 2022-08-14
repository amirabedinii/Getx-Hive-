// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Seller.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SellerAdapter extends TypeAdapter<Seller> {
  @override
  final int typeId = 1;

  @override
  Seller read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Seller(
      name: fields[40] as String,
      email: fields[41] as String,
      password: fields[42] as String,
      phone: fields[43] as String,
      address: fields[44] as String,
      city: fields[45] as String,
      state: fields[46] as String,
      country: fields[47] as String?,
      imagePath: fields[48] as String?,
      id: fields[50] as String?,
      createdAt: fields[51] as String?,
    )
      ..listOfFlowers = (fields[52] as List).cast<Flower>()
      ..listOfForsale = (fields[53] as List).cast<Flower>();
  }

  @override
  void write(BinaryWriter writer, Seller obj) {
    writer
      ..writeByte(13)
      ..writeByte(40)
      ..write(obj.name)
      ..writeByte(41)
      ..write(obj.email)
      ..writeByte(42)
      ..write(obj.password)
      ..writeByte(43)
      ..write(obj.phone)
      ..writeByte(44)
      ..write(obj.address)
      ..writeByte(45)
      ..write(obj.city)
      ..writeByte(46)
      ..write(obj.state)
      ..writeByte(47)
      ..write(obj.country)
      ..writeByte(48)
      ..write(obj.imagePath)
      ..writeByte(50)
      ..write(obj.id)
      ..writeByte(51)
      ..write(obj.createdAt)
      ..writeByte(52)
      ..write(obj.listOfFlowers)
      ..writeByte(53)
      ..write(obj.listOfForsale);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SellerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

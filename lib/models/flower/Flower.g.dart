// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Flower.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FlowerAdapter extends TypeAdapter<Flower> {
  @override
  final int typeId = 3;

  @override
  Flower read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Flower(
      name: fields[20] as String,
      description: fields[21] as String,
      imagePath: fields[22] as String,
      price: fields[23] as String,
      id: fields[24] as String,
      createdAt: fields[25] as String,
      category: fields[28] as String?,
      quantity: fields[29] as String?,
      size: fields[30] as String?,
      costumer: fields[31] as LocalUser?,
    )
      ..updatedAt = fields[26] as String?
      ..deletedAt = fields[27] as String?
      ..seller = fields[32] as Seller?;
  }

  @override
  void write(BinaryWriter writer, Flower obj) {
    writer
      ..writeByte(13)
      ..writeByte(20)
      ..write(obj.name)
      ..writeByte(21)
      ..write(obj.description)
      ..writeByte(22)
      ..write(obj.imagePath)
      ..writeByte(23)
      ..write(obj.price)
      ..writeByte(24)
      ..write(obj.id)
      ..writeByte(25)
      ..write(obj.createdAt)
      ..writeByte(26)
      ..write(obj.updatedAt)
      ..writeByte(27)
      ..write(obj.deletedAt)
      ..writeByte(28)
      ..write(obj.category)
      ..writeByte(29)
      ..write(obj.quantity)
      ..writeByte(30)
      ..write(obj.size)
      ..writeByte(31)
      ..write(obj.costumer)
      ..writeByte(32)
      ..write(obj.seller);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FlowerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

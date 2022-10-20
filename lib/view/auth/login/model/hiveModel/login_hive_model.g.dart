// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginHiveModelAdapter extends TypeAdapter<LoginHiveModel> {
  @override
  final int typeId = 1;

  @override
  LoginHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LoginHiveModel()
      ..name = fields[0] as String?
      ..middleName = fields[1] as String?
      ..lastName = fields[2] as String?
      ..shortName = fields[3] as String?
      ..atmShortName = fields[4] as String?
      ..fullName = fields[5] as String?
      ..identityNo = fields[6] as String?
      ..age = fields[7] as int?
      ..birthDate = fields[8] as DateTime?
      ..fatherName = fields[9] as String?
      ..motherName = fields[10] as String?
      ..id = fields[11] as int?
      ..customerNo = fields[12] as int?
      ..userName = fields[13] as String?
      ..eMail = fields[14] as String?
      ..eMailConfirmationStatus = fields[15] as bool?
      ..customerType = fields[16] as int?
      ..smsVerification = fields[17] as bool?;
  }

  @override
  void write(BinaryWriter writer, LoginHiveModel obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.middleName)
      ..writeByte(2)
      ..write(obj.lastName)
      ..writeByte(3)
      ..write(obj.shortName)
      ..writeByte(4)
      ..write(obj.atmShortName)
      ..writeByte(5)
      ..write(obj.fullName)
      ..writeByte(6)
      ..write(obj.identityNo)
      ..writeByte(7)
      ..write(obj.age)
      ..writeByte(8)
      ..write(obj.birthDate)
      ..writeByte(9)
      ..write(obj.fatherName)
      ..writeByte(10)
      ..write(obj.motherName)
      ..writeByte(11)
      ..write(obj.id)
      ..writeByte(12)
      ..write(obj.customerNo)
      ..writeByte(13)
      ..write(obj.userName)
      ..writeByte(14)
      ..write(obj.eMail)
      ..writeByte(15)
      ..write(obj.eMailConfirmationStatus)
      ..writeByte(16)
      ..write(obj.customerType)
      ..writeByte(17)
      ..write(obj.smsVerification);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

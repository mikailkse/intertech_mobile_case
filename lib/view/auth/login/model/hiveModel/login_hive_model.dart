import 'package:hive/hive.dart';

part 'login_hive_model.g.dart';

@HiveType(typeId: 1)
class LoginHiveModel extends HiveObject {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? middleName;
  @HiveField(2)
  String? lastName;
  @HiveField(3)
  String? shortName;
  @HiveField(4)
  String? atmShortName;
  @HiveField(5)
  String? fullName;
  @HiveField(6)
  String? identityNo;
  @HiveField(7)
  int? age;
  @HiveField(8)
  DateTime? birthDate;
  @HiveField(9)
  String? fatherName;
  @HiveField(10)
  String? motherName;
  @HiveField(11)
  int? id;
  @HiveField(12)
  int? customerNo;
  @HiveField(13)
  String? userName;
  @HiveField(14)
  String? eMail;
  @HiveField(15)
  bool? eMailConfirmationStatus;
  @HiveField(16)
  int? customerType;
  @HiveField(17)
  bool? smsVerification;
}

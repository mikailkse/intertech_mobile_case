

import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel extends INetworkModel<LoginResponseModel> {
  @JsonKey(name: r'$type')
  String? $type;
  @JsonKey(name: 'Data')
  Data? data;

  LoginResponseModel({
    this.$type,
    this.data,
  });

  @override
  LoginResponseModel fromJson(Map<String, dynamic> json) =>
      LoginResponseModel.fromJson(json);

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$LoginResponseModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: r'$type')
  String? $type;
  @JsonKey(name: 'Pattern')
  String? pattern;
  @JsonKey(name: 'OldPattern')
  String? oldPattern;
  @JsonKey(name: 'ApplicationVersion')
  dynamic applicationVersion;
  @JsonKey(name: 'OperatingSystem')
  dynamic operatingSystem;
  @JsonKey(name: 'State')
  int? state;
  @JsonKey(name: 'CustomerInfo')
  CustomerInfo? customerInfo;
  @JsonKey(name: 'AuditLogId')
  int? auditLogId;

  Data(
      {this.$type,
      this.pattern,
      this.oldPattern,
      this.applicationVersion,
      this.operatingSystem,
      this.state,
      this.customerInfo,
      this.auditLogId});

  Data.fromJson(Map<String, dynamic> json) {
    _$DataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class CustomerInfo {
  @JsonKey(name: r'$type')
  String? $type;
  @JsonKey(name: 'm_IsToAccount')
  bool? mIsToAccount;
  @JsonKey(name: 'CustomerCompanyInformation')
  dynamic customerCompanyInformation;
  @JsonKey(name: 'AccountAssociationType')
  int? accountAssociationType;
  @JsonKey(name: 'MainBranchCode')
  int? mainBranchCode;
  @JsonKey(name: 'FirmName')
  String? firmName;
  @JsonKey(name: 'Name')
  String? name;
  @JsonKey(name: 'MiddleName')
  String? middleName;
  @JsonKey(name: 'LastName')
  String? lastName;
  @JsonKey(name: 'ShortName')
  String? shortName;
  @JsonKey(name: 'ATMShortName')
  String? atmShortName;
  @JsonKey(name: 'FullName')
  String? fullName;
  @JsonKey(name: 'PortfolioManagerCode')
  String? portfolioManagerCode;
  @JsonKey(name: 'SenderName')
  String? senderName;
  @JsonKey(name: 'DisplayName')
  String? displayName;
  @JsonKey(name: 'TaxOffice')
  String? taxOffice;
  @JsonKey(name: 'TaxNo')
  int? taxNo;
  @JsonKey(name: 'FirmTaxNo')
  int? firmTaxNo;
  @JsonKey(name: 'CitizenShipNumber')
  int? citizenShipNumber;
  @JsonKey(name: 'IdentityType')
  String? identityType;
  @JsonKey(name: 'IdentityNo')
  String? identityNo;
  @JsonKey(name: 'DrivingLicenseNo')
  String? drivingLicenseNo;
  @JsonKey(name: 'IBSeries')
  String? ibSeries;
  @JsonKey(name: 'IBSerialNo')
  int? ibSerialNo;
  @JsonKey(name: 'IdentitySerialNumber')
  String? identitySerialNumber;
  @JsonKey(name: 'FootballTeam')
  int? footballTeam;
  @JsonKey(name: 'InternationalFootballTeam')
  int? internationalFootballTeam;
  @JsonKey(name: 'CustomerSelectedName')
  int? customerSelectedName;
  @JsonKey(name: 'VIP')
  int? vip;
  @JsonKey(name: 'IsDoCustomer')
  bool? isDoCustomer;
  @JsonKey(name: 'DoCustomerRecordTime')
  DateTime? doCustomerRecordTime;
  @JsonKey(name: 'IBRegisteredCity')
  String? ibRegisteredCity;
  @JsonKey(name: 'IBRegisteredCityName')
  String? ibRegisteredCityName;
  @JsonKey(name: 'IBRegisteredTown')
  String? ibRegisteredTown;
  @JsonKey(name: 'IBQuarter')
  String? ibQuarter;
  @JsonKey(name: 'IBVolume')
  String? ibVolume;
  @JsonKey(name: 'IBFamilyOrderNo')
  String? ibFamilyOrderNo;
  @JsonKey(name: 'IBOrderNo')
  String? ibOrderNo;
  @JsonKey(name: 'ProcessCode')
  int? processCode;
  @JsonKey(name: 'IBSecurityCode')
  dynamic ibSecurityCode;
  @JsonKey(name: 'IsMobile')
  bool? isMobile;
  @JsonKey(name: 'Age')
  int? age;
  @JsonKey(name: 'BirthDate')
  DateTime? birthDate;
  @JsonKey(name: 'FatherName')
  String? fatherName;
  @JsonKey(name: 'MotherName')
  String? motherName;
  @JsonKey(name: 'ID')
  int? id;
  @JsonKey(name: 'CustomerNo')
  int? customerNo;
  @JsonKey(name: 'UserName')
  String? userName;
  @JsonKey(name: 'EMail')
  String? eMail;
  @JsonKey(name: 'EMailConfirmationStatus')
  bool? eMailConfirmationStatus;
  @JsonKey(name: 'FirmEMail')
  String? firmEMail;
  @JsonKey(name: 'CustomerType')
  int? customerType;
  @JsonKey(name: 'CustomerPersonalAccountNo')
  int? customerPersonalAccountNo;
  @JsonKey(name: 'CustomerPersonalNo')
  int? customerPersonalNo;
  @JsonKey(name: 'LastLogonTime')
  DateTime? lastLogonTime;
  @JsonKey(name: 'SmsVerification')
  bool? smsVerification;
  @JsonKey(name: 'LastLogonChannel')
  String? lastLogonChannel;
  @JsonKey(name: 'PhoneList')
  List<PhoneList>? phoneList;
  @JsonKey(name: 'PhoneListInformation')
  dynamic phoneListInformation;
  @JsonKey(name: 'FirmPhoneList')
  dynamic firmPhoneList;
  @JsonKey(name: 'FirmPhoneListInformation')
  dynamic firmPhoneListInformation;
  @JsonKey(name: 'FaxList')
  dynamic faxList;
  @JsonKey(name: 'SocialMediaList')
  List<dynamic>? socialMediaList;
  @JsonKey(name: 'SocialMediaListInformation')
  dynamic socialMediaListInformation;
  @JsonKey(name: 'AddressList')
  List<AddressList>? addressList;
  @JsonKey(name: 'AddressListInformation')
  dynamic addressListInformation;
  @JsonKey(name: 'AddressListNew')
  List<AddressListNew>? addressListNew;
  @JsonKey(name: 'AddressListNewInformation')
  dynamic addressListNewInformation;
  @JsonKey(name: 'RelatedContactList')
  List<dynamic>? relatedContactList;
  @JsonKey(name: 'GroupID')
  int? groupId;
  @JsonKey(name: 'Status')
  int? status;
  @JsonKey(name: 'BirthPlace')
  String? birthPlace;
  @JsonKey(name: 'BirthPlaceCode')
  int? birthPlaceCode;
  @JsonKey(name: 'WorkingCompany')
  String? workingCompany;
  @JsonKey(name: 'CorporateCode')
  String? corporateCode;
  @JsonKey(name: 'CorporateAuthorizationLevel')
  dynamic corporateAuthorizationLevel;
  @JsonKey(name: 'IsCorporateCustomer')
  bool? isCorporateCustomer;
  @JsonKey(name: 'IsContact')
  bool? isContact;
  @JsonKey(name: 'IsTarisCustomer')
  bool? isTarisCustomer;
  @JsonKey(name: 'EkstreAdresi')
  int? ekstreAdresi;
  @JsonKey(name: 'CreditCardDeliveryAddress')
  int? creditCardDeliveryAddress;
  @JsonKey(name: 'QuantisEkstreAdresi')
  int? quantisEkstreAdresi;
  @JsonKey(name: 'PrimarySchoolName')
  String? primarySchoolName;
  @JsonKey(name: 'Gender')
  String? gender;
  @JsonKey(name: 'MaritalStatus')
  int? maritalStatus;
  @JsonKey(name: 'MotherMaidenName')
  String? motherMaidenName;
  @JsonKey(name: 'IsGroupPersonel')
  bool? isGroupPersonel;
  @JsonKey(name: 'LeasingCustomerNo')
  String? leasingCustomerNo;
  @JsonKey(name: 'PasswordReminderQuestion')
  String? passwordReminderQuestion;
  @JsonKey(name: 'Password1')
  String? password1;
  @JsonKey(name: 'Password2')
  String? password2;
  @JsonKey(name: 'Password2Cancelled')
  bool? password2Cancelled;
  @JsonKey(name: 'IsDotLoginExpired')
  bool? isDotLoginExpired;
  @JsonKey(name: 'SecurityImageId')
  String? securityImageId;
  @JsonKey(name: 'BackgroundImagePath')
  String? backgroundImagePath;
  @JsonKey(name: 'FavoritesPages')
  String? favoritesPages;
  @JsonKey(name: 'HasAvatar')
  bool? hasAvatar;
  @JsonKey(name: 'SecurityImageChangeForce')
  bool? securityImageChangeForce;
  @JsonKey(name: 'MainPageId')
  int? mainPageId;
  @JsonKey(name: 'LogoutTime')
  int? logoutTime;
  @JsonKey(name: 'CCMenuItemCode')
  String? ccMenuItemCode;
  @JsonKey(name: 'NetSalary')
  String? netSalary;
  @JsonKey(name: 'TotalIncome')
  String? totalIncome;
  @JsonKey(name: 'SegmentValue')
  int? segmentValue;
  @JsonKey(name: 'SegmentProfile')
  int? segmentProfile;
  @JsonKey(name: 'SegmentProperty')
  int? segmentProperty;
  @JsonKey(name: 'BusinessLine')
  int? businessLine;
  @JsonKey(name: 'IsSahıs')
  bool? isSahs;
  @JsonKey(name: 'CustomerRetailApplicationInfo')
  CustomerRetailApplicationInfo? customerRetailApplicationInfo;
  @JsonKey(name: 'PortfolioCode')
  String? portfolioCode;
  @JsonKey(name: 'Nationality')
  int? nationality;
  @JsonKey(name: 'WorkTitle')
  String? workTitle;
  @JsonKey(name: 'JobTitle')
  String? jobTitle;
  @JsonKey(name: 'MenuType')
  int? menuType;
  @JsonKey(name: 'RetirementInfo')
  int? retirementInfo;
  @JsonKey(name: 'ToAccountSecurityType')
  int? toAccountSecurityType;
  @JsonKey(name: 'IsToAccount')
  bool? isToAccount;
  @JsonKey(name: 'ResidenceStatus')
  int? residenceStatus;
  @JsonKey(name: 'EducationStatus')
  int? educationStatus;
  @JsonKey(name: 'WorkingStatus')
  int? workingStatus;
  @JsonKey(name: 'PreviousWorkingStatus')
  int? previousWorkingStatus;
  @JsonKey(name: 'WorkArea')
  int? workArea;
  @JsonKey(name: 'CustomerEmploymentStatus')
  String? customerEmploymentStatus;
  @JsonKey(name: 'OptionalInsured')
  String? optionalInsured;
  @JsonKey(name: 'UnitStatus')
  int? unitStatus;
  @JsonKey(name: 'IsMobilePhoneChanged')
  bool? isMobilePhoneChanged;
  @JsonKey(name: 'ATMCustomerGroup')
  String? atmCustomerGroup;
  @JsonKey(name: 'ATMCardGroupCode')
  String? atmCardGroupCode;
  @JsonKey(name: 'ATMCardGroupStyle')
  String? atmCardGroupStyle;
  @JsonKey(name: 'CustomerProfile')
  String? customerProfile;
  @JsonKey(name: 'RecordStatus')
  String? recordStatus;
  @JsonKey(name: 'MasakDurumKodu')
  String? masakDurumKodu;
  @JsonKey(name: 'SegmentCode')
  int? segmentCode;
  @JsonKey(name: 'ProsecutionStatus')
  String? prosecutionStatus;
  @JsonKey(name: 'IsAccessible')
  bool? isAccessible;
  @JsonKey(name: 'DateOfDeath')
  DateTime? dateOfDeath;
  @JsonKey(name: 'IsOBCustomer')
  String? isObCustomer;
  @JsonKey(name: 'SubSegment')
  String? subSegment;
  @JsonKey(name: 'SubSegmentName')
  dynamic subSegmentName;
  @JsonKey(name: 'CustomerCitiBankStatus')
  int? customerCitiBankStatus;
  @JsonKey(name: 'HasTBHSDocument')
  bool? hasTbhsDocument;
  @JsonKey(name: 'TbhsVersion')
  String? tbhsVersion;
  @JsonKey(name: 'UnwantedProducts')
  dynamic unwantedProducts;
  @JsonKey(name: 'CustomerPusulaId')
  int? customerPusulaId;
  @JsonKey(name: 'IsChangedOnlyGSM2')
  bool? isChangedOnlyGsm2;
  @JsonKey(name: 'MainUserID')
  int? mainUserId;
  @JsonKey(name: 'MainCustomerNo')
  int? mainCustomerNo;
  @JsonKey(name: 'MainCustomerPersonalAccountNo')
  int? mainCustomerPersonalAccountNo;
  @JsonKey(name: 'IsDisabledCustomer')
  bool? isDisabledCustomer;
  @JsonKey(name: 'TypeOfDisabled')
  dynamic typeOfDisabled;
  @JsonKey(name: 'LevelOfDisabled')
  dynamic levelOfDisabled;
  @JsonKey(name: 'LoginChoice')
  int? loginChoice;
  @JsonKey(name: 'CustomerStatus')
  dynamic customerStatus;
  @JsonKey(name: 'EsbCustomerEmail')
  dynamic esbCustomerEmail;
  @JsonKey(name: 'SessionId')
  int? sessionId;
  @JsonKey(name: 'HearingDisableRate')
  int? hearingDisableRate;
  @JsonKey(name: 'ShareAccounts')
  dynamic shareAccounts;
  @JsonKey(name: 'ResidenceCountryCode')
  String? residenceCountryCode;
  @JsonKey(name: 'IdentityStatus')
  String? identityStatus;
  @JsonKey(name: 'BornCountry')
  int? bornCountry;
  @JsonKey(name: 'HasKobakusIntegration')
  bool? hasKobakusIntegration;
  @JsonKey(name: 'TelephoneBankingStatus')
  int? telephoneBankingStatus;
  @JsonKey(name: 'IsHasMagicNumber')
  bool? isHasMagicNumber;
  @JsonKey(name: 'HasSoftToken')
  bool? hasSoftToken;
  @JsonKey(name: 'AcqusitionFlag')
  bool? acqusitionFlag;
  @JsonKey(name: 'IsCompany')
  bool? isCompany;
  @JsonKey(name: 'ReferencePersonnel')
  String? referencePersonnel;
  @JsonKey(name: 'PasswordEncryptionType')
  int? passwordEncryptionType;

  CustomerInfo({
    this.$type,
    this.mIsToAccount,
    this.customerCompanyInformation,
    this.accountAssociationType,
    this.mainBranchCode,
    this.firmName,
    this.name,
    this.middleName,
    this.lastName,
    this.shortName,
    this.atmShortName,
    this.fullName,
    this.portfolioManagerCode,
    this.senderName,
    this.displayName,
    this.taxOffice,
    this.taxNo,
    this.firmTaxNo,
    this.citizenShipNumber,
    this.identityType,
    this.identityNo,
    this.drivingLicenseNo,
    this.ibSeries,
    this.ibSerialNo,
    this.identitySerialNumber,
    this.footballTeam,
    this.internationalFootballTeam,
    this.customerSelectedName,
    this.vip,
    this.isDoCustomer,
    this.doCustomerRecordTime,
    this.ibRegisteredCity,
    this.ibRegisteredCityName,
    this.ibRegisteredTown,
    this.ibQuarter,
    this.ibVolume,
    this.ibFamilyOrderNo,
    this.ibOrderNo,
    this.processCode,
    this.ibSecurityCode,
    this.isMobile,
    this.age,
    this.birthDate,
    this.fatherName,
    this.motherName,
    this.id,
    this.customerNo,
    this.userName,
    this.eMail,
    this.eMailConfirmationStatus,
    this.firmEMail,
    this.customerType,
    this.customerPersonalAccountNo,
    this.customerPersonalNo,
    this.lastLogonTime,
    this.smsVerification,
    this.lastLogonChannel,
    this.phoneList,
    this.phoneListInformation,
    this.firmPhoneList,
    this.firmPhoneListInformation,
    this.faxList,
    this.socialMediaList,
    this.socialMediaListInformation,
    this.addressList,
    this.addressListInformation,
    this.addressListNew,
    this.addressListNewInformation,
    this.relatedContactList,
    this.groupId,
    this.status,
    this.birthPlace,
    this.birthPlaceCode,
    this.workingCompany,
    this.corporateCode,
    this.corporateAuthorizationLevel,
    this.isCorporateCustomer,
    this.isContact,
    this.isTarisCustomer,
    this.ekstreAdresi,
    this.creditCardDeliveryAddress,
    this.quantisEkstreAdresi,
    this.primarySchoolName,
    this.gender,
    this.maritalStatus,
    this.motherMaidenName,
    this.isGroupPersonel,
    this.leasingCustomerNo,
    this.passwordReminderQuestion,
    this.password1,
    this.password2,
    this.password2Cancelled,
    this.isDotLoginExpired,
    this.securityImageId,
    this.backgroundImagePath,
    this.favoritesPages,
    this.hasAvatar,
    this.securityImageChangeForce,
    this.mainPageId,
    this.logoutTime,
    this.ccMenuItemCode,
    this.netSalary,
    this.totalIncome,
    this.segmentValue,
    this.segmentProfile,
    this.segmentProperty,
    this.businessLine,
    this.isSahs,
    this.customerRetailApplicationInfo,
    this.portfolioCode,
    this.nationality,
    this.workTitle,
    this.jobTitle,
    this.menuType,
    this.retirementInfo,
    this.toAccountSecurityType,
    this.isToAccount,
    this.residenceStatus,
    this.educationStatus,
    this.workingStatus,
    this.previousWorkingStatus,
    this.workArea,
    this.customerEmploymentStatus,
    this.optionalInsured,
    this.unitStatus,
    this.isMobilePhoneChanged,
    this.atmCustomerGroup,
    this.atmCardGroupCode,
    this.atmCardGroupStyle,
    this.customerProfile,
    this.recordStatus,
    this.masakDurumKodu,
    this.segmentCode,
    this.prosecutionStatus,
    this.isAccessible,
    this.dateOfDeath,
    this.isObCustomer,
    this.subSegment,
    this.subSegmentName,
    this.customerCitiBankStatus,
    this.hasTbhsDocument,
    this.tbhsVersion,
    this.unwantedProducts,
    this.customerPusulaId,
    this.isChangedOnlyGsm2,
    this.mainUserId,
    this.mainCustomerNo,
    this.mainCustomerPersonalAccountNo,
    this.isDisabledCustomer,
    this.typeOfDisabled,
    this.levelOfDisabled,
    this.loginChoice,
    this.customerStatus,
    this.esbCustomerEmail,
    this.sessionId,
    this.hearingDisableRate,
    this.shareAccounts,
    this.residenceCountryCode,
    this.identityStatus,
    this.bornCountry,
    this.hasKobakusIntegration,
    this.telephoneBankingStatus,
    this.isHasMagicNumber,
    this.hasSoftToken,
    this.acqusitionFlag,
    this.isCompany,
    this.referencePersonnel,
    this.passwordEncryptionType,
  });

  factory CustomerInfo.fromJson(Map<String, dynamic> json) {
    return _$CustomerInfoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CustomerInfoToJson(this);
  }
}

@JsonSerializable()
class PhoneList {
  @JsonKey(name: r'type')
  String? $type;
  @JsonKey(name: 'Type')
  int? type;
  @JsonKey(name: 'Ischanged')
  bool? ischanged;
  @JsonKey(name: 'CityCode')
  String? cityCode;
  @JsonKey(name: 'LoginChoice')
  String? number;
  @JsonKey(name: 'Number')
  String? countryCode;
  @JsonKey(name: 'InternalNumber')
  String? internalNumber;
  @JsonKey(name: 'TypeInformation')
  String? typeInformation;
  @JsonKey(name: 'IsConfirm')
  bool? isConfirm;
  @JsonKey(name: 'IsValidated')
  String? isValidated;
  @JsonKey(name: 'VerificationType')
  dynamic verificationType;
  @JsonKey(name: 'VerificationDate')
  String? verificationDate;

  PhoneList(
      {this.type,
      this.$type,
      this.ischanged,
      this.cityCode,
      this.number,
      this.countryCode,
      this.internalNumber,
      this.typeInformation,
      this.isConfirm,
      this.isValidated,
      this.verificationType,
      this.verificationDate});

  factory PhoneList.fromJson(Map<String, dynamic> json) {
    return _$PhoneListFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PhoneListToJson(this);
  }
}

@JsonSerializable()
class AddressList {
  @JsonKey(name: r'type')
  String? $type;
  @JsonKey(name: 'AddressType')
  int? addressType;
  @JsonKey(name: 'CountryCode')
  int? countryCode;
  @JsonKey(name: 'CountryAbrv')
  String? countryAbrv;
  @JsonKey(name: 'CityCode')
  int? cityCode;
  @JsonKey(name: 'Town')
  String? town;
  @JsonKey(name: 'District')
  String? district;
  @JsonKey(name: 'Quarter')
  String? quarter;
  @JsonKey(name: 'Avenue')
  String? avenue;
  @JsonKey(name: 'Street')
  String? street;
  @JsonKey(name: 'Site')
  String? site;
  @JsonKey(name: 'Apartment')
  String? apartment;
  @JsonKey(name: 'Number')
  int? number;
  @JsonKey(name: 'Floor')
  int? floor;
  @JsonKey(name: 'Flat')
  int? flat;
  @JsonKey(name: 'PostalCode')
  String? postalCode;
  @JsonKey(name: 'CityName')
  String? cityName;

  AddressList(
      {this.$type,
      this.addressType,
      this.countryCode,
      this.countryAbrv,
      this.cityCode,
      this.town,
      this.district,
      this.quarter,
      this.avenue,
      this.street,
      this.site,
      this.apartment,
      this.number,
      this.floor,
      this.flat,
      this.postalCode,
      this.cityName});

  factory AddressList.fromJson(Map<String, dynamic> json) {
    return _$AddressListFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AddressListToJson(this);
  }
}

@JsonSerializable()
class AddressListNew {
  @JsonKey(name: r'$type')
  String? $type;
  @JsonKey(name: 'AddressType')
  int? addressType;
  @JsonKey(name: 'CountryCode')
  int? countryCode;
  @JsonKey(name: 'CountryAbrv')
  String? countryAbrv;
  @JsonKey(name: 'CountryName')
  String? countryName;
  @JsonKey(name: 'LastModifiedBy')
  String? lastModifiedBy;
  @JsonKey(name: 'CityCode')
  int? cityCode;
  @JsonKey(name: 'City')
  String? city;
  @JsonKey(name: 'Town')
  String? town;
  @JsonKey(name: 'District')
  String? district;
  @JsonKey(name: 'Street')
  String? street;
  @JsonKey(name: 'AddressDetail')
  String? addressDetail;
  @JsonKey(name: 'PostalCode')
  String? postalCode;
  @JsonKey(name: 'ValidationLevel')
  int? validationLevel;
  @JsonKey(name: 'StateAbrv')
  String? stateAbrv;
  @JsonKey(name: 'StateName')
  String? stateName;
  @JsonKey(name: 'FullAddress')
  dynamic fullAddress;

  AddressListNew(
      {this.$type,
      this.addressType,
      this.countryCode,
      this.countryAbrv,
      this.countryName,
      this.lastModifiedBy,
      this.cityCode,
      this.city,
      this.town,
      this.district,
      this.street,
      this.addressDetail,
      this.postalCode,
      this.validationLevel,
      this.stateAbrv,
      this.stateName,
      this.fullAddress});

  factory AddressListNew.fromJson(Map<String, dynamic> json) {
    return _$AddressListNewFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AddressListNewToJson(this);
  }
}

@JsonSerializable()
class CustomerRetailApplicationInfo {
  String? $type;

  CustomerRetailApplicationInfo({this.$type});

  factory CustomerRetailApplicationInfo.fromJson(Map<String, dynamic> json) =>
      _$CustomerRetailApplicationInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerRetailApplicationInfoToJson(this);
}

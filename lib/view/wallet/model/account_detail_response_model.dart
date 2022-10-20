import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'account_detail_response_model.g.dart';

@JsonSerializable()
class AccountDetailResponseModel
    extends INetworkModel<AccountDetailResponseModel> {
  @JsonKey(name: r'$type')
  String? $type;
  @JsonKey(name: 'Data')
  Data? data;

  AccountDetailResponseModel({
    this.$type,
    this.data,
  });

  @override
  AccountDetailResponseModel fromJson(Map<String, dynamic> json) =>
      AccountDetailResponseModel.fromJson(json);

  factory AccountDetailResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AccountDetailResponseModelFromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$AccountDetailResponseModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: r'$type')
  String? $type;
  @JsonKey(name: 'AccountInfo')
  AccountInfo? accountInfo;
  @JsonKey(name: 'ReserveRemainder')
  num? reserveRemainder;
  @JsonKey(name: 'PreviousDateBalance')
  double? previousDateBalance;
  @JsonKey(name: 'CustomerKMHData')
  List<CustomerKMHData>? customerKMHData;

  Data({
    this.$type,
    this.accountInfo,
    this.reserveRemainder,
    this.previousDateBalance,
    this.customerKMHData,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class AccountInfo {
  String? $type;
  @JsonKey(name: 'AccountSuffix')
  num? accountSuffix;
  @JsonKey(name: 'BranchCode')
  num? branchCode;
  @JsonKey(name: 'CustomerNo')
  num? customerNo;
  @JsonKey(name: 'CurrencyCode')
  String? currencyCode;
  @JsonKey(name: 'AccountName')
  String? accountName;
  @JsonKey(name: 'IBANNo')
  String? iBANNo;
  @JsonKey(name: 'CaptainAccountBalance')
  num? captainAccountBalance;
  @JsonKey(name: 'AvailableCreditDepositBalance')
  num? availableCreditDepositBalance;
  @JsonKey(name: 'CaptainForeignCurrencyAccountTryBalance')
  num? captainForeignCurrencyAccountTryBalance;

  AccountInfo({
    this.$type,
    this.accountSuffix,
    this.branchCode,
    this.customerNo,
    this.currencyCode,
    this.accountName,
    this.iBANNo,
    this.captainAccountBalance,
    this.availableCreditDepositBalance,
    this.captainForeignCurrencyAccountTryBalance,
  });

  factory AccountInfo.fromJson(Map<String, dynamic> json) =>
      _$AccountInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AccountInfoToJson(this);
}

@JsonSerializable()
class CustomerKMHData {
  String? $type;
  @JsonKey(name: 'numerestRate')
  String? numerestRate;
  @JsonKey(name: 'AccountLimit')
  num? accountLimit;
  @JsonKey(name: 'UsedAmount')
  num? usedAmount;
  @JsonKey(name: 'GroupName')
  String? groupName;
  @JsonKey(name: 'DebitAccurednumerestAmountWithTax')
  num? debitAccurednumerestAmountWithTax;
  @JsonKey(name: 'SuffixNo')
  num? suffixNo;

  CustomerKMHData({
    this.$type,
    this.numerestRate,
    this.accountLimit,
    this.usedAmount,
    this.groupName,
    this.debitAccurednumerestAmountWithTax,
    this.suffixNo,
  });

  factory CustomerKMHData.fromJson(Map<String, dynamic> json) =>
      _$CustomerKMHDataFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerKMHDataToJson(this);
}

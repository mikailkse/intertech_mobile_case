import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'account_list_response_model.g.dart';

@JsonSerializable()
class AccountListResponseModel extends INetworkModel<AccountListResponseModel> {
  @JsonKey(name: r'$type')
  String? $type;
  @JsonKey(name: 'Data')
  Data? data;

  AccountListResponseModel({
    this.$type,
    this.data,
  });

  @override
  AccountListResponseModel fromJson(Map<String, dynamic> json) =>
      AccountListResponseModel.fromJson(json);

  factory AccountListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AccountListResponseModelFromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$AccountListResponseModelToJson(this);
}

@JsonSerializable()
class Data extends INetworkModel<Data> {
  @JsonKey(name: r'$type')
  String? $type;
  @JsonKey(name: 'AccountList')
  List<AccountList>? accountList;

  Data({
    this.$type,
    this.accountList,
  });

  @override
  Data fromJson(Map<String, dynamic> json) => Data.fromJson(json);

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$DataToJson(this);
}

@JsonSerializable()
class AccountList extends INetworkModel<AccountList> {
  String? $type;
  bool? isBlockedAccount;
  String? blockageType;
  bool? isPartialBlockedAccount;
  bool? isAggregatedAccount;
  int? accountSuffix;
  int? branchCode;
  @JsonKey(name: 'BranchName')
  String? branchName;
  int? customerNo;
  String? productCode;
  String? originalProductCode;
  String? projectCode;
  String? shortName;
  String? accountOpenningChannelCode;
  bool? isClosed;
  bool? isDisplayedOnInternet;
  bool? isAutoInvested;
  @JsonKey(name: 'CurrencyCode')
  String? currencyCode;
  String? analysisCode;
  int? receivableInterestRate;
  int? debtInterestRate;
  @JsonKey(name: 'AmountOfBalance')
  double? amountOfBalance;
  int? amountOfBalanceGross;
  @JsonKey(name: 'AvailableCaptainBalance')
  double? availableCaptainBalance;
  @JsonKey(name: 'AvailableBalance')
  double? availableBalance;
  int? availableBalanceGross;
  int? previousDateBalanceGross;
  bool? isPersonnelAccount;
  @JsonKey(name: 'AccountName')
  String? accountName;
  @JsonKey(name: 'IBANNo')
  String? iBANNo;
  int? captainAccountFundBalance;
  int? captainAccountBalance;
  int? availableCreditDepositBalance;
  bool? captainAccountFlag;
  bool? modernAccountFlag;
  int? modernAccountMinumumBalance;
  bool? dormantAccountFlag;
  int? valueDate;
  int? maturityDate;
  int? accountClosingDate;
  int? accountClosingUserCode;
  int? accountOpenningDate;
  String? accountOpenningUserCode;
  String? reverseBalancePositionFlag;
  String? reverseBalanceAbilityFlag;
  String? cDAFlag;
  String? blockageCodeName;
  String? blockageName;
  String? blockageReasonCode;
  String? blockageReasonCodeName;
  String? blockageExplanation;
  String? blockageUserCode;
  int? blockageAmount;
  int? blockageMaturityDate;
  int? blockageValueDate;
  int? previousDateBalance;
  int? totalPartialBlockageAmount;
  int? debitAccuredInterestAmountForKMH;
  int? captainAvailableBalance;
  String? hasSchoolPayment;
  int? availableCreditDeposit;
  int? batchDate;
  int? delayCount;
  int? minPaymentAmount;
  int? lastPaymentDate;
  int? cDALimit;
  int? debitAccruedInterestAmount;
  int? dayToMaturity;
  int? creditInterestRate;
  int? netInterestAmount;
  int? creditAccruedInterestAmount;
  String? rollType;
  bool? isSuitableForIncomeAndOut;
  bool? isPos;
  int? cdaCashSuffix;
  int? cdaAvailableLimit;
  bool? isDormantAccount;
  String? rateType;
  int? cdaChangeReasonCode;
  int? cdaReasonDescription;
  int? transactionCodeList;
  int? additionalTufeRate;
  int? transferrableBlockageAmount;
  bool? isFreeZoneAccount;

  AccountList({
    this.$type,
    this.isBlockedAccount,
    this.blockageType,
    this.isPartialBlockedAccount,
    this.isAggregatedAccount,
    this.accountSuffix,
    this.branchCode,
    this.branchName,
    this.customerNo,
    this.productCode,
    this.originalProductCode,
    this.projectCode,
    this.shortName,
    this.accountOpenningChannelCode,
    this.isClosed,
    this.isDisplayedOnInternet,
    this.isAutoInvested,
    this.currencyCode,
    this.analysisCode,
    this.receivableInterestRate,
    this.debtInterestRate,
    this.amountOfBalance,
    this.amountOfBalanceGross,
    this.availableCaptainBalance,
    this.availableBalance,
    this.availableBalanceGross,
    this.previousDateBalanceGross,
    this.isPersonnelAccount,
    this.accountName,
    this.iBANNo,
    this.captainAccountFundBalance,
    this.captainAccountBalance,
    this.availableCreditDepositBalance,
    this.captainAccountFlag,
    this.modernAccountFlag,
    this.modernAccountMinumumBalance,
    this.dormantAccountFlag,
    this.valueDate,
    this.maturityDate,
    this.accountClosingDate,
    this.accountClosingUserCode,
    this.accountOpenningDate,
    this.accountOpenningUserCode,
    this.reverseBalancePositionFlag,
    this.reverseBalanceAbilityFlag,
    this.cDAFlag,
    this.blockageCodeName,
    this.blockageName,
    this.blockageReasonCode,
    this.blockageReasonCodeName,
    this.blockageExplanation,
    this.blockageUserCode,
    this.blockageAmount,
    this.blockageMaturityDate,
    this.blockageValueDate,
    this.previousDateBalance,
    this.totalPartialBlockageAmount,
    this.debitAccuredInterestAmountForKMH,
    this.captainAvailableBalance,
    this.hasSchoolPayment,
    this.availableCreditDeposit,
    this.batchDate,
    this.delayCount,
    this.minPaymentAmount,
    this.lastPaymentDate,
    this.cDALimit,
    this.debitAccruedInterestAmount,
    this.dayToMaturity,
    this.creditInterestRate,
    this.netInterestAmount,
    this.creditAccruedInterestAmount,
    this.rollType,
    this.isSuitableForIncomeAndOut,
    this.isPos,
    this.cdaCashSuffix,
    this.cdaAvailableLimit,
    this.isDormantAccount,
    this.rateType,
    this.cdaChangeReasonCode,
    this.cdaReasonDescription,
    this.transactionCodeList,
    this.additionalTufeRate,
    this.transferrableBlockageAmount,
    this.isFreeZoneAccount,
  });

  @override
  AccountList fromJson(Map<String, dynamic> json) => AccountList.fromJson(json);

  factory AccountList.fromJson(Map<String, dynamic> json) =>
      _$AccountListFromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$AccountListToJson(this);
}

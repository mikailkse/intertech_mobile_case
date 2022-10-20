// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_detail_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountDetailResponseModel _$AccountDetailResponseModelFromJson(
        Map<String, dynamic> json) =>
    AccountDetailResponseModel(
      $type: json[r'$type'] as String?,
      data: json['Data'] == null
          ? null
          : Data.fromJson(json['Data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountDetailResponseModelToJson(
        AccountDetailResponseModel instance) =>
    <String, dynamic>{
      r'$type': instance.$type,
      'Data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      $type: json[r'$type'] as String?,
      accountInfo: json['AccountInfo'] == null
          ? null
          : AccountInfo.fromJson(json['AccountInfo'] as Map<String, dynamic>),
      reserveRemainder: json['ReserveRemainder'] as num?,
      previousDateBalance: (json['PreviousDateBalance'] as num?)?.toDouble(),
      customerKMHData: (json['CustomerKMHData'] as List<dynamic>?)
          ?.map((e) => CustomerKMHData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      r'$type': instance.$type,
      'AccountInfo': instance.accountInfo,
      'ReserveRemainder': instance.reserveRemainder,
      'PreviousDateBalance': instance.previousDateBalance,
      'CustomerKMHData': instance.customerKMHData,
    };

AccountInfo _$AccountInfoFromJson(Map<String, dynamic> json) => AccountInfo(
      $type: json[r'$type'] as String?,
      accountSuffix: json['AccountSuffix'] as num?,
      branchCode: json['BranchCode'] as num?,
      customerNo: json['CustomerNo'] as num?,
      currencyCode: json['CurrencyCode'] as String?,
      accountName: json['AccountName'] as String?,
      iBANNo: json['IBANNo'] as String?,
      captainAccountBalance: json['CaptainAccountBalance'] as num?,
      availableCreditDepositBalance:
          json['AvailableCreditDepositBalance'] as num?,
      captainForeignCurrencyAccountTryBalance:
          json['CaptainForeignCurrencyAccountTryBalance'] as num?,
    );

Map<String, dynamic> _$AccountInfoToJson(AccountInfo instance) =>
    <String, dynamic>{
      r'$type': instance.$type,
      'AccountSuffix': instance.accountSuffix,
      'BranchCode': instance.branchCode,
      'CustomerNo': instance.customerNo,
      'CurrencyCode': instance.currencyCode,
      'AccountName': instance.accountName,
      'IBANNo': instance.iBANNo,
      'CaptainAccountBalance': instance.captainAccountBalance,
      'AvailableCreditDepositBalance': instance.availableCreditDepositBalance,
      'CaptainForeignCurrencyAccountTryBalance':
          instance.captainForeignCurrencyAccountTryBalance,
    };

CustomerKMHData _$CustomerKMHDataFromJson(Map<String, dynamic> json) =>
    CustomerKMHData(
      $type: json[r'$type'] as String?,
      numerestRate: json['numerestRate'] as String?,
      accountLimit: json['AccountLimit'] as num?,
      usedAmount: json['UsedAmount'] as num?,
      groupName: json['GroupName'] as String?,
      debitAccurednumerestAmountWithTax:
          json['DebitAccurednumerestAmountWithTax'] as num?,
      suffixNo: json['SuffixNo'] as num?,
    );

Map<String, dynamic> _$CustomerKMHDataToJson(CustomerKMHData instance) =>
    <String, dynamic>{
      r'$type': instance.$type,
      'numerestRate': instance.numerestRate,
      'AccountLimit': instance.accountLimit,
      'UsedAmount': instance.usedAmount,
      'GroupName': instance.groupName,
      'DebitAccurednumerestAmountWithTax':
          instance.debitAccurednumerestAmountWithTax,
      'SuffixNo': instance.suffixNo,
    };

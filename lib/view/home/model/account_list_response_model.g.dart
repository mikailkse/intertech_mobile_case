// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountListResponseModel _$AccountListResponseModelFromJson(
        Map<String, dynamic> json) =>
    AccountListResponseModel(
      $type: json[r'$type'] as String?,
      data: json['Data'] == null
          ? null
          : Data.fromJson(json['Data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountListResponseModelToJson(
        AccountListResponseModel instance) =>
    <String, dynamic>{
      r'$type': instance.$type,
      'Data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      $type: json[r'$type'] as String?,
      accountList: (json['AccountList'] as List<dynamic>?)
          ?.map((e) => AccountList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      r'$type': instance.$type,
      'AccountList': instance.accountList,
    };

AccountList _$AccountListFromJson(Map<String, dynamic> json) => AccountList(
      $type: json[r'$type'] as String?,
      isBlockedAccount: json['isBlockedAccount'] as bool?,
      blockageType: json['blockageType'] as String?,
      isPartialBlockedAccount: json['isPartialBlockedAccount'] as bool?,
      isAggregatedAccount: json['isAggregatedAccount'] as bool?,
      accountSuffix: json['accountSuffix'] as int?,
      branchCode: json['branchCode'] as int?,
      branchName: json['BranchName'] as String?,
      customerNo: json['customerNo'] as int?,
      productCode: json['productCode'] as String?,
      originalProductCode: json['originalProductCode'] as String?,
      projectCode: json['projectCode'] as String?,
      shortName: json['shortName'] as String?,
      accountOpenningChannelCode: json['accountOpenningChannelCode'] as String?,
      isClosed: json['isClosed'] as bool?,
      isDisplayedOnInternet: json['isDisplayedOnInternet'] as bool?,
      isAutoInvested: json['isAutoInvested'] as bool?,
      currencyCode: json['CurrencyCode'] as String?,
      analysisCode: json['analysisCode'] as String?,
      receivableInterestRate: json['receivableInterestRate'] as int?,
      debtInterestRate: json['debtInterestRate'] as int?,
      amountOfBalance: (json['AmountOfBalance'] as num?)?.toDouble(),
      amountOfBalanceGross: json['amountOfBalanceGross'] as int?,
      availableCaptainBalance:
          (json['AvailableCaptainBalance'] as num?)?.toDouble(),
      availableBalance: (json['AvailableBalance'] as num?)?.toDouble(),
      availableBalanceGross: json['availableBalanceGross'] as int?,
      previousDateBalanceGross: json['previousDateBalanceGross'] as int?,
      isPersonnelAccount: json['isPersonnelAccount'] as bool?,
      accountName: json['AccountName'] as String?,
      iBANNo: json['IBANNo'] as String?,
      captainAccountFundBalance: json['captainAccountFundBalance'] as int?,
      captainAccountBalance: json['captainAccountBalance'] as int?,
      availableCreditDepositBalance:
          json['availableCreditDepositBalance'] as int?,
      captainAccountFlag: json['captainAccountFlag'] as bool?,
      modernAccountFlag: json['modernAccountFlag'] as bool?,
      modernAccountMinumumBalance: json['modernAccountMinumumBalance'] as int?,
      dormantAccountFlag: json['dormantAccountFlag'] as bool?,
      valueDate: json['valueDate'] as int?,
      maturityDate: json['maturityDate'] as int?,
      accountClosingDate: json['accountClosingDate'] as int?,
      accountClosingUserCode: json['accountClosingUserCode'] as int?,
      accountOpenningDate: json['accountOpenningDate'] as int?,
      accountOpenningUserCode: json['accountOpenningUserCode'] as String?,
      reverseBalancePositionFlag: json['reverseBalancePositionFlag'] as String?,
      reverseBalanceAbilityFlag: json['reverseBalanceAbilityFlag'] as String?,
      cDAFlag: json['cDAFlag'] as String?,
      blockageCodeName: json['blockageCodeName'] as String?,
      blockageName: json['blockageName'] as String?,
      blockageReasonCode: json['blockageReasonCode'] as String?,
      blockageReasonCodeName: json['blockageReasonCodeName'] as String?,
      blockageExplanation: json['blockageExplanation'] as String?,
      blockageUserCode: json['blockageUserCode'] as String?,
      blockageAmount: json['blockageAmount'] as int?,
      blockageMaturityDate: json['blockageMaturityDate'] as int?,
      blockageValueDate: json['blockageValueDate'] as int?,
      previousDateBalance: json['previousDateBalance'] as int?,
      totalPartialBlockageAmount: json['totalPartialBlockageAmount'] as int?,
      debitAccuredInterestAmountForKMH:
          json['debitAccuredInterestAmountForKMH'] as int?,
      captainAvailableBalance: json['captainAvailableBalance'] as int?,
      hasSchoolPayment: json['hasSchoolPayment'] as String?,
      availableCreditDeposit: json['availableCreditDeposit'] as int?,
      batchDate: json['batchDate'] as int?,
      delayCount: json['delayCount'] as int?,
      minPaymentAmount: json['minPaymentAmount'] as int?,
      lastPaymentDate: json['lastPaymentDate'] as int?,
      cDALimit: json['cDALimit'] as int?,
      debitAccruedInterestAmount: json['debitAccruedInterestAmount'] as int?,
      dayToMaturity: json['dayToMaturity'] as int?,
      creditInterestRate: json['creditInterestRate'] as int?,
      netInterestAmount: json['netInterestAmount'] as int?,
      creditAccruedInterestAmount: json['creditAccruedInterestAmount'] as int?,
      rollType: json['rollType'] as String?,
      isSuitableForIncomeAndOut: json['isSuitableForIncomeAndOut'] as bool?,
      isPos: json['isPos'] as bool?,
      cdaCashSuffix: json['cdaCashSuffix'] as int?,
      cdaAvailableLimit: json['cdaAvailableLimit'] as int?,
      isDormantAccount: json['isDormantAccount'] as bool?,
      rateType: json['rateType'] as String?,
      cdaChangeReasonCode: json['cdaChangeReasonCode'] as int?,
      cdaReasonDescription: json['cdaReasonDescription'] as int?,
      transactionCodeList: json['transactionCodeList'] as int?,
      additionalTufeRate: json['additionalTufeRate'] as int?,
      transferrableBlockageAmount: json['transferrableBlockageAmount'] as int?,
      isFreeZoneAccount: json['isFreeZoneAccount'] as bool?,
    );

Map<String, dynamic> _$AccountListToJson(AccountList instance) =>
    <String, dynamic>{
      r'$type': instance.$type,
      'isBlockedAccount': instance.isBlockedAccount,
      'blockageType': instance.blockageType,
      'isPartialBlockedAccount': instance.isPartialBlockedAccount,
      'isAggregatedAccount': instance.isAggregatedAccount,
      'accountSuffix': instance.accountSuffix,
      'branchCode': instance.branchCode,
      'BranchName': instance.branchName,
      'customerNo': instance.customerNo,
      'productCode': instance.productCode,
      'originalProductCode': instance.originalProductCode,
      'projectCode': instance.projectCode,
      'shortName': instance.shortName,
      'accountOpenningChannelCode': instance.accountOpenningChannelCode,
      'isClosed': instance.isClosed,
      'isDisplayedOnInternet': instance.isDisplayedOnInternet,
      'isAutoInvested': instance.isAutoInvested,
      'CurrencyCode': instance.currencyCode,
      'analysisCode': instance.analysisCode,
      'receivableInterestRate': instance.receivableInterestRate,
      'debtInterestRate': instance.debtInterestRate,
      'AmountOfBalance': instance.amountOfBalance,
      'amountOfBalanceGross': instance.amountOfBalanceGross,
      'AvailableCaptainBalance': instance.availableCaptainBalance,
      'AvailableBalance': instance.availableBalance,
      'availableBalanceGross': instance.availableBalanceGross,
      'previousDateBalanceGross': instance.previousDateBalanceGross,
      'isPersonnelAccount': instance.isPersonnelAccount,
      'AccountName': instance.accountName,
      'IBANNo': instance.iBANNo,
      'captainAccountFundBalance': instance.captainAccountFundBalance,
      'captainAccountBalance': instance.captainAccountBalance,
      'availableCreditDepositBalance': instance.availableCreditDepositBalance,
      'captainAccountFlag': instance.captainAccountFlag,
      'modernAccountFlag': instance.modernAccountFlag,
      'modernAccountMinumumBalance': instance.modernAccountMinumumBalance,
      'dormantAccountFlag': instance.dormantAccountFlag,
      'valueDate': instance.valueDate,
      'maturityDate': instance.maturityDate,
      'accountClosingDate': instance.accountClosingDate,
      'accountClosingUserCode': instance.accountClosingUserCode,
      'accountOpenningDate': instance.accountOpenningDate,
      'accountOpenningUserCode': instance.accountOpenningUserCode,
      'reverseBalancePositionFlag': instance.reverseBalancePositionFlag,
      'reverseBalanceAbilityFlag': instance.reverseBalanceAbilityFlag,
      'cDAFlag': instance.cDAFlag,
      'blockageCodeName': instance.blockageCodeName,
      'blockageName': instance.blockageName,
      'blockageReasonCode': instance.blockageReasonCode,
      'blockageReasonCodeName': instance.blockageReasonCodeName,
      'blockageExplanation': instance.blockageExplanation,
      'blockageUserCode': instance.blockageUserCode,
      'blockageAmount': instance.blockageAmount,
      'blockageMaturityDate': instance.blockageMaturityDate,
      'blockageValueDate': instance.blockageValueDate,
      'previousDateBalance': instance.previousDateBalance,
      'totalPartialBlockageAmount': instance.totalPartialBlockageAmount,
      'debitAccuredInterestAmountForKMH':
          instance.debitAccuredInterestAmountForKMH,
      'captainAvailableBalance': instance.captainAvailableBalance,
      'hasSchoolPayment': instance.hasSchoolPayment,
      'availableCreditDeposit': instance.availableCreditDeposit,
      'batchDate': instance.batchDate,
      'delayCount': instance.delayCount,
      'minPaymentAmount': instance.minPaymentAmount,
      'lastPaymentDate': instance.lastPaymentDate,
      'cDALimit': instance.cDALimit,
      'debitAccruedInterestAmount': instance.debitAccruedInterestAmount,
      'dayToMaturity': instance.dayToMaturity,
      'creditInterestRate': instance.creditInterestRate,
      'netInterestAmount': instance.netInterestAmount,
      'creditAccruedInterestAmount': instance.creditAccruedInterestAmount,
      'rollType': instance.rollType,
      'isSuitableForIncomeAndOut': instance.isSuitableForIncomeAndOut,
      'isPos': instance.isPos,
      'cdaCashSuffix': instance.cdaCashSuffix,
      'cdaAvailableLimit': instance.cdaAvailableLimit,
      'isDormantAccount': instance.isDormantAccount,
      'rateType': instance.rateType,
      'cdaChangeReasonCode': instance.cdaChangeReasonCode,
      'cdaReasonDescription': instance.cdaReasonDescription,
      'transactionCodeList': instance.transactionCodeList,
      'additionalTufeRate': instance.additionalTufeRate,
      'transferrableBlockageAmount': instance.transferrableBlockageAmount,
      'isFreeZoneAccount': instance.isFreeZoneAccount,
    };

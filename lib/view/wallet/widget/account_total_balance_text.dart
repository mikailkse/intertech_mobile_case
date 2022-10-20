import 'package:flutter/material.dart';
import '../viewmodel/wallet_view_model.dart';
import 'package:provider/provider.dart';

import '../../../core/components/text/headline/headline1_text.dart';
import '../../../core/components/text/headline/headline4_text.dart';
import '../../../core/components/text/headline/headline5_text.dart';
import '../../../core/constants/color/app_colors.dart';
import '../../../core/extensions/string_extensions.dart';

class AccountTotalBalanceText extends StatelessWidget {
  const AccountTotalBalanceText({super.key});

  @override
  Widget build(BuildContext context) {
    var accountInfoModel =
        context.watch<WalletViewModel>().accountDetailResponseModel?.data;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Headline5Text(
            text: 'Toplam Bakiye',
            color: AppColors.endeavour,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Headline1Text(
                text: StringLocalization.portfolioCurrency.format(
                  (accountInfoModel?.previousDateBalance.toString() ?? '')
                          .contains('-')
                      ? double.parse(
                          (accountInfoModel?.previousDateBalance.toString() ??
                              '0'),
                        )
                      : double.parse(
                          (accountInfoModel?.previousDateBalance.toString() ??
                              '0'),
                        ),
                ),
                color: AppColors.softGrey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Headline4Text(
                  text:
                      accountInfoModel?.accountInfo?.currencyCode.toString() ??
                          '',
                  color: AppColors.endeavour,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

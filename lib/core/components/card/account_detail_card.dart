import 'package:flutter/material.dart';
import 'package:mobile_case_mikailkse/core/components/container/shadow_container.dart';
import 'package:mobile_case_mikailkse/core/components/divider/soft_grey_divider.dart';
import 'package:mobile_case_mikailkse/view/auth/login/viewmodel/login_view_model.dart';
import 'package:provider/provider.dart';

import '../../../view/home/viewmodel/home_view_model.dart';
import '../../constants/color/app_colors.dart';
import '../../extensions/context_extensions.dart';
import '../../extensions/string_extensions.dart';
import '../text/body/body_small_text.dart';
import '../text/headline/headline6_text.dart';
import 'package:mobile_case_mikailkse/view/home/model/account_list_response_model.dart';

class AccountDetailCard extends StatelessWidget {
  final HomeViewModel viewModel;
  final int index;
  const AccountDetailCard(
      {super.key, required this.viewModel, required this.index});

  @override
  Widget build(BuildContext context) {
    var accountList =
        viewModel.accountListResponseModel?.data?.accountList?[index];
    return ShadowContainer(
      margin: context.paddingLow,
      padding: context.paddingLow,
      child: Column(
        children: [
          Text(
            context.read<LoginViewModel>().getAt?.id.toString() ?? '',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildAccountNameAndCurrenyCode(accountList),
              buildBranchNameText(accountList),
            ],
          ),
          SoftDividerGrey(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildTotalBalanceText(accountList),
              buildBalanceText(accountList),
            ],
          ),
        ],
      ),
    );
  }

  // Hesap adı ve Para birimi

  Headline6Text buildAccountNameAndCurrenyCode(AccountList? accountList) {
    return Headline6Text(
      text: '(${accountList?.currencyCode.toString()}) '
          '${accountList?.accountName.toString()} ',
      color: AppColors.black,
    );
  }

  // Şube adı

  Column buildBranchNameText(AccountList? accountList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Headline6Text(
          text: 'ŞUBE ',
          color: AppColors.gunPowder,
        ),
        const SizedBox(height: 5),
        BodySmallText(
          text: accountList?.branchName.toString() ?? '',
          color: AppColors.endeavour,
        ),
      ],
    );
  }

  // Kullanılabilir bakiye

  Column buildTotalBalanceText(AccountList? accountList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Headline6Text(
          text: 'KULLANILABİLİR BAKİYE',
          color: AppColors.gunPowder,
        ),
        const SizedBox(height: 5),
        BodySmallText(
          text: StringLocalization.portfolioCurrency.format(
            (accountList?.availableBalance.toString() ?? '').contains('-')
                ? double.parse(
                    (accountList?.availableBalance.toString() ?? ''),
                  )
                : double.parse(
                    (accountList?.availableBalance.toString() ?? ''),
                  ),
          ),
          color: AppColors.endeavour,
        ),
      ],
    );
  }

  // Bakiye

  Column buildBalanceText(AccountList? accountList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Headline6Text(
          text: 'BAKİYE',
          color: AppColors.gunPowder,
        ),
        const SizedBox(height: 5),
        BodySmallText(
          text: StringLocalization.portfolioCurrency.format(
            (accountList?.amountOfBalance.toString() ?? '').contains('-')
                ? double.parse(
                    (accountList?.amountOfBalance.toString() ?? ''),
                  )
                : double.parse(
                    (accountList?.amountOfBalance.toString() ?? ''),
                  ),
          ),
          color: AppColors.endeavour,
        ),
      ],
    );
  }
}

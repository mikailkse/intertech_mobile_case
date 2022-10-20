import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/components/button/elevatedbutton/endeavour_elevated_button.dart';
import '../../../core/components/card/wallet_info_list_card.dart';
import '../../../core/components/container/soft_grey_container.dart';
import '../../../core/components/text/button/button_small_text.dart';
import '../../../core/constants/color/app_colors.dart';
import '../../../core/init/navigation/navigation_service.dart';
import '../../auth/login/view/login_view.dart';
import '../viewmodel/wallet_view_model.dart';
import '../widget/account_total_balance_text.dart';

class WalletView extends StatefulWidget {
  static const routeName = 'walletView';
  const WalletView({super.key});

  @override
  State<WalletView> createState() => _WalletViewState();
}

class _WalletViewState extends State<WalletView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<WalletViewModel>().callVexanaService();
        context.read<WalletViewModel>().getAccountDetailService();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.watch<WalletViewModel>().isLoading == true
          ? const Center(child: CircularProgressIndicator.adaptive())
          : buildColumnBody(),
    );
  }

  Widget buildColumnBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const AccountTotalBalanceText(), //Toplam bakiyenin gösterildigi widget
          SoftGreyContainer(text: 'KULLANICI BİLGİLERİ'),
          Consumer<WalletViewModel>(
            builder: (context, viewModel, child) => Column(
              children: [
                buildAccountInformation(viewModel),
                SoftGreyContainer(text: 'BAKİYE BİLGİLERİ'),
                buildBalanceInformation(viewModel),
                const SizedBox(height: 50),
                EndeavourElevatedButton(
                  onPressed: () => NavigationService.instance
                      .navigateToPageClear(path: LoginView.routeName),
                  child: ButtonSmallText(
                    text: 'Çıkış Yap',
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Kullanıcının bilgilerini gösterdigi liste

  WalletInfoListCard buildAccountInformation(WalletViewModel viewModel) {
    return WalletInfoListCard(
      walletInfoText: const ['HESAP ADI', 'HESAP NUMARASI', 'IBAN'],
      walletInfoText1: [
        viewModel.accountDetailResponseModel?.data?.accountInfo?.accountName
                .toString() ??
            '',
        viewModel.accountDetailResponseModel?.data?.accountInfo?.customerNo
                .toString() ??
            '',
        viewModel.accountDetailResponseModel?.data?.accountInfo?.iBANNo
                .toString() ??
            '',
      ],
    );
  }

  // Hesap bilgilerini gösterdigi liste

  WalletInfoListCard buildBalanceInformation(WalletViewModel viewModel) {
    return WalletInfoListCard(
      walletInfoText: const [
        'TOPLAM BAKİYE',
        'BAKİYE',
        'KREDİLİ MEVDUAT HESABI',
        'DÖVİZ HESAP BAKİYESİ'
      ],
      walletInfoText1: [
        viewModel.accountDetailResponseModel?.data?.previousDateBalance
                .toString() ??
            '',
        viewModel.accountDetailResponseModel?.data?.accountInfo
                ?.captainAccountBalance
                .toString() ??
            '',
        viewModel.accountDetailResponseModel?.data?.accountInfo
                ?.availableCreditDepositBalance
                .toString() ??
            '',
        viewModel.accountDetailResponseModel?.data?.accountInfo
                ?.captainForeignCurrencyAccountTryBalance
                .toString() ??
            ''
      ],
    );
  }
}

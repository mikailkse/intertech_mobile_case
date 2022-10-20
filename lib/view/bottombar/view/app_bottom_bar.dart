import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/components/bottomnavigationbar/custom_bottom_navigation_bar.dart';
import '../../../core/components/container/black_container.dart';
import '../../../core/components/text/headline/headline5_text.dart';
import '../../../core/constants/color/app_colors.dart';
import '../../home/view/home_view.dart';
import '../../wallet/view/wallet_view.dart';
import '../viewmodel/app_bottom_bar_view_model.dart';

class AppBottomBar extends StatelessWidget {
  static const routeName = 'appBottomBarView';
  const AppBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.read<AppBottomBarViewModel>().selectedIndex == 0
            ? Headline5Text(
                text: 'Hesaplar',
                color: AppColors.white,
              )
            : Headline5Text(
                text: 'Hesap Detay',
                color: AppColors.white,
              ),
      ),
      bottomNavigationBar: BlackContainer(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: CustomBottomNavigationBar(context: context),
        ),
      ),
      body: screens[context.watch<AppBottomBarViewModel>().selectedIndex],
    );
  }
}

List screens = [
  const HomeView(),
  const WalletView(),
];

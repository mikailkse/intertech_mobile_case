import 'package:flutter/material.dart';

import '../../constants/color/app_colors.dart';
import '../../extensions/context_extensions.dart';
import '../divider/soft_grey_divider.dart';
import '../text/headline/headline5_text.dart';
import '../text/headline/headline6_text.dart';

class WalletInfoListCard extends StatelessWidget {
  final List<String> walletInfoText;
  final List<String> walletInfoText1;
  const WalletInfoListCard({
    Key? key,
    required this.walletInfoText,
    required this.walletInfoText1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: walletInfoText.length,
        separatorBuilder: (context, index) => SoftDividerGrey(),
        itemBuilder: (context, index) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Headline5Text(
                  text: walletInfoText[index].toString(),
                  color: AppColors.endeavour,
                ),
                Headline6Text(
                  text: walletInfoText1[index].toString(),
                  color: AppColors.armadillo,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

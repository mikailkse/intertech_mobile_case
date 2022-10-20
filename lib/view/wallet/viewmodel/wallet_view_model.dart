import 'package:flutter/material.dart';

import '../../../core/init/network/network/network_manager.dart';
import '../model/account_detail_response_model.dart';
import '../service/wallet_service.dart';

class WalletViewModel extends ChangeNotifier {
  WalletService? walletService;

  callVexanaService() {
    walletService = WalletService(VexanaManager.instance.networkManager);
    notifyListeners();
  }

  bool isObscure = true;

  void isLockStateChange() {
    isObscure = !isObscure;
    notifyListeners();
  }

  // ACCOUNTDETAİL SERVİCE

  AccountDetailResponseModel? accountDetailResponseModel;

  bool isLoading = false;

  void changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  Future<void> getAccountDetailService() async {
    changeLoading();
    final response = await walletService?.getAccountDetail();
    accountDetailResponseModel = response;
    changeLoading();
  }
  // ACCOUNTDETAİL SERVİCE
}

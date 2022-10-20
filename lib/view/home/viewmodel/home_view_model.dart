import 'package:flutter/material.dart';

import '../../../core/init/network/network/network_manager.dart';
import '../model/account_list_response_model.dart';
import '../service/home_service.dart';

class HomeViewModel extends ChangeNotifier {
  HomeService? homeService;

  callVexanaService() {
    homeService = HomeService(VexanaManager.instance.networkManager);
    notifyListeners();
  }

  // ACCOUNTLIST SERVİCE

  AccountListResponseModel? accountListResponseModel;

  bool isLoading = false;

  void changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  Future<void> getAccountListService() async {
    changeLoading();
    final response = await homeService?.getAccountList();
    accountListResponseModel = response;
    changeLoading();
  }

  // ACCOUNTLIST SERVİCE
}

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../../../core/components/flushbar/notifications_flushbar.dart';
import '../../../../core/init/navigation/navigation_service.dart';
import '../../../../core/init/network/network/network_manager.dart';
import '../../../bottombar/view/app_bottom_bar.dart';
import '../model/hiveModel/login_hive_model.dart';
import '../model/login_response_model.dart';
import '../service/login_service.dart';

class LoginViewModel extends ChangeNotifier {
  LoginService? loginService;

  callVexanaService() {
    // Servis katmanı'nı call etmek için inits. içinde çağırmamız gereken fonksiyon
    loginService = LoginService(VexanaManager.instance.networkManager);
    notifyListeners();
  }

  GlobalKey<FormState> formState = GlobalKey();

  bool isLockOpen = true;

  void isLockStateChange() {
    isLockOpen = !isLockOpen;
    notifyListeners();
  }

  // HİVE

  // Login sonrası responsedan gelen dataları cache tutuyoruz

  Box<LoginHiveModel> box = Hive.box<LoginHiveModel>('loginResponseModel');
  LoginHiveModel? getAt;
  LoginHiveModel? getAtIndex(int index) {
    getAt = box.getAt(index);
    return getAt;
  }

  // HİVE

  // LOGIN SERVİCE

  LoginResponseModel? loginResponseModel;

  bool isLoading = false;

// Login servisi loading

  void changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

// Login servisi'ni parse ettigimiz fonksiyon

  Future<void> getLoginService() async {
    changeLoading();
    final response = await loginService?.getLoginService();
    loginResponseModel = response;
    changeLoading();
  }

  // LOGIN SERVİCE

  void buildNavigateHomeFunc(BuildContext context) async {
    if (formState.currentState!.validate()) {
      getLoginService();
      NavigationService.instance
          .navigateToPageClear(path: AppBottomBar.routeName);
      showFlushbarWidget('Giriş başarılı hoşgeldiniz!').show(context);
    } else {
      showFlushbarWidget('Lütfen eksik bilgeri doldurdunuz!').show(context);
    }
  }
}

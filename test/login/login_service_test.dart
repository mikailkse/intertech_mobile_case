import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_case_mikailkse/core/init/network/network/network_manager.dart';
import 'package:mobile_case_mikailkse/view/auth/login/service/ILoginService.dart';
import 'package:mobile_case_mikailkse/view/auth/login/service/login_service.dart';

void main() {
  ILoginService? loginService;
  setUp(() {
    loginService = LoginService(VexanaManager.instance.networkManager);
  });
  test('Login Service', () async {
    final response = await loginService?.getLoginService();

    expect(response, isNotNull);
  });
}

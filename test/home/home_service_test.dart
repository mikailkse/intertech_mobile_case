import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_case_mikailkse/core/init/network/network/network_manager.dart';
import 'package:mobile_case_mikailkse/view/home/service/IHomeService.dart';
import 'package:mobile_case_mikailkse/view/home/service/home_service.dart';

void main() {
  IHomeService? homeService;
  setUp(() {
    homeService = HomeService(VexanaManager.instance.networkManager);
  });
  test('Home Service', () async {
    final response = await homeService?.getAccountList();

    expect(response, isNotNull);
  });
}

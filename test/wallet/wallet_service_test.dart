import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_case_mikailkse/core/init/network/network/network_manager.dart';
import 'package:mobile_case_mikailkse/view/wallet/service/IWalletService.dart';
import 'package:mobile_case_mikailkse/view/wallet/service/wallet_service.dart';

void main() {
  IWalletService? walletService;
  setUp(() {
    walletService = WalletService(VexanaManager.instance.networkManager);
  });
  test('Wallet Service', () async {
    final response = await walletService?.getAccountDetail();

    expect(response, isNotNull);
  });
}

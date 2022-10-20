import 'package:vexana/vexana.dart';

import '../../../core/init/network/networkroutes/network_routes.dart';
import '../model/account_detail_response_model.dart';
import 'IWalletService.dart';

class WalletService extends IWalletService {
  WalletService(super.manager);

  @override
  Future<AccountDetailResponseModel?>? getAccountDetail() async {
    final response = await manager
        .send<AccountDetailResponseModel, AccountDetailResponseModel>(
      NetworkRoutes.ACCOUNTDETAIL.rawValue,
      parseModel: AccountDetailResponseModel(),
      method: RequestType.GET,
    );
    return response.data;
  }
}

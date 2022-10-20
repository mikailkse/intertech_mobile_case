import 'package:vexana/vexana.dart';

import '../../../core/init/network/networkroutes/network_routes.dart';
import '../model/account_list_response_model.dart';
import 'IHomeService.dart';

class HomeService extends IHomeService {
  HomeService(super.manager);

  @override
  Future<AccountListResponseModel?>? getAccountList() async {
    final response =
        await manager.send<AccountListResponseModel, AccountListResponseModel>(
      NetworkRoutes.ACCOUNTLIST.rawValue,
      parseModel: AccountListResponseModel(),
      method: RequestType.GET,
    );
    return response.data;
  }
}

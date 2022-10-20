import 'package:vexana/vexana.dart';

import '../../../../core/init/network/networkroutes/network_routes.dart';
import '../model/login_response_model.dart';
import 'ILoginService.dart';

class LoginService extends ILoginService {
  LoginService(super.manager);

  @override
  Future<LoginResponseModel?>? getLoginService() async {
    final response = await manager.send<LoginResponseModel, LoginResponseModel>(
      NetworkRoutes.LOGIN.rawValue,
      parseModel: LoginResponseModel(),
      method: RequestType.GET,
    );
    return response.data;
  }
}

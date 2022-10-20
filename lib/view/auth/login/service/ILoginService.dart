// ignore_for_file: file_names

import 'package:mobile_case_mikailkse/view/auth/login/model/login_response_model.dart';
import 'package:vexana/vexana.dart';

abstract class ILoginService {
  final INetworkManager manager;

  ILoginService(this.manager);

  Future<LoginResponseModel?>? getLoginService();
}

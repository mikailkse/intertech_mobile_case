// ignore_for_file: file_names

import 'package:vexana/vexana.dart';

import '../model/account_list_response_model.dart';

abstract class IHomeService {
  final INetworkManager manager;

  IHomeService(this.manager);

  Future<AccountListResponseModel?>? getAccountList();
}

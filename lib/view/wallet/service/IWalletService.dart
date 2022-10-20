// ignore_for_file: file_names

import 'package:vexana/vexana.dart';

import '../model/account_detail_response_model.dart';

abstract class IWalletService {
  final INetworkManager manager;

  IWalletService(this.manager);

  Future<AccountDetailResponseModel?>? getAccountDetail();
}

// ignore_for_file: constant_identifier_names

enum NetworkRoutes {
  LOGIN,
  ACCOUNTLIST,
  ACCOUNTDETAIL,
}

extension NetwrokRoutesString on NetworkRoutes {
  String get rawValue {
    switch (this) {
      case NetworkRoutes.LOGIN:
        return '/loginresponse.json';
      case NetworkRoutes.ACCOUNTLIST:
        return '/accountlistresponse.json';
      case NetworkRoutes.ACCOUNTDETAIL:
        return '/accountdetailresponse.json';
      default:
        throw Exception('Routes Not Found');
    }
  }
}

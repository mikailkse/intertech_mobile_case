import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'app.dart';
import 'view/auth/login/model/hiveModel/login_hive_model.dart';

Future<void> main() async {
  await Hive.initFlutter("mobilecase");
  await Hive.openBox<LoginHiveModel>('loginResponseModel');
  Hive.registerAdapter<LoginHiveModel>(LoginHiveModelAdapter());
  runApp(
    const MyApp(),
  );
}

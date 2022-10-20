import 'package:flutter/material.dart';
import 'package:mobile_case_mikailkse/view/auth/login/viewmodel/login_view_model.dart';
import 'package:mobile_case_mikailkse/view/bottombar/viewmodel/app_bottom_bar_view_model.dart';
import 'package:mobile_case_mikailkse/view/home/viewmodel/home_view_model.dart';
import 'package:mobile_case_mikailkse/view/wallet/viewmodel/wallet_view_model.dart';
import 'package:provider/provider.dart';

import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';
import 'core/init/theme/lightTheme/endeavour_theme.dart';
import 'view/auth/login/view/login_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => AppBottomBarViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => WalletViewModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Mobile Case',
        onGenerateRoute: NavigationRoute.instance.generateRoute,
        navigatorKey: NavigationService.instance.navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: endeavourTheme,
        home: const LoginView(),
      ),
    );
  }
}

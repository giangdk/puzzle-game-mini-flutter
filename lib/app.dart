import 'package:puzzle/features/presentation/routes/app_pages.dart';
import 'package:puzzle/features/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:get/get.dart';

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: navigatorKey,
      title: 'moon.vn',
      theme: ThemeData.light(useMaterial3: false),
      initialRoute: AppRoutes.splash,
      smartManagement: SmartManagement.full,
      getPages: AppPages.pages,
      navigatorObservers: [
        routeObserver,
      ],
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      home: const SizedBox.shrink(),
    );
  }
}

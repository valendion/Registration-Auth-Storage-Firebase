import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_revamph/page/login_page.dart';
import 'utils/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Test Revamph',
      getPages: Routes.getPages,
      initialRoute: LoginPage.nameRoute,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
    );
  }
}

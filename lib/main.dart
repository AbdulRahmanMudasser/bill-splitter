import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tip_calculator/bindings/controllers_bindings.dart';
import 'package:tip_calculator/routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarColor: Colors.transparent,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bill Splitter',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.INITIAL,
      initialBinding: ControllersBindings(),
      getPages: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}

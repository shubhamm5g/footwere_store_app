import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:footwere_store_app/controller/admin/home_controller.dart';
import 'package:footwere_store_app/controller/client/client_controller.dart';
import 'package:footwere_store_app/controller/client/login_controller.dart';
import 'package:footwere_store_app/firebase_options.dart';

import 'package:footwere_store_app/screens/admin/home_page.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Get.put(HomeController());
  Get.put(ClientController());
  Get.put(LoginController());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
            headlineLarge: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.indigoAccent),
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: const HomePage(),
    );
  }
}

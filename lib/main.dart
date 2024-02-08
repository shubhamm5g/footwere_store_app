import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:footwere_store_app/controller/home_controller.dart';
import 'package:footwere_store_app/firebase_options.dart';

import 'package:footwere_store_app/screens/home_page.dart';
import 'package:get/get.dart';

Future main() async {
  Get.put(HomeController());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: const HomePage(),
    );
  }
}

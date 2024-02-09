import 'package:flutter/material.dart';
import 'package:footwere_store_app/controller/client/client_controller.dart';
import 'package:footwere_store_app/screens/client/home_page.dart';
import 'package:get/get.dart';

import '../admin/add_product_page.dart';

class ClientLoginPage extends StatelessWidget {
  const ClientLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClientController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Login page"),
          actions: [
            TextButton(
                onPressed: () {
                  Get.offAll(() => HomePage());
                },
                child: Text("Admin Page"))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create Your Account !!",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              HSpace(),
              TextField(
                controller: controller.nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Enter Your Name",
                    label: const Text(" Enter Name")),
              ),
              const HSpace(),
              TextField(
                controller: controller.mobileController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Enter Your Mobile No",
                    label: const Text("Mobile No")),
              ),
              const HSpace(),
              ElevatedButton(onPressed: () {}, child: Text("Register")),
              HSpace(),
              TextButton(
                  onPressed: () {
                    Get.to(() => HomePage());
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      );
    });
  }
}

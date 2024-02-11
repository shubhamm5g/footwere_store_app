import 'package:flutter/material.dart';
import 'package:footwere_store_app/controller/client/client_controller.dart';
import 'package:footwere_store_app/controller/client/login_controller.dart';
import 'package:footwere_store_app/screens/admin/home_page.dart';
import 'package:footwere_store_app/screens/client/home_page.dart';
import 'package:footwere_store_app/widgets/opt_text_field.dart';
import 'package:get/get.dart';

import '../admin/add_product_page.dart';

class ClientLoginPage extends StatelessWidget {
  const ClientLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Login page"),
          actions: [
            TextButton(
                onPressed: () {
                  Get.offAll(() => (HomePage()));
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
                controller: controller.name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Enter Your Name",
                    label: const Text(" Enter Name")),
              ),
              const HSpace(),
              TextField(
                controller: controller.number,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Enter Your Mobile No",
                    label: const Text("Mobile No")),
              ),
              HSpace(),
              OtpTextField(
                onComplete: (otp) {
                  controller.otpEnter = int.parse(otp ?? "0000");
                },
                otpController: controller.otpController,
                visible: controller.visible,
              ),
              const HSpace(),
              ElevatedButton(
                  onPressed: () {
                    if (controller.visible) {
                      controller.addUser();
                    } else {
                      controller.sendOtp();
                    }
                  },
                  child: Text(controller.visible ? 'Register' : 'Send OTP')),
              HSpace(),
              TextButton(
                  onPressed: () {
                    Get.to(() => HomePageClient());
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      );
    });
  }
}

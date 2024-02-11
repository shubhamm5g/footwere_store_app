import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:footwere_store_app/model/user_model/user_model.dart';
import 'package:get/get.dart';
import 'package:otp_text_field_v2/otp_text_field_v2.dart';

class LoginController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference userCollection;
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  OtpFieldControllerV2 otpController = OtpFieldControllerV2();
  bool visible = false;
  int? otpSend;
  int? otpEnter;
  @override
  void onInit() {
    userCollection = firestore.collection('user');
    super.onInit();
  }

  addUser() {
    try {
      if (otpSend == otpEnter) {
        DocumentReference doc = userCollection.doc();
        User users = User(
          id: doc.id,
          name: name.text,
          number: number.text,
        );
        final userJson = users.toJson();
        doc.set(userJson);

        name.clear();
        number.clear();
        otpController.clear();
        Get.snackbar("Success", "user added successfully",
            colorText: Colors.green);
      } else {
        Get.snackbar("Error", "Invalid otp entered", colorText: Colors.red);
        // return;
      }
    } catch (e) {
      Get.snackbar("Error", "$e", colorText: Colors.red);
    }
  }

  sendOtp() {
    if (name.text.isEmpty && number.text.isEmpty) {
      Get.snackbar("Error", "Please Provide the details",
          colorText: Colors.red);
      return;
    }
    final rand = Random();
    int otp = rand.nextInt(9999);
    if (otp != null) {
      otpSend = otp;
      print(otp);
      visible = true;
      update();
      Get.snackbar("Success", "Otp send Successfully!",
          colorText: Colors.green);
    } else {
      Get.snackbar("Error", "Otp not found!", colorText: Colors.red);
    }
  }
}

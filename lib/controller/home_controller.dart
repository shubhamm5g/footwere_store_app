import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/product_model.dart';

class HomeController extends GetxController {
  TextEditingController productNameController = TextEditingController();
  TextEditingController productDescriptionController = TextEditingController();
  TextEditingController productImageController = TextEditingController();
  TextEditingController productPriceController = TextEditingController();

  String category = "";
  String brand = "";
  bool offer = false;

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference productCollection;
  @override
  void onInit() {
    productCollection = firestore.collection("products");
    super.onInit();
  }

  addProduct() {
    try {
      DocumentReference doc = productCollection.doc();
      Product product = Product(
        id: doc.id,
        name: productNameController.text,
        image: productImageController.text,
        description: productDescriptionController.text,
        price: double.tryParse(productPriceController.text),
        offers: offer,
        catogery: category,
        brand: brand,
      );

      final productJson = product.toJson();
      doc.set(productJson);
      Get.snackbar("Success", "Product added Successfully",
          colorText: Colors.green);
    } catch (e) {
      print(e);
    }
  }
}

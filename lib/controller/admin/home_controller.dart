import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/product_model/product_model.dart';

class HomeController extends GetxController {
  TextEditingController productNameController = TextEditingController();
  TextEditingController productDescriptionController = TextEditingController();
  TextEditingController productImageController = TextEditingController();
  TextEditingController productPriceController = TextEditingController();

  String category = "select cate";
  String brand = "select brand";
  bool offer = false;

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference productCollection;

  @override
  void onReady() async {
    // TODO: implement onReady
    await fetchProducts();
    update();
    super.onReady();
  }

  @override
  void onInit() async {
    productCollection = firestore.collection("products");
    await fetchProducts();
    update();
    super.onInit();
  }

  List<Product> products = [];
  fetchProducts() async {
    try {
      QuerySnapshot productSnapshot = await productCollection.get();
      final List<Product> retrivedProducts = productSnapshot.docs
          .map((doc) => Product.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
      products.clear();
      products.assignAll(retrivedProducts);
      update();
    } catch (e) {
      Get.snackbar("error", "Fetch error $e", colorText: Colors.red);
    } finally {
      update();
    }
  }

  deleteProducts(String id) async {
    try {
      await productCollection.doc(id).delete();
      fetchProducts();
      Get.snackbar("Deleted", "Deleted successfully ", colorText: Colors.green);
    } catch (e) {
      Get.snackbar("error", e.toString(), colorText: Colors.red);
    }
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
      setValueDefault();
      update();
    } catch (e) {
      Get.snackbar('Error', e.toString(), colorText: Colors.red);
    }
  }

  setValueDefault() {
    productNameController.clear();
    productDescriptionController.clear();
    productImageController.clear();
    productPriceController.clear();
    category = "select cate";
    brand = "select brand";
    offer = false;
    update();
  }
}

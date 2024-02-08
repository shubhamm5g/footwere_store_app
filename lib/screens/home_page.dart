import 'package:flutter/material.dart';
import 'package:footwere_store_app/controller/home_controller.dart';
import 'package:footwere_store_app/screens/add_product_page.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Footer Admin"),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Title"),
                subtitle: Text("Price : 100"),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(AddProductPage());
          },
          child: Icon(Icons.add),
        ),
      );
    });
  }
}

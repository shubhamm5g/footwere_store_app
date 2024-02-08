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
            itemCount: controller.products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(controller.products[index].name.toString()),
                subtitle:
                    Text("Price : ${controller.products[index].price ?? 0}"),
                trailing: IconButton(
                    onPressed: () {
                      controller.deleteProducts(
                          controller.products[index].id.toString());
                    },
                    icon: Icon(Icons.delete)),
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(() => AddProductPage());
          },
          child: Icon(Icons.add),
        ),
      );
    });
  }
}

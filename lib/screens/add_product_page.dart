import 'package:flutter/material.dart';
import 'package:footwere_store_app/controller/home_controller.dart';
import 'package:footwere_store_app/widgets/dropdown_btn.dart';
import 'package:get/get.dart';

class AddProductPage extends StatelessWidget {
  AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(title: const Text("Add Product")),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(10),
            width: double.maxFinite,
            child: Column(children: [
              const Text(
                "Add New Product",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent),
              ),
              HSpace(),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Enter Your Product Name",
                    label: const Text("Product Name")),
              ),
              const HSpace(),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Enter Your Description Name",
                    label: const Text("Product Description")),
              ),
              const HSpace(),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Enter Your Image Url",
                    label: const Text("Image Url")),
              ),
              const HSpace(),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Enter Your Product Price",
                    label: const Text("Product Price")),
              ),
              const HSpace(),
              Row(
                children: [
                  Flexible(
                      child: DropDownBtn(
                    onSelected: (selectedValue) {},
                    selectedItemText: "Select Cate",
                    items: ['Cate1', 'Cate2', 'Cate3'],
                  )),
                  const WSpace(),
                  Flexible(
                      child: DropDownBtn(
                    onSelected: (selectedValue) {},
                    selectedItemText: "Select Brand",
                    items: ['Brand1', 'Brand2', 'Brand3'],
                  )),
                ],
              ),
              const HSpace(),
              Text("Offer Prodcuts ?"),
              DropDownBtn(
                onSelected: (selectedValue) {},
                selectedItemText: "Select Offer",
                items: ['true', "false"],
              ),
              HSpace(),
              ElevatedButton(onPressed: () {}, child: Text("Add Product"))
            ]),
          ),
        ),
      );
    });
  }
}

class WSpace extends StatelessWidget {
  const WSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10,
    );
  }
}

class HSpace extends StatelessWidget {
  const HSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 20,
    );
  }
}

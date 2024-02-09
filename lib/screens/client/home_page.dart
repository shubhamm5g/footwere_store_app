import 'package:flutter/material.dart';
import 'package:footwere_store_app/controller/client/client_controller.dart';
import 'package:footwere_store_app/screens/admin/add_product_page.dart';
import 'package:footwere_store_app/screens/client/product_card.dart';
import 'package:footwere_store_app/widgets/muliselect_dropdown.dart';
import 'package:get/get.dart';

import '../../widgets/dropdown_btn.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClientController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Footware Store"),
          actions: [Icon(Icons.logout), WSpace()],
        ),
        body: Column(children: [
          SizedBox(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(label: Text("Text")),
                  );
                }),
          ),
          HSpace(),
          Row(
            children: [
              Flexible(
                  child: MultiSelectDropDown(
                onSelectedChanged: (List<String> selectedItems) {},
                items: ['Item1', 'Item2', 'Item3', 'Item4'],
              )),
              // const WSpace(),
              Flexible(
                  child: DropDownBtn(
                onSelected: (selectedValue) {
                  controller.sort_items = selectedValue ?? "";
                  controller.update();
                },
                selectedItemText: controller.sort_items,
                items: ['Rs: Low to High', 'Rs: High to Low'],
              )),
            ],
          ),
          HSpace(),
          Expanded(
            child: GridView.builder(
                itemCount: 3,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8),
                itemBuilder: (context, index) {
                  return ProductCard();
                }),
          )
        ]),
      );
    });
  }
}

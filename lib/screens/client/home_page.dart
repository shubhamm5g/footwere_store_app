import 'package:flutter/material.dart';
import 'package:footwere_store_app/controller/client/client_controller.dart';
import 'package:footwere_store_app/screens/admin/add_product_page.dart';
import 'package:footwere_store_app/screens/client/product_description_page.dart';
import 'package:footwere_store_app/widgets/product_card.dart';
import 'package:footwere_store_app/widgets/muliselect_dropdown.dart';
import 'package:get/get.dart';

import '../../widgets/dropdown_btn.dart';

class HomePageClient extends StatelessWidget {
  const HomePageClient({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClientController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Footware Store"),
          actions: [const Icon(Icons.logout), const WSpace()],
        ),
        body: Column(children: [
          SizedBox(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 12,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Chip(label: Text("Text")),
                  );
                }),
          ),
          const HSpace(),
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
          const HSpace(),
          Expanded(
            child: GridView.builder(
                itemCount: 13,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8),
                itemBuilder: (context, index) {
                  return ProductCard(
                    price: 123,
                    image:
                        'https://images.unsplash.com/photo-1562183241-b937e95585b6?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vdHdlYXJ8ZW58MHx8MHx8fDA%3D',
                    offerTag: "10% off",
                    name: "Bata",
                    onTap: () {
                      Get.to(ProductDescription());
                    },
                  );
                }),
          )
        ]),
      );
    });
  }
}

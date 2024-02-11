import 'package:flutter/material.dart';
import 'package:footwere_store_app/screens/admin/add_product_page.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1562183241-b937e95585b6?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vdHdlYXJ8ZW58MHx8MHx8fDA%3D",
                    height: 250,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              HSpace(),
              Text(
                "Puma Foot ware",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Product Desciption",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.grey),
              ),
              HSpace(),
              Text(
                "Rs: 300",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.green),
              ),
              HSpace(),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                    label: Text("Enter your billing address"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              HSpace(),
              Container(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                        backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                    onPressed: () {},
                    child: Text(
                      "Buy now",
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

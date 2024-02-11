import 'package:flutter/material.dart';
import 'package:footwere_store_app/screens/admin/add_product_page.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.image,
    required this.offerTag,
    required this.onTap,
  });
  final String name;
  final double price;
  final String image;
  final String offerTag;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.network(
              image,
              fit: BoxFit.cover,
              width: double.maxFinite,
              height: 110,
            ),
            // HSpace(),
            SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
            // HSpace(),
            Text(
              "Rs: $price",
              style: TextStyle(fontSize: 14, color: Colors.grey),
              overflow: TextOverflow.ellipsis,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(4)),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: Text(
                offerTag,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            )
            // HSpace(),
          ]),
        ),
      ),
    );
  }
}

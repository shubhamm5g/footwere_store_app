import 'package:flutter/material.dart';
import 'package:footwere_store_app/screens/admin/add_product_page.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.network(
            "https://images.unsplash.com/photo-1562183241-b937e95585b6?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vdHdlYXJ8ZW58MHx8MHx8fDA%3D",
            fit: BoxFit.cover,
            width: double.maxFinite,
            height: 110,
          ),
          // HSpace(),
          SizedBox(
            height: 10,
          ),
          Text(
            "Name",
            style: TextStyle(fontSize: 16),
            overflow: TextOverflow.ellipsis,
          ),
          // HSpace(),
          Text(
            "Price",
            style: TextStyle(fontSize: 14, color: Colors.grey),
            overflow: TextOverflow.ellipsis,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(4)),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: Text(
              '10% off',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          )
          // HSpace(),
        ]),
      ),
    );
  }
}

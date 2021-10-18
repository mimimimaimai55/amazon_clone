import 'package:amazon_clone/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCarousel extends StatelessWidget {
  final String title;
  final List <Product> products;

  ProductCarousel({
    required this.title,
    required this.products,
  });

  _buildProductCard(int index) {
    return Container(
      margin: EdgeInsets.all(7.0),
      padding: EdgeInsets.all(10.0),
      width: 150.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0.0,2.0),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            child: Image(
              image: AssetImage(products[index].imageUrl),
              height: 100.0,
              width: 150.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(products[index].name,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 6.0),
          Column(
            children: [
              Text('\¥${products[index].price}',
                style: TextStyle(
                  fontSize: 16.0,

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 210.0,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildProductCard(index);
              },
            ),
          ),
        ],
      );
}

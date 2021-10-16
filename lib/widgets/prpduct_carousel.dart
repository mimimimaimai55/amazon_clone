import 'package:amazon_clone/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCarousel extends StatelessWidget {

  final String title;
  final List <Product> products;

  ProductCarousel({
    required this.title,
    required this.products,
});

  _buildProductCard(int index){
    return Text('$index');
  }


  @override
  Widget build(BuildContext context) => Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 22.0,
              fontWeight:FontWeight.bold,
            ),
          ),
        ),
        Container(
          height:280.0,
          child: ListView.builder(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (BuildContext context,int index){
                return _buildProductCard(index);
              },
          ),
        ),
      ],
    );
}


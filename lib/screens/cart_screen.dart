import 'package:amazon_clone/models/product_model.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  _buildCartProduct(int index){
    return ListTile(
        contentPadding: EdgeInsets.all(20.0),
        leading: Image(
          height: double.infinity,
          width:100.0,
          image: AssetImage(
            cart[index].imageUrl,
          ),
          fit: BoxFit.contain,
        ),
      title: Text(
        cart[index].name,
        style: TextStyle(
          fontSize: 16.0,
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'カート (${cart.length})',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.separated(
        itemCount: cart.length,
          itemBuilder: (BuildContext context,int index){
            return _buildCartProduct(index);
          },
        separatorBuilder: (context,index){
          return Divider(
            color: Colors.grey[300],
          );
        },
      ),
    );
  }
}

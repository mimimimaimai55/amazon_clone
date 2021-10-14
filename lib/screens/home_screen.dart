import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF021524),
        leading: InkResponse(
          child: Icon(
              Icons.menu,
              size:36.0,
              color: Colors.white),
        ),
      ),
    );
  }
}

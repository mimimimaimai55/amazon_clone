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
        leading: Padding(
          padding: EdgeInsets.only(left: 2.0),
          child: InkResponse(
            onTap: () => print('Menu'),
            child: Icon(Icons.menu, size: 36.0, color: Colors.white),
          ),
        ),
        title: Image(
          image: AssetImage('assets/images/amazon_logo.png'),
          height: 40.0,
        ),
        actions: <Widget>[
          TextButton(
              onPressed: () {},
              child: Text(
                'ログイン',
                style: TextStyle(color: Colors.white),
              )),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: InkResponse(
              onTap: () => print('ログイン'),
              child:
                  Icon(Icons.person_outline, size: 40.0, color: Colors.white),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 11, right: 14.0),
                child: InkResponse(
                  onTap: () => print('カート'),
                  child: Icon(Icons.shopping_cart_outlined,
                      size: 36.0, color: Colors.white),
                ),
              ),
              Positioned(
                bottom: 34.0,
                right: 17.0,
                child: Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF021524),
                      borderRadius: BorderRadius.circular(1.1),
                    ),
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ),
              ),
            ],
          ),
        ],
      ),

      body: ListView(

        children: <Widget>[

            Stack(
                children: <Widget>[

                  Container(
                    height: 60,
                    color:Color(0xFF021524),

                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 2,vertical: 8),
                      child: TextField(),
                    ),
                  ),

                  Positioned(
                    bottom: 8.0,
                    right: 2.0,
                    child: Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.orange,),

                        child: Icon(Icons.search),
                    ),
                  ),
                ],
            ),
          Container(
            height: 40,
            color:Colors.blueGrey[900],
          ),
          Image(image: AssetImage('assets/images/amazon_top.jpg'),
          ),



    ]));
  }
}

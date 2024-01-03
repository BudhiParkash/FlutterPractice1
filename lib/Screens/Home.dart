import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){},
        ),
        title: Text("Home"),
        actions: [
      IconButton(
      icon: Icon(Icons.search),
      onPressed: (){},),
      IconButton(
        icon: Icon(Icons.add_shopping_cart),
        onPressed: (){},)
        ],
        elevation: 20,
        titleSpacing: 10.0,
        backgroundColor: Colors.yellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Log in"),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(16.0),
              fixedSize: Size(300, 80),
              textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              elevation: 15,
              shadowColor: Colors.black,
              side: BorderSide(color: Colors.yellow, width: 2),
              shape: CircleBorder()),
        ),
      ),
    );
  }
}

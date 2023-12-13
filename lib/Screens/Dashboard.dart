import 'dart:math';

import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Home Page",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(20.0),
            width: 220.0,
            height: 220.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(10.0),
                color: Colors.red,
                border: Border.all(color: Colors.redAccent, width: 4.0),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade50,
                      blurRadius: 5,
                      spreadRadius: 4,
                      offset: Offset(4, 4))
                ],
                image: DecorationImage(
                  image: AssetImage("images/sasaa.jpeg"),
                  alignment: Alignment.center,
                  fit: BoxFit.fitWidth
                )),
            child: Text(
              "Shivam Sharma",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ))

        //3rd
        /* Image(
          image: NetworkImage(
              "https://images.unsplash.com/photo-1575936123452-b67c3203c357?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D"),
          width: 200.0,
          height: 400.0),*/
        /*image: AssetImage("images/sasaa.jpeg"),
        width: 200.0,
        height: 400.0,
        fit: BoxFit.fitWidth*/

        //2nd
        /*Center(
        child: Text("Random value is: ${getNumber()} ")*/

        //1st
        /*Text.rich(TextSpan(text: "Name", children: [
          TextSpan(
              text: 'Shivam',
              style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold)),
          TextSpan(
              text: 'Sharma',
              style: TextStyle(fontSize: 30.0, color: Colors.red))
        ]))*/
        );
  }
}

int getNumber() {
  Random random = new Random();
  var number = random.nextInt(100);
  return number;
}

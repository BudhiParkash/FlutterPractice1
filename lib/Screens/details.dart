import 'package:first_project/models/ProducModel.dart';
import 'package:flutter/material.dart';


class Details extends StatelessWidget {
   Details({super.key , required this.productDetails});

   ProductDetails productDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back)),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text(productDetails.productName),

            )
          ],

        ),
      )

    );
  }
}

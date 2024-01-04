import 'package:first_project/Screens/details.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
        centerTitle: true,
      ),
      body: Center(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(minimumSize: const Size(200,50)),
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return Details();
            }));

          },
          child: Text(
              "Submit form".toUpperCase(),
              style: const TextStyle(fontWeight: FontWeight.bold)
          ),
        ),
      ),
    );
  }
}

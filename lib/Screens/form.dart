
import 'package:first_project/Screens/details.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();

}



class _MyFormState extends State<MyForm> {

  var _productName ="";
  final _productController = TextEditingController();
   bool? _checkbox = false;
   bool? _listtileCheckBox = false;

  void _updateText(){
    setState(() {
      _productName = _productController.text ;
    });
  }


  @override
  void dispose() {
    _productController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _productController.addListener(_updateText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [

            TextFormField(
              controller: _productController,
              /*onChanged: (val){
                _updateText(val);
              },*/
              decoration: InputDecoration(
                labelText: "Product Name",
                prefixIcon: Icon(Icons.verified_user_rounded),
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20.0),

            TextFormField(
              decoration: InputDecoration(
                  labelText: "Description",
                prefixIcon: Icon(Icons.verified_outlined),
                border: OutlineInputBorder()
              ),
            ),
            //Text("Product Name is ${_productController.text}")
            SizedBox(height: 20.0),


            Checkbox(
              checkColor: Colors.white,
                activeColor: Colors.purple,
                tristate: true,
                value: _checkbox,
                onChanged: (val){
              setState(() {
                _checkbox = val;
              });
            }),

            CheckboxListTile(value: _listtileCheckBox,
                title: Text("Top Product"),
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (val){
              setState(() {
                _listtileCheckBox = val;
              });

            }),
            Radio(value: null, groupValue: null, onChanged: null),

            RadioListTile(value: null, groupValue: null, onChanged: null),


            myBtn(context)
          ],
        ) ,
      )
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(minimumSize: const Size(200,50)),
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context){
                return Details(productName: _productController.text,);
          }));

        },
        child: Text(
            "Submit form".toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.bold)
        ),
      );
  }
}

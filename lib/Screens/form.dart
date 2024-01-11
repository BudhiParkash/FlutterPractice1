
import 'package:first_project/Screens/details.dart';
import 'package:first_project/models/ProducModel.dart';
import 'package:flutter/material.dart';



enum ProductTypeEnum {Donwloadable , Deliverable}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();

}



class _MyFormState extends State<MyForm> {


  _MyFormState(){
    _selectedVal = _productSizeList[0];
  }

  var _productName ="";
  final _productController = TextEditingController();
   bool? _checkbox = false;
   bool? _listtileCheckBox = false;
   ProductTypeEnum? _productTypeEnum;

   final _productSizeList = ["Small" , "Medium" , "Large" , "X - Large"];
   String? _selectedVal = "Small";

   final _formKey = GlobalKey<FormState>();
   ProductDetails productDetails = ProductDetails();


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
            Form(child: Column(
              key: _formKey,
              children: [
                TextFormField(
                  validator: (value){
                    if(value == null || value.isEmpty){
                     return "Please enter Product Name";
                    }else{
                      return null;
                    }
                  },
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
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Please enter Product Name";
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Description",
                      prefixIcon: Icon(Icons.verified_outlined),
                      border: OutlineInputBorder()
                  ),
                ),
                //Text("Product Name is ${_productController.text}")
                SizedBox(height: 20.0),


                /* Checkbox(
              checkColor: Colors.white,
                activeColor: Colors.purple,
                tristate: true,
                value: _checkbox,
                onChanged: (val){
              setState(() {
                _checkbox = val;
              });
            }),*/

                CheckboxListTile(value: _listtileCheckBox,
                    title: Text("Top Product"),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (val){
                      setState(() {
                        _listtileCheckBox = val;
                      });

                    }),
                /*  Radio(value: ProductTypeEnum.Deliverable,
                groupValue: _productTypeEnum,
                onChanged: (val){
              setState(() {
                _productTypeEnum = val;
              });

            }),*/

                RadioListTile(value: ProductTypeEnum.Deliverable,
                    contentPadding: EdgeInsets.all(0.0),
                    title: Text(ProductTypeEnum.Deliverable.name),
                    tileColor: Colors.deepPurple.shade50,
                    groupValue: _productTypeEnum,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                    dense: true,
                    onChanged: (val){
                      setState(() {
                        _productTypeEnum = val;
                      });

                    }),

                SizedBox(height: 10.0),

                RadioListTile(value: ProductTypeEnum.Donwloadable,
                    contentPadding: EdgeInsets.all(0.0),
                    title: Text(ProductTypeEnum.Donwloadable.name),
                    groupValue: _productTypeEnum,
                    dense: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                    tileColor: Colors.deepPurple.shade50,
                    onChanged: (val){
                      setState(() {
                        _productTypeEnum = val;
                      });

                    }),

                SizedBox(height: 10.0),

                /* DropdownButton(items: _productSizeList.map(
                (e) => DropdownMenuItem(child: Text(e) , value: e,)
            ).toList(),
                onChanged: (val){
              setState(() {
                _selectedVal = val as String;
              });
                }),*/

                DropdownButtonFormField(
                    icon: const Icon(
                      Icons.arrow_drop_down_circle,
                      color: Colors.deepPurple,
                    ),
                    dropdownColor: Colors.deepPurple.shade50,
                    decoration: InputDecoration(
                        labelText: "Product Size",
                        prefixIcon: Icon(
                          Icons.accessibility_new_rounded,
                          color: Colors.deepPurple,
                        ),
                        border: UnderlineInputBorder()
                    ),
                    items: _productSizeList.map(
                            (e) => DropdownMenuItem(child: Text(e) , value: e,)
                    ).toList(),
                    onChanged: (val){
                      setState(() {
                        _selectedVal = val as String;
                      });
                    }),



                SizedBox(height: 10.0),
                myBtn(context)
              ],

            )),


          ],
        ) ,
      )
    );
  }



  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(minimumSize: const Size(200,50)),
        onPressed: (){
          if(_formKey.currentState!.validate()){

            productDetails.productName = _productController.text;
            productDetails.productDescription = _productController.text;
            productDetails.isTopProduct = _listtileCheckBox;
            productDetails.productTypeEnum = _productTypeEnum;
            productDetails.productSize = _selectedVal;


            Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return Details(productDetails: productDetails,);
                }));

           /* ScaffoldMessenger.of(context).showSnackBar((
            const SnackBar(content: Text("Processing Data"))

            ));*/

          }else{

          }


        },
        child: Text(
            "Submit form".toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.bold)
        ),
      );
  }
}

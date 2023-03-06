import 'package:flutter/material.dart';
import 'package:projectoftextformfield/seconform.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Forms()),

  );
}

class Forms extends StatefulWidget {
  const Forms({Key? key}) : super(key: key);

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final _formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
            validator: (value){
              if(value==null||value.isEmpty){
                return 'enter yor email';
              }
              else{
                return null;
              }
              /*if(value!=null&&value.contains('@')){
                return 'Do not use @ char';
              }
              else{
                return null;
              }*/
              // return(value!=null&&value.contains('@'))?'Do not use @ char': null ;
            }

          ),
          SizedBox(height: 12,),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
            ),
            validator: (value){
              if(value==null||value.isEmpty){
                return 'enter password';
              }
              else{
                return null;
              }
              // return(value!=null&&value.contains('1,2,3,4'))? 'Do not use 1,2,3,4 char':null;

            }
          ),
            SizedBox(height: 35,),
            TextButton(onPressed: (){
              if(_formkey.currentState!.validate()){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Form2()));
              }
            }, child:const Text("login")),

        ],),
      ),

    );
  }
}

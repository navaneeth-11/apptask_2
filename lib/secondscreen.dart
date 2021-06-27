import 'dart:ui';

import 'package:flutter/material.dart';
class secondscreen extends StatelessWidget {
  const secondscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

    title: Text("Second Screen",style:TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),),

        ),
      body: Center(
        child:


        Text("Thank you T Venkata Navaneeth for submitting", style: TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),),


      ),

    );



  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
class Secondscreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

    title: Text("Second Screen",style:TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),),

        ),
     
       body: Center(
         
         child: ListView(
           
           children: <Widget>[
             Column(
               mainAxisAlignment:MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Image.asset("assets/img2.jpg"),


                 Text("Thanks for submitting",
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontStyle: FontStyle.italic,
                   fontSize: 25,
                   fontWeight: FontWeight.w600,

                  

                 ),
                 ),
                 IconButton( icon: const Icon(Icons.arrow_back,
                size: 40
                ,color: Colors.blue, ),
                 onPressed: (){
                   Navigator.pop(context);

                 },
                 ),
               ],
             )

            ],
 
         ),
       ), 
        
        

      );

    



  }
}

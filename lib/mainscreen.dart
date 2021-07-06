import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';



import 'secondscreen.dart';
class Mainscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Main Screen",style:TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.account_circle),onPressed: (){
            //
          },),

        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text("LOGIN"),
              leading:Icon(Icons.login),
            ),
            Divider(thickness: 2,color: Colors.blue,),
            ListTile(
               title: Text("LOGOUT"),
               leading:Icon(Icons.logout),
      ),
            Divider(thickness: 2,color: Colors.blue,),
            ListTile(
              title: Text("HELP"),
              leading:Icon(Icons.help),
            ),
            Divider(thickness: 2,color: Colors.blue,),
            ListTile(
              title: Text("CONTACT"),
              leading:Icon(Icons.contacts),
              onTap: ()  async {
                Fluttertoast.showToast(
                        msg: "REDIRECTING...",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.blue,
                        textColor: Colors.black,
                        fontSize: 16.0
                    );
                 const url = 'mailto:xyzBank@gmail.com';
                  if (await canLaunch(url) != null) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
              },
            ),
            Divider(thickness: 2,color: Colors.blue,),
            
          ],
        ),
      ),
   



      
      body: Center(

        child: ListView(

          children: <Widget>[
            Column(
              children: [
                Text("XYZ BANK",style: TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),),
                Container(
                  height: 20,
                  color:Colors.blue[300],
                ),
                SizedBox(height:30),
                Align(
                  alignment: Alignment.centerLeft,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.home,size:50 ),
                          Icon(Icons.money,size: 50),
                          Icon(Icons.receipt,size:50),
                        ],
                      ),
                      Spacer(flex: 2),
                      Padding(
                        padding: EdgeInsets.all(30),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child:
                          Image.network("https://financeglad.com/wp-content/uploads/2020/05/ubi-bank-education-loan.jpg",
                              width: 250,
                              height: 150,
                              fit:BoxFit.fill),

                        ),
                      ),
                    ],
                  ),

                ),

                 TextField(
                  decoration: InputDecoration(
                    hintText: "ENTER YOUR EMAIL ID ",
                    labelText: "ENTER YOUR EMAIL ID FOR EDUCATION LOAN",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    hintStyle: TextStyle(
                      fontSize: 10,
                      color: Colors.black,

                    ),

                  ),
                ),


                ElevatedButton(
                  child: Text('SUBMIT'),
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "REDIRECTING...",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.blue,
                        textColor: Colors.black,
                        fontSize: 16.0
                    );
                    
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Secondscreen() ),
                    );

                  },
                ),
               




                

                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8wTf1sf_-3RwdcZ5IbFAFrbOJPTXuy1XQ2A&usqp=CAU",
                    width: 350,
                    height: 150,
                    fit:BoxFit.fill),
                Container(
                  height: 20,
                  color:Colors.white10,
                ),

                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRq18l2X_feuHIxX81mpTxPk0rdZSILO2-4aQ&usqp=CAU",
                    width: 350,
                    height: 150,
                    fit:BoxFit.fill),
                Container(
                  height: 20,
                  color:Colors.white10,
                ),

                Image.network("http://kanyakabank.appspot.com/images/banner-3.jpg",
                    width: 350,
                    height: 150,
                    fit:BoxFit.fill),
                Container(
                  height: 20,
                  color:Colors.white10,
                ),
              Image.asset('assets/img1.jpg',
                        width: 350,
                        height: 150,
                        fit:BoxFit.fill),




                Text("CONTACT US FROM HERE:",style: TextStyle(fontWeight:FontWeight.bold)),



                Row(
                  children: [

                    Expanded(

                      child:
                      Image.network("http://syn.org.au/app/uploads/youtube_logo_detail.png",
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child:
                      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-Bl2HkjUi_JlimWMx-1S62Sm7L69vtPtdRjJZq2E-AcEiMcOdcz4BC-31txyOyG-0hso&usqp=CAU",
                      ),
                    ),
                    Expanded(

                      child:
                      Image.network("https://www.computerhope.com/jargon/i/instagram.jpg",
                      ),
                    ),
                  ],
                )


              ],


            ),

          ],
        ),
      ),


    );
  }
}


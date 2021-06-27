import 'package:flutter/material.dart';
import 'secondscreen.dart';
class mainscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(icon: Icon(Icons.menu),onPressed: (){
          //
        },),
        title: Text("Main Screen",style:TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: (){
            //
          },),

        ],
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


                ElevatedButton(
                  child: Text('PRESS TO GET EDUCATION LOAN'),
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>secondscreen() ),
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

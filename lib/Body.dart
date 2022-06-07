import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'WelcomePage.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final double screenHeight=MediaQuery.of(context).size.height;
    final double screenWidth=MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 193, 223, 240),
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset("assets/Ellipse 33.png"),
            ),
            Positioned(
              right: -20,
              top: 300,
              child: Image.asset("assets/Ellipse 1.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: screenHeight/10),
              // color: Colors.green,
              alignment: Alignment.topCenter,
              child: Image.asset("assets/Group 33332.png", width: screenWidth*0.8,),
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: screenHeight/20),
                  // color: Colors.blue,
                  alignment: Alignment.topCenter,
                  child: Image.asset("assets/Group 1.png", width: screenWidth*0.3,),
                ),
                Container(
                  // color: Colors.lightBlue,
                  margin: EdgeInsets.only(top: screenHeight*0.1, bottom: screenHeight*0.05),
                  alignment: Alignment.center,
                  child: Image.asset("assets/6.png", width: screenWidth*0.7),
                ),
                Text("Antar Paket ?", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),

                Row(children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 100)),
                  Container(
                    
                    child: Text("DeKurir",
                     style: TextStyle(
                       fontWeight: FontWeight.bold, 
                       fontSize: 24, 
                       color: Color.fromARGB(255, 255, 151, 1)),),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Solusinya", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                  ),
                ],
                ),
                Container(
                  margin: (EdgeInsets.only(top: 20)),
                  decoration: (BoxDecoration(
                    color: Color.fromARGB(255, 136, 204, 241),
                  )),
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(top: screenHeight*0.093, bottom: screenHeight*0.07),
                  child: 
                  ElevatedButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context){return WelcomePage();},),);},
                    child: Text("Get Started", style: TextStyle(fontSize: 25),),
                    style:
                    ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 193, 223, 240),
                      onPrimary: Color.fromARGB(255, 255, 151, 1),
                      minimumSize: Size(370, 60),
                      // maximumSize: Size(screenWidth/2, screenHeight*0.5),
                      shape: StadiumBorder()
                    ),
                    ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

}
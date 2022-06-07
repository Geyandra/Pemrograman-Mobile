import 'package:first_project/HomePage.dart';
import 'package:flutter/material.dart';
class Resi extends StatelessWidget {
  const Resi({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight=MediaQuery.of(context).size.height;
    final double screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255 ,193, 223, 240),
      body: Stack(children: <Widget>[
        Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(top: 15, right: 50),
              child: Image.asset("assets/Group 1.png", width: 40,),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(top: 35, right: 0),
              child: Image.asset("assets/Group 33332.png", width: 140,),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: screenHeight/9),
                  alignment: Alignment.center,
                  child: Text("Resi",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 20, 5, screenHeight/10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: ListTile(
                    trailing: IconButton(onPressed: (){}, icon: Icon(Icons.copy)),
                    title: Text("Masukkan Nomor Resi Anda"),
                  ),
                ),
                ElevatedButton(onPressed: () {}, 
                child: Text("Copy to Clipboard", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(screenWidth*0.5, screenHeight/20),
                  alignment: Alignment.center,
                  side: BorderSide(color: Colors.black, width: 1,),
                  shape: StadiumBorder()
                ),
                ),
                Container(
                  margin: EdgeInsets.only(top: screenHeight*0.4),
                  child: ElevatedButton(
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return HomePage();},),);}, 
                    child: Text("DONE"),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 8, 117, 146),
                      minimumSize: Size(200, 60),
                      shape: StadiumBorder()
                    ),))
                
              ],
            ),
      ]
      ),
    );
  }
}
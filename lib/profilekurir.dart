import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_project/HomePage.dart';
import 'package:first_project/SignIn.dart';
import 'package:flutter/material.dart';


class profilekurir extends StatelessWidget {
  const profilekurir({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight=MediaQuery.of(context).size.height;
    final double screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255 ,193, 223, 240),
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 10, left: 5),
                  child: Text("""
Profile Kamu
Sebagai Pengguna""",
style: TextStyle(
  fontFamily: "Mohave",
  fontSize: screenWidth*0.04,
),),
                ),
                Text("MENU", style: TextStyle(
                  fontFamily: "Miriam Libre",
                  fontSize: screenWidth*0.08,
              
                ),),
                Column(
                  children: [
                        Container(
                          width: screenWidth*0.4,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(26, 236, 211, 0.3),
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding: EdgeInsets.all(screenWidth/110),
                          child: TextButton(onPressed: () {}, child: Image.asset("assets/setting.png", width: screenWidth*0.1,),),
                        ),
                        Text("Pengaturan", style: TextStyle(
                          fontFamily: "Miriam Libre",
                          fontSize: screenWidth*0.07,
                          fontWeight: FontWeight.bold,
                        ),),
                        Container(
                          width: screenWidth*0.4,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(26, 236, 211, 0.3),
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding: EdgeInsets.all(screenWidth/110),
                          child: TextButton(onPressed: () {showDialog(context: context, builder: (context) => SimpleDialog(
                            children: [
                              Text("Apakah Anda yakin ingin keluar?"),
                              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  margin: EdgeInsets.only(top: 30),
                  child: TextButton(onPressed: () {
                    FirebaseAuth.instance.signOut();
                    Navigator.push(context,
                    MaterialPageRoute(builder:(context){return SignIn();},),);}, child: Text("Log Out", style: TextStyle(fontSize: 20, color: Colors.black)))),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.green.shade800,
                  ),
                  margin: EdgeInsets.only(top: 30),
                  child: TextButton(onPressed: () {Navigator.of(context).pop();}, child: Text("Batalkan", style: TextStyle(fontSize: 20, color: Colors.white))))
              ],
            ),
                            ],
                          ));}, child: Image.asset("assets/logout.png", width: screenWidth*0.1,),)
                        ),
                        Text("logout",style: TextStyle(
                          fontFamily: "Miriam Libre",
                          fontSize: screenWidth*0.07,
                          fontWeight: FontWeight.bold,
                        ),),
                  ],
                ),
              ],
            ),
            Positioned(
              top: screenHeight*0.003,
              right: screenWidth/100,
              height: screenHeight*0.2,
              width: screenWidth*0.2,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                     image: DecorationImage(image: AssetImage("assets/2.jpg"),
                      fit: BoxFit.cover)
                  ),
                ),
              ),
          ],
        ),
      );
  }
}
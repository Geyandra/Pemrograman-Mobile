import 'package:first_project/BiayaKirim.dart';
import 'package:first_project/KirimPaket.dart';
import 'package:first_project/Resi.dart';
import 'package:first_project/Riwayat_Pengiriman.dart';
import 'package:first_project/camera.dart';
import 'package:first_project/e_wallet.dart';
import 'package:first_project/maps.dart';
import 'package:first_project/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight=MediaQuery.of(context).size.height;
    final double screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255 ,193, 223, 240),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return HomePage();},),);
            }, icon: Icon(Icons.home))),
          BottomNavigationBarItem(
            label: "Navigate",
            icon: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return MapSample();},),);}, icon: Icon(Icons.location_on))),
          BottomNavigationBarItem(
            label: "Profile",
            icon: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return profile();},),);}, icon: Icon(Icons.person)))
        ]),
      body: 
      SingleChildScrollView(
        child: Stack(
          children: <Widget>[
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
                  margin: EdgeInsets.only(left: 75, top: screenHeight/11),
                    child: Text("""
Helloo... 
Alexa""",
style: TextStyle(
  fontFamily: "Arial Black",
  fontSize: screenWidth*0.04,
),),
                    width: screenWidth,
                    height: screenHeight/10,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255 ,193, 223, 240)
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      color: Color.fromARGB(255, 124, 171, 215),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
                              margin: EdgeInsets.only(top: 5, left: screenWidth*0.6),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text("Cek Pengiriman",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                            Row(
                              children: [
                                Positioned(child: Image.asset("assets/12.png")),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Cek Kirimanmu di sini",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                    ),),
                                    Container(
                                      alignment: Alignment.center,
                                      height: screenHeight*0.05,
                                      width: screenWidth*0.6,
                                      decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: TextField(
                                      decoration: InputDecoration(
                                        suffixIcon: IconButton(onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context){return Resi();},),);
                                        }, icon: Icon(Icons.search)),
                                        hintStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                        ),
                                        contentPadding: EdgeInsets.only(left: 10, top: 5),
                                        hintText: "Cek Nomor Resi",
                                        border: InputBorder.none,
                                      ),
                                    ),
                                    ),
                                  ],
                                ),
                              ],
                            ),                         
                          ],
                        ),
                    ),
                    Row(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          color: Color.fromARGB(255, 124, 171, 215),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context){return KirimPaket();},),);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(top: 5, left: screenWidth*0.22),
                                  width: screenWidth/4,
                                  height: screenHeight/30,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Text("Kirim Paket", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ),
                                Container(
                                  child: Image.asset("assets/13.png"),
                                )
                              ],
                            ),
                          ),
                          ),
                          Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          color: Color.fromARGB(255, 124, 171, 215),
                          child: InkWell(
                            onTap: () {
                             Navigator.push(context,
  MaterialPageRoute(builder:(context){return E_Wallet();},),); 
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(top: 5, left: screenWidth*0.211),
                                  width: screenWidth/3.6,
                                  height: screenHeight/30,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Text("Dompet Digital", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ),
                                Container(
                                  child: Image.asset("assets/14.png"),
                                ),
                              ],
                            ),
                          ),
                          ),
                      ],
                    ),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          color: Color.fromARGB(255, 124, 171, 215),
                          child: InkWell(
                            onTap: () {  
                            Navigator.push(context, MaterialPageRoute(builder: (context){return Riwayat_Pengiriman();},),);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Riwayat Pengiriman",style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold
                                ),),
                                Container(
                                  child: Image.asset("assets/15.png"),
                                )
                              ],
                            ),
                          )
                    ),
                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          color: Color.fromARGB(255, 124, 171, 215),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context){return BiayaKirim();},),);
                            },
                            child: Row(
                              children: [
                                // Text("data"),
                                Container(
                                  child: Image.asset("assets/16.png"),
                                ),
                                Text("Biaya Pengiriman", style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold
                                ),),
                              ],
                            ),
                          ),
                    ),
              ],
            ),
            Positioned(
                    top: screenHeight/18,
                    left: screenWidth/100,
                    height: screenHeight*0.13,
                    width: screenWidth*0.13,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                         image: DecorationImage(image: AssetImage("assets/2.jpg"),
                          fit: BoxFit.cover)
                      ),
                    ),
                    ),
          ],
        ),
      ),
    );
  }
}
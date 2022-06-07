import 'package:first_project/e_wallet.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Saldo extends StatefulWidget {
  const Saldo({Key? key}) : super(key: key);

  @override
  State<Saldo> createState() => _SaldoState();
}

class _SaldoState extends State<Saldo> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight=MediaQuery.of(context).size.height;
    final double screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255 ,193, 223, 240),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: screenHeight*0.1, bottom: 30),
              child: Text("Pilih Agent", style: GoogleFonts.dosis(
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 27)
              ),),
            ),
            Container(
              height: screenHeight*0.1,
              width: screenWidth*0.8,
              padding: EdgeInsets.only(right: screenWidth*0.4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Image.asset("assets/alfa.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: 17),
              height: screenHeight*0.1,
              width: screenWidth*0.8,
              padding: EdgeInsets.only(right: screenWidth*0.4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Image.asset("assets/alfi.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: 17),
              height: screenHeight*0.1,
              width: screenWidth*0.8,
              padding: EdgeInsets.only(right: screenWidth*0.4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Image.asset("assets/indo.png"),
            ),
            Container(
              margin: EdgeInsets.only(top: screenHeight*0.07),
              child: Text("Kode Top-Up", style: GoogleFonts.dosis(
                fontWeight: FontWeight.bold, fontSize: 25
              ),),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Text("123JKLaa", style: GoogleFonts.dosis(
                fontWeight: FontWeight.bold, fontSize: 23
              ),),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text("Nama Akun: Kylian Mbappe", style: GoogleFonts.dosis(
                fontWeight: FontWeight.bold, fontSize: 27
              ),),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
  MaterialPageRoute(builder:(context){return E_Wallet();},),);
                }, 
                child: Text("Done", style: GoogleFonts.dosis(
                  fontWeight: FontWeight.bold, fontSize: 28
                )),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 255, 182, 29),
                  onPrimary: Colors.black,
                  shape: StadiumBorder(),
                  minimumSize: Size(200, 70)
                ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
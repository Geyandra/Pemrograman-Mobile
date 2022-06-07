import 'package:first_project/homepagekurir.dart';
import 'package:first_project/qrcode.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPembayaran extends StatefulWidget {
  const DetailPembayaran({Key? key}) : super(key: key);

  @override
  State<DetailPembayaran> createState() => _DetailPembayaranState();
}

class _DetailPembayaranState extends State<DetailPembayaran> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight=MediaQuery.of(context).size.height;
    final double screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255 ,193, 223, 240),
      appBar: AppBar(
        title: Text("Detail Pembayaran"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              height: screenHeight*0.5,
              width: screenWidth*0.98,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 30, top: 30),
                      child: Text("Jenis Barang:  Baju Anak-Anak", style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold, fontSize: 19
                      ),),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Text("Penerima:  Kylian Mbapper", style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold, fontSize: 19
                      ),),
                    ), 
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Text("Berat Barang:  1kg", style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold, fontSize: 19
                      ),),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Text("Alamat:  Komplek Angkasa 3", style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold, fontSize: 19
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: screenWidth*0.1, top: screenHeight*0.2),
                      child: ElevatedButton(
                        onPressed: null, 
                        child: Text("Rp 30.000", style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold, fontSize: 20
                        ),),
                        style: ElevatedButton.styleFrom(
                          onSurface: Colors.green.shade700,
                          minimumSize: Size(300, 60),
                          shape: StadiumBorder(),
                        ),
                        )),      
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Image.asset("assets/money.png"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Tunai", style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold, fontSize: 18
                      ),),
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder:(context){return qrcode();},),);
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Image.asset("assets/barcode.png"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 14),
                      child: Text("Scan QR", style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold, fontSize: 18
                      ),),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 1,
              width: screenWidth*0.98,
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: ElevatedButton(
                onPressed: (){Navigator.push(context,
  MaterialPageRoute(builder:(context){return homepagekurir();},),);}, 
                child: Text("Done", style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold, fontSize: 20,
                ),),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 131, 232, 69),
                  onPrimary: Colors.black,
                  minimumSize: Size(300, 50),
                  shape: StadiumBorder()
                ),),
            )
          ],
        ),
      ),
    );
  }
}
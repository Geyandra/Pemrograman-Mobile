import 'package:first_project/KirimPaket2.dart';
import 'package:first_project/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepagekurir.dart';

class BuktiPengiriman extends StatelessWidget {
  const BuktiPengiriman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 193, 223, 240),
          width: screenWidth,
          height: screenHeight,
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: <Widget>[
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(top: 20, right: 50),
                child: Image.asset(
                  "assets/Group 1.png",
                  width: 40,
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(top: 35, right: 0),
                child: Image.asset(
                  "assets/Group 33332.png",
                  width: 140,
                ),
              ),
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(
                          top: screenHeight / 10, bottom: screenHeight / 50),
                      child: Text(
                        "Bukti Pengiriman",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.7,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 129, 208, 223),
                        borderRadius: BorderRadiusDirectional.circular(30)),
                    margin: EdgeInsets.only(top: screenHeight / 100),
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Field(
                                  screenWidth: screenWidth, text: 'Berat (kg)'),
                              Field(
                                  screenWidth: screenWidth,
                                  text: 'Jenis Barang'),
                              Field(screenWidth: screenWidth, text: 'Diterima'),
                              Field(screenWidth: screenWidth, text: 'Pengirim'),
                              Container(
                                margin: EdgeInsets.only(top: 30),
                                child: Text(
                                  "Bukti Foto",
                                  style: GoogleFonts.dosis(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return camera();
                                          },
                                        ),
                                      );
                                },
                                child: Container(
                                  child:
                                      Image.asset("assets/pict.png", width: 100),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 30),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return homepagekurir();
                                          },
                                        ),
                                      );
                                    },
                                    child: Text("DONE"),
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromARGB(255, 8, 117, 146),
                                        minimumSize: Size(200, 60),
                                        shape: StadiumBorder()),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Field extends StatelessWidget {
  final String text;
  final sufficon;
  const Field({
    Key? key,
    required this.screenWidth,
    required this.text,
    this.sufficon,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Text(
            text,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: screenWidth * 0.6,
          height: 30,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.circular(5)),
          child: TextField(
            decoration:
                InputDecoration(border: InputBorder.none, suffixIcon: sufficon),
          ),
        ),
      ],
    );
  }
}

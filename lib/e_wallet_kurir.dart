import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class E_Wallet_Kurir extends StatelessWidget {
  const E_Wallet_Kurir({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 193, 223, 240),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 68, top: screenHeight / 11),
                child: Text(
                  "Alexa Maria Nino",
                  style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
                ),
                width: screenWidth,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 193, 223, 240)),
              ),
              Container(
                margin: EdgeInsets.only(left: 68, top: 10),
                child: Text(
                  "Saldo",
                  style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  )),
                ),
                width: screenWidth,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 193, 223, 240)),
              ),
              Container(
                margin: EdgeInsets.only(left: 68, top: 3, bottom: 20),
                child: Text(
                  "Rp 120.000",
                  style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  )),
                ),
                width: screenWidth,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 193, 223, 240)),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                      height: 1,
                      width: screenWidth * 0.99,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 9, left: 9),
                          child: Image.asset("assets/up.png"),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Pendapatan",
                                style: GoogleFonts.dosis(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                )),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Rp 70.000",
                                style: GoogleFonts.dosis(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                )),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: screenWidth * 0.1),
                          height: screenHeight * 0.05,
                          width: 1.4,
                          color: Colors.black,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 9, left: 9),
                          child: Image.asset("assets/down.png"),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Pengeluaran",
                                style: GoogleFonts.dosis(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                )),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Rp 20.000",
                                style: GoogleFonts.dosis(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 1,
                      width: screenWidth * 0.99,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Center(
              child: Container(
            margin: EdgeInsets.only(top: screenHeight * 0.5),
            width: screenWidth * 0.93,
            height: screenHeight * 0.5,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        "Transaksi Terakhir",
                        style: GoogleFonts.dosis(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 2,
                      width: screenWidth * 0.9,
                      color: Color.fromARGB(191, 158, 158, 158),
                    ),
                    Container(
                      child: ListTile(
                        title: Text("Pembayaran"),
                        subtitle: Text("01-04-2022"),
                        trailing: Icon(Icons.check_outlined),
                      ),
                    ),
                    Container(
                      height: 2,
                      width: screenWidth * 0.9,
                      color: Color.fromARGB(191, 158, 158, 158),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 20),
                              child: Text("Pembayaran"),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 14, top: 10),
                              child: Text("01-04-2022"),
                            ),
                          ],
                        ),
                        Column(children: [
                          Container(
                            margin: EdgeInsets.only(top: 10, right: 20),
                            child: Text("Rp 70.000"),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 14, top: 10),
                            child: Text("Berhasil"),
                          )
                        ])
                      ],
                    ),
                  ]),
            ),
          )),
          Positioned(
            top: screenHeight / 18,
            left: screenWidth / 100,
            height: screenHeight * 0.13,
            width: screenWidth * 0.13,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/2.jpg"), fit: BoxFit.cover)),
            ),
          ),
        ],
      ),
    );
  }
}

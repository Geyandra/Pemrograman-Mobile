import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_project/dataPaket.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Riwayat_Pengiriman extends StatefulWidget {
  const Riwayat_Pengiriman({Key? key}) : super(key: key);

  @override
  State<Riwayat_Pengiriman> createState() => _Riwayat_PengirimanState();
}

class _Riwayat_PengirimanState extends State<Riwayat_Pengiriman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 193, 223, 240),
      appBar: AppBar(
        title: Text("Riwayat Pengiriman"),
      ),
      body: SingleChildScrollView(
        child: StreamBuilder<List<Data>>(
          stream: readData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("Ada Kesalahan! ${snapshot.hasError}");
            } else if (snapshot.hasData) {
              final datas = snapshot.data!;

              return Column(
                children: datas.map(buildData).toList(),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

Widget buildData(Data data) => Stack(
      children: <Widget>[
        Column(
          children: [
            Card(
              margin: EdgeInsets.only(top: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 340, top: 10),
                    child: Text(
                      "Selesai",
                      style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 240, 179, 2))),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, bottom: 20),
                    child: Text(
                      "Pengiriman",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Jenis Barang : " + data.JenisBarang,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Penerima        : " + data.NamaPenerima,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Waktu              : " +
                          DateFormat('dd-MM-yyyy').format(DateTime.now()),
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 20),
                        child: Image.asset("assets/Driver.png"),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          "Paket telah diterima",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade700),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 40, bottom: 4),
                        child: Text(
                          "1 barang",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20, bottom: 4),
                        child: Text(
                          "Total Harga: Rp17.000",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );

Stream<List<Data>> readData() => FirebaseFirestore.instance
    .collection("Kirim_Paket")
    .snapshots()
    .map((snapshots) =>
        snapshots.docs.map((doc) => Data.fromJson(doc.data())).toList());

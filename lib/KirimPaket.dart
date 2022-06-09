import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_project/KirimPaket2.dart';
import 'package:flutter/material.dart';

import 'dataPaket.dart';

class KirimPaket extends StatefulWidget {
  const KirimPaket({Key? key}) : super(key: key);

  @override
  State<KirimPaket> createState() => _KirimPaketState();
}

class _KirimPaketState extends State<KirimPaket> {
  final controlID = TextEditingController();
  final controlNamaPengirim = TextEditingController();
  final controlNamaPenerima = TextEditingController();
  final controlTujuan = TextEditingController();
  final controlPenjemputan = TextEditingController();
  final controlNomerHP = TextEditingController();
  final controlJenisBarang = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Kirim Paket"),
      // ),
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
                        "Pengiriman",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.8,
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
                                screenWidth: screenWidth,
                                text: 'Jenis Barang',
                                control: controlJenisBarang,
                              ),
                              Field(
                                screenWidth: screenWidth,
                                text: 'Nama Pengirim',
                                control: controlNamaPengirim,
                              ),
                              Field(
                                screenWidth: screenWidth,
                                text: 'Penjemputan',
                                sufficon: Icon(Icons.location_on),
                                control: controlPenjemputan,
                              ),
                              Field(
                                screenWidth: screenWidth,
                                text: 'Nama Penerima',
                                control: controlNamaPenerima,
                              ),
                              Field(
                                screenWidth: screenWidth,
                                text: 'Nomer HP',
                                control: controlNomerHP,
                              ),
                              Field(
                                screenWidth: screenWidth,
                                text: 'Tujuan',
                                sufficon: Icon(Icons.location_on),
                                control: controlTujuan,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 40),
                                child: Text(
                                  """
              Kirim barangmu dengan
cepat dan mudah dalam satu wilayah
""",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 30),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      final data = Data(
                                          NamaPengirim:
                                              controlNamaPengirim.text,
                                          Penjemputan: controlPenjemputan.text,
                                          NamaPenerima:
                                              controlNamaPenerima.text,
                                          Tujuan: controlTujuan.text,
                                          NomerHP:
                                              int.parse(controlNomerHP.text),
                                          JenisBarang: controlJenisBarang.text);
                                      createData(data);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return KirimPaket2();
                                          },
                                        ),
                                      );
                                    },
                                    child: Text("NEXT"),
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
  final control;
  const Field({
    Key? key,
    required this.screenWidth,
    required this.text,
    this.control,
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
            controller: control,
            decoration:
                InputDecoration(border: InputBorder.none, suffixIcon: sufficon),
          ),
        ),
      ],
    );
  }
}

Future createData(Data data) async {
  final docData = FirebaseFirestore.instance.collection("Kirim_Paket").doc();
  data.ID = docData.id;
  final json = data.toJson();
  docData.set(json);
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_project/Resi.dart';
import 'package:first_project/dataPaket2.dart';
import 'package:flutter/material.dart';

class KirimPaket2 extends StatefulWidget {
  const KirimPaket2({Key? key}) : super(key: key);

  @override
  State<KirimPaket2> createState() => _KirimPaket2State();
}

class _KirimPaket2State extends State<KirimPaket2> {
  final controlBerat = TextEditingController();
  final controlNamaBarang = TextEditingController();
  final controlUkuran = TextEditingController();
  final items = ['S', 'M', 'L', 'XL'];
  String? value;
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
                                text: 'Berat',
                                control: controlBerat,
                              ),
                              Field(
                                screenWidth: screenWidth,
                                text: 'Nama Barang',
                                control: controlNamaBarang,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20, left: 40),
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Ukuran Barang",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.only(top: 3),
                                width: screenWidth * 0.6,
                                height: screenHeight * 0.06,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  value: value,
                                  items: items.map(buildMenuItem).toList(),
                                  onChanged: (value) =>
                                      setState(() => this.value = value),
                                ),
                              ),
                              UkuranBarang(
                                screenWidth: screenWidth,
                                text: """
    Ukuran S
max (20 x 20 x 8 cm)
""",
                                top: 40,
                              ),
                              UkuranBarang(
                                screenWidth: screenWidth,
                                text: """
    Ukuran M
max (30 x 22 x 12 cm)
""",
                                top: 5,
                              ),
                              UkuranBarang(
                                screenWidth: screenWidth,
                                text: """
    Ukuran L
max (35 x 30 x 25 cm)
""",
                                top: 5,
                              ),
                              UkuranBarang(
                                screenWidth: screenWidth,
                                text: """
    Ukuran XL
max (45 x 40 x 35 cm)
""",
                                top: 5,
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 30),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      final data = Data(
                                          Berat: controlBerat.text,
                                          NamaBarang: controlNamaBarang.text,
                                          Ukuran: 'M');
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return Resi();
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

class UkuranBarang extends StatelessWidget {
  final String text;
  final double top;
  const UkuranBarang({
    Key? key,
    required this.top,
    required this.text,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: top, left: 20),
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Container(
          height: 1.7,
          width: screenWidth * 0.78,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
              border: Border.all()),
        ),
      ],
    );
  }
}

class Field extends StatelessWidget {
  final String text;
  final sufficon;
  final control;
  const Field(
      {Key? key,
      required this.screenWidth,
      required this.text,
      this.sufficon,
      this.control})
      : super(key: key);

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

DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(item,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        )));

Future createData(Data data) async {
  final docData = FirebaseFirestore.instance.collection("Detail_Barang").doc();
  data.ID = docData.id;
  final json = data.toJson();
  docData.set(json);
}

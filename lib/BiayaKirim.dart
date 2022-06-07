import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class BiayaKirim extends StatefulWidget {
  const BiayaKirim({ Key? key }) : super(key: key);

  @override
  State<BiayaKirim> createState() => _BiayaKirimState();
}

class _BiayaKirimState extends State<BiayaKirim> {
  late FixedExtentScrollController scrollController;
  final items = [
"""                   S 
max (20 x 20 x 8 cm)""",
"""                   M
max (30 x 22 x 12 cm)""",
"""                   L 
max (35 x 30 x 25 cm)""",
"""                   XL
max (45 x 40 x 35 cm)"""
  ];

  int index = 0;

  @override
  void initState() {
    super.initState();

    scrollController = FixedExtentScrollController(initialItem: index);
  }

  @override
  void dispose() {
    scrollController.dispose();

    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    final double screenHeight=MediaQuery.of(context).size.height;
    final double screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(136, 204, 241, 1),
      appBar: AppBar(
        title: Text("Biaya Pengiriman"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: screenHeight/50, horizontal: screenWidth/100),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Masukkan Berat Barang",
                    labelText: "Berat (Kg)",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                    )
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: screenHeight/50, horizontal: screenWidth/100),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Masukkan Lokasi Penjemputan",
                    labelText: "Penjemputan",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                    )
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: screenHeight/50, horizontal: screenWidth/100),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Masukkan Lokasi Tujuan",
                    labelText: "Tujuan",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                    )
                  ),
                ),
              ),
              Container(
                height: screenHeight/100,
                width: screenWidth*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                  border: Border.all()
                ),
              ),
              Container(
                decoration: BoxDecoration(),
                margin: EdgeInsets.only(top: screenHeight/30, bottom: screenHeight/30, left: 22),
                child: Text("Ukuran Barang", style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Text(items[index],
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 30),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20 ),
                child: CupertinoButton.filled(
                  child: Text("Pilih Ukuran"), 
                  onPressed: () {
                    scrollController.dispose();
                    scrollController = FixedExtentScrollController(initialItem: index);
                    showCupertinoModalPopup(context: context, 
                    builder: (context) => CupertinoActionSheet(
                      actions: [Picker()],
                      cancelButton: CupertinoActionSheetAction(
                        onPressed: () => Navigator.pop(context), 
                        child: Text("Batal")),
                    )
                    );
                   }),
              ),
              ElevatedButton(
                onPressed: () {
                showDialog(context: context, 
                builder: (context) => SimpleDialog(
                  title: Text("List Harga"),
                  contentPadding: EdgeInsets.all(50),
                  children: [
                    Text("Ukuran S Harga Rp 12.000", style: TextStyle(
                      fontSize: 17,
                    ),),
                    Text("Ukuran M Harga Rp 17.000", style: TextStyle(
                      fontSize: 17,
                    ),),
                    Text("Ukuran L Harga Rp 22.000", style: TextStyle(
                      fontSize: 17,
                    ),),
                    Text("Ukuran XL Harga Rp 27.000", style: TextStyle(
                      fontSize: 17,
                    ),),

                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: TextButton(onPressed: () {Navigator.of(context).pop();}, child: Text("Tutup")))
                  ],
                ));
              }, 
              child: Text("Harga Ukuran"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40),
                textStyle: TextStyle(
                  fontSize: 16,
                ),
              ),)

            ],
          ),
        ),
      ),
    );
  }
  Widget Picker() => SizedBox(
    height: 200,
    child: CupertinoPicker(
      scrollController: scrollController,
      looping: true,
      itemExtent: 64, 
      onSelectedItemChanged: (index) {
        setState(() => this.index=index);

        final item = items[index];
      }, 
      children: items
      .map((item) => Center(
        child: Text(item),
      ))
      .toList(),
      ),
  );
}
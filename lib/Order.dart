import 'package:first_project/DetailPembayaran.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight=MediaQuery.of(context).size.height;
    final double screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Order"),
      ),
      backgroundColor: Color.fromARGB(255 ,193, 223, 240),
      body: ListView(
        children: [
          Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Pengirim"),
              subtitle: Text("Sutedjo Soetoeyo"),
              trailing: IconButton(onPressed: (){
                showDialog(context: context, builder: (context) => SimpleDialog(
                  title: Text("Order Detail", style: GoogleFonts.dosis(
                    fontWeight: FontWeight.bold, fontSize: 20,
                  ),),
                  backgroundColor: Colors.white,
                  contentPadding: EdgeInsets.all(screenWidth*0.05),
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text("Pengirim", style: GoogleFonts.dosis(
                        fontWeight: FontWeight.bold, fontSize: 19
                      ), ),
                    ),
                    Container(
                      child: Text("Sutedjo Soetoeyo", style: GoogleFonts.dosis(
                        fontWeight: FontWeight.bold, fontSize: 15
                      ),),
                    ),
                    Container(
                      child: Text("081330776123"),
                    ),
                    Container(
                      child: Text("Pasar Raya Blok M"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      height: 1,
                      width: screenWidth*0.9,
                      color: Colors.black,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text("Penerima", style: GoogleFonts.dosis(
                        fontWeight: FontWeight.bold, fontSize: 19
                      ),),
                    ),
                    Container(
                      child: Text("Kylian Mbapper", style: GoogleFonts.dosis(
                        fontWeight: FontWeight.bold, fontSize: 15
                      ),),
                    ),
                    Container(
                      child: Text("081667129008"),
                    ),
                    Container(
                      child: Text("Komplek Angkasa 3"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 1,
                      width: screenWidth*0.9,
                      color: Colors.black,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text("Detail Barang", style: GoogleFonts.dosis(
                        fontWeight: FontWeight.bold, fontSize: 19
                      ),),
                    ),
                    Container(
                      child: Text("Baju", style: GoogleFonts.dosis(
                        fontWeight: FontWeight.bold, fontSize: 15
                      ),),
                    ),
                    Container(
                      child: Text("1kg"),
                    ),
                    Container(
                      child: Text("M"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 12),
                          child: ElevatedButton(
                          onPressed: (){Navigator.push(context,
  MaterialPageRoute(builder:(context){return DetailPembayaran();},),);}, 
                          child: Text("Terima"),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green.shade400,
                            onPrimary: Colors.white,
                          ),),),
                        Container(
                          margin: EdgeInsets.only(top: 12),
                          child: ElevatedButton(
                          onPressed: (){Navigator.of(context).pop();}, 
                          child: Text("Batal"),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red.shade400,
                            onPrimary: Colors.white,
                          ),),),
                      ]
                    )
                  ],
                ));
              }, icon: Icon(Icons.list_alt)),
            ),
          ),
        ],
      ),
    );
  }
}
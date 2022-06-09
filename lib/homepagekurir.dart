import 'package:first_project/BuktiPengiriman.dart';
import 'package:first_project/Order.dart';
import 'package:first_project/e_wallet_kurir.dart';
import 'package:first_project/profilekurir.dart';
import 'package:flutter/material.dart';

class homepagekurir extends StatelessWidget {
  const homepagekurir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 193, 223, 240),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            label: "Home",
            icon: IconButton(onPressed: () {}, icon: Icon(Icons.home))),
        BottomNavigationBarItem(
            label: "Profile",
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return profilekurir();
                      },
                    ),
                  );
                },
                icon: Icon(Icons.person)))
      ]),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(top: 15, right: 50),
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
                  margin: EdgeInsets.only(left: 75, top: screenHeight / 11),
                  child: Text(
                    """
Helloo... 
Alexa""",
                    style: TextStyle(
                      fontFamily: "Arial Black",
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                  width: screenWidth,
                  height: screenHeight / 10,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 193, 223, 240)),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Color.fromARGB(255, 124, 171, 215),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Order();
                          },
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        // Text("data"),
                        Container(
                          child: Image.asset("assets/13.png"),
                        ),
                        Text(
                          "Order Paket",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Color.fromARGB(255, 124, 171, 215),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return E_Wallet_Kurir();
                              },
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Dompet Digital",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              child: Image.asset("assets/14.png"),
                            )
                          ],
                        ),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Color.fromARGB(255, 124, 171, 215),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return BuktiPengiriman();
                            },
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          // Text("data"),
                          Container(
                            child: Image.asset("assets/12.png"),
                          ),
                          Text(
                            "Bukti Pengiriman",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
      ),
    );
  }
}

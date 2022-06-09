import 'package:first_project/SignIn.dart';
import 'package:flutter/material.dart';

class WelcomePage2 extends StatelessWidget {
  const WelcomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 193, 223, 240),
        width: double.infinity,
        height: size.height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset("assets/Ellipse 33.png"),
            ),
            Positioned(
              right: -20,
              top: 300,
              child: Image.asset("assets/Ellipse 1.png"),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(top: 45, right: 50),
              child: Image.asset(
                "assets/Group 1.png",
                width: 40,
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.only(top: 60, right: 0),
              child: Image.asset(
                "assets/Group 33332.png",
                width: 140,
              ),
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 90),
                  child: Image.asset(
                    "assets/symbol 2.png",
                    width: screenWidth / 8,
                  ),
                ),
                const Text(
                  "Selamat Datang",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.3),
                ),
                const Text(
                  "DeKurir",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 182, 29)),
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 25),
                    child: Text(
                      "DeKurir hadir dengan berbagai fitur",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    )),
                const Text("untuk memudahkan",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 252, 172, 0))),
                const Text("Pengiriman Paket Anda",
                    style:
                        TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
                Container(
                  padding: EdgeInsets.only(top: 30, bottom: 20),
                  child: Image.asset(
                    "assets/3.png",
                    width: screenWidth * 0.72,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  color: Color.fromARGB(255, 136, 204, 241),
                  margin: EdgeInsets.only(top: screenHeight / 20),
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.175,
                      vertical: screenHeight * 0.06),
                  child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignIn();
                            },
                          ),
                        );
                      },
                      icon: Icon(Icons.keyboard_arrow_right),
                      label: Text("Tekan Tombol untuk pindah slide")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

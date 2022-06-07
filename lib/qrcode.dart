import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class qrcode extends StatelessWidget {
  const qrcode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: QrImage(
          data: "Barang Pemesanan",
          backgroundColor: Colors.white,
          size: 300,
        ),
      ),
    );
  }
}
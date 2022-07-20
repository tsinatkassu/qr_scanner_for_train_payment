import 'package:flutter/material.dart';
import 'package:qr_scanner_for_train_payment/screens/scanqr.dart';
import 'package:qr_scanner_for_train_payment/screens/scanqr.dart';

class scanscreen extends StatefulWidget {
  @override
  _scanscreenState createState() => _scanscreenState();
}

class _scanscreenState extends State<scanscreen> {
  late double height, width;
  String qrstring = "chance";

  get FlutterBarcodeScanner => null;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Scan QR Code"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            qrstring,
            style: TextStyle(color: Colors.blue, fontSize: 60),
          ),
          ElevatedButton(
            onPressed: scanQR,
            child: Text("Scan QR Code"),
          ),
          SizedBox(width: width),
        ],
      ),
    );
  }

  Future<void> scanQR() async {
    try {
      var scanMode;
      FlutterBarcodeScanner.scanBarcode("#2A99CF", "Cancel", true, scanMode.QR);
    } catch (e) {
      setState(() {
        qrstring = "plase scan closer";
      });
    }
  }
}

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanCodePage extends StatefulWidget {
  const ScanCodePage({super.key});

  @override
  State<ScanCodePage> createState() => _ScanCodePageState();
}

class _ScanCodePageState extends State<ScanCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
            child: const Text(
          'Scan QR Code',
          style: TextStyle(),
        )),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       Navigator.popAndPushNamed(context, "/generate");
        //     },
        //     icon: const Icon(
        //       Icons.qr_code,
        //     ),
        //   ),
        // ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              height: 550,
              width: 450,
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Icon(Icons.camera_alt_outlined,
                      color: Colors.blueAccent, size: 40),
                  SizedBox(height: 15),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur \n adipiscing elit.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.black87),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/img/full_thin.png',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.blueAccent,
                    ),
                    width: 200,
                    height: 40,
                    child: IconButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, "/generate");
                      },
                      icon: const Icon(
                        Icons.qr_code,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // MobileScanner(
      //   controller: MobileScannerController(
      //     detectionSpeed: DetectionSpeed.noDuplicates,
      //     returnImage: true,
      //   ),
      //   onDetect: (capture) {
      //     final List<Barcode> barcodes = capture.barcodes;
      //     final Uint8List? image = capture.image;
      //     for (final Barcode in barcodes) {
      //       print('Barcode found! ${Barcode.rawValue}');
      //     }
      //     if (image != null) {
      //       showDialog(
      //           context: context,
      //           builder: (context) {
      //             return AlertDialog(
      //               title: Text(
      //                 barcodes.first.rawValue ?? "",
      //               ),
      //               content: Image(image: MemoryImage(image)),
      //             );
      //           });
      //     }
      //   },
      // ),
    );
  }
}

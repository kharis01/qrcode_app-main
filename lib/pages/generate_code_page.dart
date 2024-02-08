import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class GenerateCodePage extends StatefulWidget {
  const GenerateCodePage({super.key});

  @override
  State<GenerateCodePage> createState() => _GenerateCodePageState();
}

class _GenerateCodePageState extends State<GenerateCodePage> {
  String? qrData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(child: const Text('Generate QR Code')),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       Navigator.popAndPushNamed(context, "/scan");
        //     },
        //     icon: const Icon(
        //       Icons.qr_code_scanner,
        //     ),
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                    Icon(Icons.qr_code, color: Colors.blueAccent, size: 30),
                    SizedBox(height: 15),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur \n adipiscing elit.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.black87),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Input Generate QR',
                        ),
                        onSubmitted: (value) {
                          setState(() {
                            qrData = value;
                          });
                        },
                      ),
                    ),
                    if (qrData != null)
                      Container(
                          height: 250,
                          width: 250,
                          child: PrettyQrView.data(data: qrData!)),
                    SizedBox(
                      height: 15,
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
                          Navigator.popAndPushNamed(context, "/scan");
                        },
                        icon: const Icon(
                          Icons.qr_code_scanner,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )

            // TextField(
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(),
            //     labelText: 'Input Generate QR',
            //   ),
            //   onSubmitted: (value) {
            //     setState(() {
            //       qrData = value;
            //     });
            //   },
            // ),
            // if (qrData != null) PrettyQrView.data(data: qrData!),
          ],
        ),
      ),
    );
  }
}

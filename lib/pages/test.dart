import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('heelo'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            width: 200,
            height: 100,
            color: Colors.blue,
            child: Text('Contoh Teks'),
          ),
        ],
      ),
    );
  }
}

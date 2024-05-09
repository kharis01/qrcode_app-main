import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Text(
              'Hello',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Text('Hello'),
          ),
          SizedBox(
            height: 25,
          ),
          Image.network(
            'https://images.unsplash.com/photo-1501004318641-b39e6451bec6?q=80&w=773&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            width: 200,
            height: 200,
          ),
        ],
      ),
    );
  }
}

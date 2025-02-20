import 'package:flutter/material.dart';

class ExpandedWidgetPractice extends StatelessWidget {
  const ExpandedWidgetPractice({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Widget"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Container(
              height: 50,
              // width: 50,
              color: Colors.green,
            ),
          ),

          Expanded(
            flex: 20,
            child: Container(
              height: 50,
              // width: 50,
              color: Colors.orange,
            ),
          ),

          Expanded(
            flex: 15,
            child: Container(
              height: 50,
              // width: 50,
              color: Colors.brown,
            ),
          ),

          Expanded(
            flex: 5,
            child: Container(
              height: 50,
              // width: 50,
              color: Colors.black,
            ),
          )
        ],
      )
    );
  }
}
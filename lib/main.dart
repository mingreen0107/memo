import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Instagram',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'fonts/FiraSansCondensed-Black.ttf',
                fontSize: 28
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                flex:1,
                child: Container(
                  color: Colors.grey[200],
                  child: Row(
                    children: [],
                  ),
                )),
            Expanded(
                flex:8,
                child: Container(
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}

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
          title: Text('Instagram',
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
              flex: 1,
            child: Container(
              color: Colors.grey[200],
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/cat1.png'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/cat2.webp'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/cat3.jpg'),
                  )
                ],
              ),
            ),),
            Expanded(
              flex: 8,
              child: Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    CircleAvatar(radius: 30,
                      child: FlutterLogo(size: 30,),
                    ),
                    SizedBox(width: 15,),
                    Text('m.mingreen',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(Icons.more_horiz)
                  ],
                ),
              ),
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

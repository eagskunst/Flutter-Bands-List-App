import 'package:flutter/material.dart';
import 'band_card_list.dart';
import 'custom_background.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bands Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
            Icons.dehaze
        ),
        centerTitle: true,
        title: Text(
          'Rock clásico',
          style: TextStyle(
              fontFamily: "Lato",
              fontWeight: FontWeight.w900
          ),
        ),
        elevation: 0.0,
        backgroundColor: Color(0xFFD299C2),
      ),
      body: Stack(
        children: <Widget>[
          CustomBackground(
            gradientColors: [
              Color(0xFFD299C2),
              Color(0xFFfef9d7)
            ]
          ),
          BandCardList()
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_movie_test_app/band_card.dart';
import 'package:flutter_movie_test_app/custom_background.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {

  final snackbar = SnackBar(
    content: Text(
      'Flutter!',
      style: TextStyle(
        fontFamily: 'Lato'
      ),
    ),
    duration: Duration(seconds: 3),
  );

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
      body: Container(
        child: Stack(
          children: <Widget>[
            CustomBackground(
                gradientColors: [
                  Color(0xFFD299C2),
                  Color(0xFFfef9d7)
                ]),
            BandCard(
                image: "http://s3.amazonaws.com/quietus_production/images/articles/26699/the_beatles_1561392384_crop_550x369.jpg",
                bandName: "The Beatles",
                bandYears: "1963-1970"
            )
          ],
        ),
      ),
      floatingActionButton: Builder(builder: (BuildContext context){
        return FloatingActionButton(
          child: Icon(Icons.vpn_key),
          onPressed: () => Scaffold.of(context).showSnackBar(snackbar),
        );
      })
    );
  }
}
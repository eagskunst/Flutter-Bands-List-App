import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {

  final List<Color> gradientColors;

  CustomBackground({ Key key, @required this.gradientColors });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment(-0.2, -1.0),
              end: Alignment(0.0, 1.0),
              stops: [0.3,1.0]
          )
      ),
    );
  }
}
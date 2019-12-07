import 'package:flutter/material.dart';

import 'like_button.dart';

// ignore: must_be_immutable
class BandCard extends StatefulWidget {
  final String image;
  final String bandName;
  final String bandYears;
  bool favorite;

  BandCard({ @required this.image, @required this.bandName, @required this.bandYears, this.favorite = false });

  @override
  _BandCardState createState() => _BandCardState();
}

class _BandCardState extends State<BandCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent,
        elevation: 0.6,
        margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(widget.image),
            ),
            title: Text(
              widget.bandName,
              style: TextStyle(
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0),
            ),
            subtitle: Text(
              widget.bandYears,
              style: TextStyle(
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w400,
                  fontSize: 17.0),
            ),
            trailing: LikeButton(
                favorite: widget.favorite, onTap: () => changeLikeState())));
  }

  void changeLikeState() {
    setState(() {
      widget.favorite = !widget.favorite;
    });
  }
}

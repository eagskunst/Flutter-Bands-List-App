import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {

  final bool favorite;
  final VoidCallback onTap;

  LikeButton({Key key, @required this.favorite, @required this.onTap});

  @override
  Widget build(BuildContext context) {

    final buttonIcon = this.favorite ? Icons.favorite : Icons.favorite_border;

    return InkWell(
      child: Icon(
          buttonIcon,
          color: Colors.pinkAccent
      ),
      onTap: this.onTap,
    );
  }
}
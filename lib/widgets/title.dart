import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheTitle extends StatelessWidget {
  final String title;
  final Color colorText;
  TheTitle(this.title, {@required this.colorText});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Stack(
        children: [
          Opacity(
            opacity: .6,
            child:
                CircleAvatar(backgroundColor: Color(0xffBD7FAB), maxRadius: 15),
          ),
          Text(
            ' ' + title,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: colorText == null ? Colors.black : colorText),
          )
        ],
      ),
    );
  }
}

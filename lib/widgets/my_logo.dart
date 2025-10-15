import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: 80,
          width: 110,
          child: Stack(
            children: [
              Positioned(
                top: 5,
                right: 0,
                child: Opacity(
                  opacity: .7,
                  child: CircleAvatar(
                      backgroundColor: Color(0xffBD7FAB), maxRadius: 32),
                ),
              ),
              Positioned(
                top: 5,
                left: 0,
                child: Opacity(
                  opacity: .7,
                  child: CircleAvatar(
                      backgroundColor: Color(0xff37B4C8), maxRadius: 32),
                ),
              ),
              Positioned(
                top: 20,
                child: Text(' MoSoft ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30)),
              ),
            ],
          ),
        );
      },
    );
  }
}

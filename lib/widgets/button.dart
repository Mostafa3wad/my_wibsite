import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;
  final IconData icon;
  MyButton({required this.text, required this.onTap, required this.icon});
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  double x = 5;
  double elvation = 8;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: (f) {
        setState(() {
          x = 10;
          elvation = 0;
        });
      },
      onTapUp: (s) {
        Future.delayed(Duration(milliseconds: 100), () {
          setState(() {
            x = 0;
            elvation = 17;
          });
        });
      },
      child: MouseRegion(
        onHover: (event) {
          setState(() {
            x = 0;
            elvation = 17;
          });
        },
        onExit: (event) {
          setState(() {
            x = 5;
            elvation = 8;
          });
        },
        child: Container(
          width: 160,
          height: 60,
          child: Stack(
            children: [
              Positioned(
                  bottom: 5,
                  child: Container(
                    width: 160,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFF902B69),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  )),
              AnimatedPositioned(
                top: x,
                duration: Duration(milliseconds: 400),
                curve: Curves.bounceOut,
                child: AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    curve: Curves.bounceOut,
                    width: 160,
                    height: 45,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                        color: Color(0xFFA7337A),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, elvation),
                          )
                        ]),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(widget.icon, color: Colors.white),
                          Text(
                            widget.text,
                            style: TextStyle(color: Colors.white),
                          )
                        ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}

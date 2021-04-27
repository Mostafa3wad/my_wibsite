import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mosoft_website/provider/scrollControll.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class AppBarTaplet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size.width);
    var prov = Provider.of<ScrollControll>(context);
    return AnimatedContainer(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35)),
          color: Color(0xfff9b749),
        ),
        height: prov.controllerOffset <= 40 ? 65 : 50,
        width: prov.controllerOffset <= 40
            ? size.width
            : size.width <= 830
                ? size.width * 0.86
                : size.width * 0.65,
        duration: Duration(milliseconds: 500),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(
              color: Color(0xdaf9b749),
              onPressed: () => Share.share(
                  'MoSoft https://repining-occurrence.000webhostapp.com/#/'),
              shape: CircleBorder(),
              child: Icon(
                Icons.share,
                color: Color(0xffA7337A),
                size: prov.controllerOffset <= 40
                    ? size.width * 0.03
                    : size.width * 0.02,
              ),
            ),
            FlatButton(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: Color(0xdaf9b749),
              onPressed: () => prov.moveToSkilsView(),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  Text('Skills',
                      style: TextStyle(
                          fontSize: prov.controllerOffset <= 40
                              ? size.width * 0.03
                              : size.width * 0.02,
                          fontWeight: FontWeight.bold,
                          color: prov.controllerOffset >= 1050 ||
                                  prov.controllerOffset <= 830
                              ? Colors.white
                              : Color(0xffB9377F))),
                  Text('.')
                ],
              ),
            ),
            FlatButton(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: Color(0xdaf9b749),
              onPressed: () => prov.moveToAboutView(isTaplet: true),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
              child: Text('About',
                  style: TextStyle(
                      fontSize: prov.controllerOffset <= 40
                          ? size.width * 0.03
                          : size.width * 0.02,
                      fontWeight: FontWeight.bold,
                      color: prov.controllerOffset >= 829 ||
                              prov.controllerOffset <= 560
                          ? Colors.white
                          : Color(0xffB9377F))),
            ),
            FlatButton(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: Color(0xdaf9b749),
              onPressed: () => prov.moveToRecentlyView(isTaplet: true),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
              child: Text('Recently Published',
                  style: TextStyle(
                      fontSize: prov.controllerOffset <= 40
                          ? size.width * 0.03
                          : size.width * 0.02,
                      fontWeight: FontWeight.bold,
                      color: prov.controllerOffset >= 560 ||
                              prov.controllerOffset <= 251
                          ? Colors.white
                          : Color(0xffB9377F))),
            ),
            FlatButton(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: Color(0xdaf9b749),
              onPressed: () => prov.moveToHomeView(),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
              child: Text('Home',
                  style: TextStyle(
                      fontSize: prov.controllerOffset <= 40
                          ? size.width * 0.03
                          : size.width * 0.02,
                      fontWeight: FontWeight.bold,
                      color: prov.controllerOffset <= 250
                          ? Color(0xffB9377F)
                          : Colors.white)),
            ),
          ],
        ));
  }
}

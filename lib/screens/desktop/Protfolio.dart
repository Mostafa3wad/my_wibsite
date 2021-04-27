import 'package:flutter/material.dart';
import 'package:mosoft_website/provider/scrollControll.dart';
import 'package:mosoft_website/screens/desktop/about.dart';
import 'package:mosoft_website/screens/desktop/home.dart';
import 'package:mosoft_website/screens/desktop/recently_published.dart';
import 'package:mosoft_website/screens/desktop/skils.dart';
import 'package:provider/provider.dart';

class DesktopProtfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      backgroundColor: Color(0xFFDDDFEB),
      body: ListView(
        controller: Provider.of<ScrollControll>(context).controller,
        padding: EdgeInsets.all(65),
        children: [
          Home(),
          RecentlyPublished(),
          About(),
          Skills(),
        ],
      ),
    );
  }
}

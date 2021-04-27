import 'package:flutter/material.dart';
import 'package:mosoft_website/provider/scrollControll.dart';
import 'package:mosoft_website/screens/mobile/RecentlyPublished.dart';
import 'package:mosoft_website/screens/taplet/about.dart';
import 'package:mosoft_website/screens/taplet/appbar.dart';
import 'package:mosoft_website/screens/taplet/home.dart';
import 'package:mosoft_website/screens/taplet/skills.dart';
import 'package:provider/provider.dart';

class ProtfolioTaplet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDDDFEB),
      body: Stack(
        children: [
          // AppBar
          ListView(
            controller: Provider.of<ScrollControll>(context).controller,
            padding: EdgeInsets.all(20),
            children: [
              Home(),
              RecentlyPublishedTaplet(),
              AboutTaplet(),
              SkillsTaplet(),
              SizedBox(height: 30)
            ],
          ),
          Positioned(right: 0, child: AppBarTaplet()),
        ],
      ),
    );
  }
}

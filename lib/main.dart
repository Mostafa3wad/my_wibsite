import 'package:flutter/material.dart';
import 'package:mosoft_website/provider/scrollControll.dart';
import 'package:mosoft_website/screens/desktop/Protfolio.dart';
import 'package:mosoft_website/screens/mobile/Protfolio.dart';
import 'package:mosoft_website/screens/taplet/Protfolio.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ScrollControll())],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenDevice(),
    );
  }
}

class ScreenDevice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth <= 400)
      return ProtfolioMobile();
    else if (screenWidth <= 1200) return ProtfolioTaplet();
    return DesktopProtfolio();
  }
}

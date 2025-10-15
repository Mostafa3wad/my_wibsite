import 'package:flutter/material.dart';

class ScrollControll with ChangeNotifier {
  late final ScrollController controller;

  double controllerOffset = 0;
  Color homeColor = Color(0xffF1F2F9);
  Color aboutColor = Color(0xffF1F2F9);
  Color skilsColor = Color(0xffF1F2F9);
  Color recentColor = Color(0xffF1F2F9);

  ScrollControll() {
    initController();
  }

  _scrollListener() {
    controllerOffset = controller.offset;
    print(controllerOffset);
    notifyListeners();
  }

  initController() {
    controller = ScrollController();
    controller.addListener(_scrollListener);
  }

  moveToHomeView() async {
    homeColor = Color(0xffFEEFD6);
    notifyListeners();
    await controller.animateTo(0,
        curve: Curves.linear, duration: Duration(milliseconds: 400));
    homeColor = Color(0xffF1F2F9);
    notifyListeners();
  }

  moveToAboutView({bool isTaplet = false}) async {
    aboutColor = Color(0xffFEEFD6);
    notifyListeners();
    await controller.animateTo(isTaplet ? 637 : 800,
        curve: Curves.linear, duration: Duration(milliseconds: 400));
    aboutColor = Color(0xffF1F2F9);
    notifyListeners();
  }

  moveToSkilsView() async {
    skilsColor = Color(0xffFEEFD6);
    notifyListeners();
    await controller.animateTo(controller.position.maxScrollExtent,
        curve: Curves.linear, duration: Duration(milliseconds: 400));
    skilsColor = Color(0xffF1F2F9);
    notifyListeners();
  }

  moveToRecentlyView({bool isTaplet = false}) async {
    recentColor = Color(0xffFEEFD6);
    notifyListeners();
    await controller.animateTo(304,
        curve: Curves.linear, duration: Duration(milliseconds: 400));
    recentColor = Color(0xffF1F2F9);
    notifyListeners();
  }
}

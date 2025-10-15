import 'package:flutter/foundation.dart';

class ButtonStateNotifier extends ChangeNotifier {
  final double elevationY;

  ButtonStateNotifier(this.elevationY) {
    elevation = elevationY + elevationY * 0.1;
    if (!kIsWeb) topPosition = 0;
  }

  double topPosition = 5;
  late double elevation;

  void triggerButtonDown() {
    topPosition = elevationY;
    elevation = 0;
    notifyListeners();
  }

  void triggerButtonUp() {
    Future.delayed(const Duration(milliseconds: 100), () {
      topPosition = 0;
      elevation = elevationY + elevationY * 0.1 + (!kIsWeb ? 0 : 6.5);
      notifyListeners();
    });
  }

  void triggerOnMouseHover() {
    topPosition = 0;
    elevation = elevationY + elevationY * 0.1 + 6.5;
    notifyListeners();
  }

  void triggerOnMouseExit() {
    topPosition = 5;
    elevation = elevationY + elevationY * 0.1;
    notifyListeners();
  }
}

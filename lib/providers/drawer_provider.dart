import 'package:flutter/material.dart';
import 'package:kalkulator/screens/area_calc_screen.dart';
import 'package:kalkulator/screens/basic_calc_screen.dart';
import 'package:kalkulator/screens/lenght_calc_screen.dart';
import 'package:kalkulator/screens/mass_calc_screen.dart';
import 'package:kalkulator/screens/speed_calc_screen.dart';
import 'package:kalkulator/screens/time_calc_screen.dart';

class DrawerProvider extends ChangeNotifier {
  int selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    BasicCalcScreen(),
    AreaCalcScreen(),
    LenghtCalcScreen(),
    MassClacScreen(),
    SpeedCalcScreen(),
    TimeCalcScreen()
  ];

  String screenTitle = 'Calculator';

  void changePage(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  Widget getSelectedScreen() {
    return _widgetOptions[selectedIndex];
  }
}

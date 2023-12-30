import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class BasicCalcProvider extends ChangeNotifier {
  String currentExpression = '';
  num result = 0.0;
  String resultString = '0';

  void calculate() {
    if (currentExpression.isEmpty) {
      resultString = '0';
      return;
    }
    try {
      result = currentExpression.interpret();
      if (result == result.round()) {
        resultString = result.toInt().toString();
      } else {
        resultString = result.toString();
      }
    } catch (e) {
      // ignore: empty_catches
    }

    notifyListeners();
  }

  void deleteAll() {
    currentExpression = '';
    result = 0.0;
    resultString = '0';

    notifyListeners();
  }

  void delete() {
    if (currentExpression.isEmpty) return;
    if (currentExpression.length == 1) {
      deleteAll();
      return;
    } else if (currentExpression[currentExpression.length - 1] != ' ') {
      currentExpression =
          currentExpression.substring(0, currentExpression.length - 1);
    } else {
      if (currentExpression != "" && currentExpression.length > 3) {
        currentExpression =
            currentExpression.substring(0, currentExpression.length - 3);
      }
    }

    calculate();
  }

  void equals() {
    currentExpression = resultString;
    resultString = '';
    notifyListeners();
  }

  void onPressed(String button) {
    if (button == '-' && currentExpression.isEmpty) {
      currentExpression += '- ';
      notifyListeners();
      return;
    }
    if (button == '+' || button == '-' || button == '*' || button == '/') {
      if (currentExpression[currentExpression.length - 1] == ' ') return;
      currentExpression += ' ';
    } else if (button == ',' &&
        currentExpression[currentExpression.length - 1] == ',') {
      return;
    }

    currentExpression += button;

    if (button == '+' || button == '+' || button == '*' || button == '/') {
      currentExpression += ' ';
    }

    calculate();
  }
}

import 'package:calculator_app/models/user_input.dart';

class CalculatorController {
  final UserInput _model;

  CalculatorController([UserInput? userInput]) : _model = userInput ?? UserInput();

  String get output => _model.output;

  void handleButtonPress(String buttonText) {
    if (buttonText == "C") {
      _model.clear();
    } else if (buttonText == "=") {
      _model.calculate();
    } else {
      _model.appendOutput(buttonText);
    }
  }
}

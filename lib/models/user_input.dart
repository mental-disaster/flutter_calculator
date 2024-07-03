import 'package:calculator_app/constants/reg_exp.dart';
import 'package:math_expressions/math_expressions.dart';

class UserInput {
  String _output = "0";

  String get output => _output;

  void clear() {
    _output = "0";
  }

  void appendOutput(String value) {
    RegExp regExp = RegExp('^[$calculable]*\$');
    if (_output == "0" || !regExp.hasMatch(_output)) {
      _output = value;
    } else {
      _output += value;
    }
  }

  void calculate() {
    Parser parser = Parser();
    Expression exp = parser.parse(_output);

    ContextModel contextModel = ContextModel();

    double result = exp.evaluate(EvaluationType.REAL, contextModel);

    _output = result.toString();
  }
}

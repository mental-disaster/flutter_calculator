import 'package:calculator_app/models/user_input.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("test user input model", () {
    late UserInput testUserInput;

    setUp(() {
      testUserInput = UserInput();
    });

    test("append test", () {
      List<Map<String, dynamic>> testList = [
        {
          'expected': '0',
          'inputList': ['0', '0'],
        },
        {
          'expected': '33',
          'inputList': ['3', '3'],
        },
        {
          'expected': '10+33',
          'inputList': ['1', '0', '+', '3', '3'],
        },
      ];

      for (var element in testList) {
        for (var input in element['inputList']) {
          testUserInput.appendOutput(input);
        }

        expect(testUserInput.output, element['expected']);

        testUserInput.clear();
      }
    });

    test("clear test", () {
      testUserInput.appendOutput("10+33");
      testUserInput.clear();

      String expected = "0";

      expect(testUserInput.output, expected);
    });
  });
}

import 'package:calculator_app/controllers/calculator_controller.dart';
import 'package:calculator_app/models/user_input.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'calculator_controller_test.mocks.dart';


@GenerateMocks([UserInput])
void main() {
  group("test calculator controller", () {
    late CalculatorController testController;
    late MockUserInput mockUserInput;

    setUpAll(() {
      mockUserInput = MockUserInput();
      testController = CalculatorController(mockUserInput);
    });

    setUp(() {
    });

    test("press C test", () {
      when(mockUserInput.clear()).thenAnswer((invocation) {});

      testController.handleButtonPress('C');

      verify(mockUserInput.clear()).called(1);
    });

    test("press = test", () {
      when(mockUserInput.calculate()).thenAnswer((invocation) {});

      testController.handleButtonPress('=');

      verify(mockUserInput.calculate()).called(1);
    });

    test("press other button test", () {
      when(mockUserInput.appendOutput(any)).thenAnswer((invocation) {});

      testController.handleButtonPress('1');
      testController.handleButtonPress('+');
      testController.handleButtonPress('2');

      verify(mockUserInput.appendOutput('1')).called(1);
      verify(mockUserInput.appendOutput('+')).called(1);
      verify(mockUserInput.appendOutput('2')).called(1);
    });
  });
}
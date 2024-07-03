import 'package:flutter/material.dart';
import '../controllers/calculator_controller.dart';
import '../widgets/calculator_button.dart';

class CalculatorHome extends StatefulWidget {
  const CalculatorHome({super.key});

  @override
  CalculatorHomeState createState() => CalculatorHomeState();
}

class CalculatorHomeState extends State<CalculatorHome> {
  final CalculatorController _controller = CalculatorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('계산기'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
            child: Text(
              _controller.output,
              style: const TextStyle(fontSize: 48.0),
            ),
          ),
          const Expanded(
            child: Divider(),
          ),
          Column(
            children: [
              Row(
                children: [
                  CalculatorButton(text: "7", onPressed: _handleButtonPress),
                  CalculatorButton(text: "8", onPressed: _handleButtonPress),
                  CalculatorButton(text: "9", onPressed: _handleButtonPress),
                  CalculatorButton(text: "/", onPressed: _handleButtonPress),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(text: "4", onPressed: _handleButtonPress),
                  CalculatorButton(text: "5", onPressed: _handleButtonPress),
                  CalculatorButton(text: "6", onPressed: _handleButtonPress),
                  CalculatorButton(text: "*", onPressed: _handleButtonPress),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(text: "1", onPressed: _handleButtonPress),
                  CalculatorButton(text: "2", onPressed: _handleButtonPress),
                  CalculatorButton(text: "3", onPressed: _handleButtonPress),
                  CalculatorButton(text: "-", onPressed: _handleButtonPress),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(text: ".", onPressed: _handleButtonPress),
                  CalculatorButton(text: "0", onPressed: _handleButtonPress),
                  CalculatorButton(text: "00", onPressed: _handleButtonPress),
                  CalculatorButton(text: "+", onPressed: _handleButtonPress),
                ],
              ),
              Row(
                children: [
                  CalculatorButton(text: "C", onPressed: _handleButtonPress),
                  CalculatorButton(text: "=", onPressed: _handleButtonPress),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  void _handleButtonPress(String buttonText) {
    setState(() {
      _controller.handleButtonPress(buttonText);
    });
  }
}

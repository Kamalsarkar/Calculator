import 'package:calculater/components/button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int firstNum = 0;
  int secondNum = 0;
  String history = '';
  String res = '';
  String operation = '';
  String textToDisplay = '';

  void btnOnClick(var btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnVal == '<') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'x' ||
        btnVal == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'x') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Flutter Calculator App',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: const Color(0xFF28527a),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: const Alignment(0.9, 0),
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: Text(
                    history,
                    style: const TextStyle(
                        color: Color(0x66FFFFFF),
                        // fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ),
              ),
              Container(
                alignment: const Alignment(0.9, 0),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    textToDisplay,
                    style: const TextStyle(
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                        fontSize: 37),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    callback: btnOnClick,
                    text: 'AC',
                    fillcolor: const Color(0xFF8ac4d0),
                  ),
                  Button(
                    callback: btnOnClick,
                    text: 'C',
                    fillcolor: const Color(0xFF8ac4d0),
                  ),
                  Button(
                    callback: btnOnClick,
                    text: '<',
                    fillcolor: const Color(0xFFf4d160),
                  ),
                  Button(
                    callback: btnOnClick,
                    text: '/',
                    fillcolor: const Color(0xFFf4d160),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    callback: btnOnClick,
                    text: '9',
                    fillcolor: const Color(0xFF8ac4d0),
                  ),
                  Button(
                    callback: btnOnClick,
                    text: '8',
                    fillcolor: const Color(0xFF8ac4d0),
                  ),
                  Button(
                    callback: btnOnClick,
                    text: '7',
                    fillcolor: const Color(0xFF8ac4d0),
                  ),
                  Button(
                    callback: btnOnClick,
                    text: 'x',
                    fillcolor: const Color(0xFFf4d160),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    callback: btnOnClick,
                    text: '6',
                    fillcolor: const Color(0xFF8ac4d0),
                  ),
                  Button(
                    callback: btnOnClick,
                    text: '5',
                    fillcolor: const Color(0xFF8ac4d0),
                  ),
                  Button(
                    callback: btnOnClick,
                    text: '4',
                    fillcolor: const Color(0xFF8ac4d0),
                  ),
                  Button(
                    callback: btnOnClick,
                    text: '-',
                    fillcolor: const Color(0xFFf4d160),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    callback: btnOnClick,
                    text: '3',
                    fillcolor: const Color(0xFF8ac4d0),
                  ),
                  Button(
                    callback: btnOnClick,
                    text: '2',
                    fillcolor: const Color(0xFF8ac4d0),
                  ),
                  Button(
                    callback: btnOnClick,
                    text: '1',
                    fillcolor: const Color(0xFF8ac4d0),
                  ),
                  Button(
                    callback: btnOnClick,
                    text: '+',
                    fillcolor: const Color(0xFFf4d160),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    callback: btnOnClick,
                    text: '.',
                    fillcolor: const Color(0xFF8ac4d0),
                  ),
                  Button(
                    callback: btnOnClick,
                    text: '0',
                    fillcolor: const Color(0xFF8ac4d0),
                  ),
                  Button(
                    callback: btnOnClick,
                    text: '00',
                    fillcolor: const Color(0xFF8ac4d0),
                  ),
                  Button(
                    callback: btnOnClick,
                    text: '=',
                    fillcolor: const Color(0xFFf4d160),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

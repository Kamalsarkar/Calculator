import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color fillcolor;
  final Function callback;

  const Button(
      {super.key,
      required this.text,
      required this.fillcolor,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(13.0),
      child: SizedBox(
          width: 60,
          height: 60,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(fillcolor),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            child: FittedBox(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            onPressed: () => callback(text),
          )),
    );
  }
}

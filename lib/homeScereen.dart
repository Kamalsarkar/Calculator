import 'package:calculater/components/button.dart';
import 'package:flutter/material.dart';

class homeScereen extends StatefulWidget {
  const homeScereen({super.key});

  @override
  State<homeScereen> createState() => _homeScereenState();
}

class _homeScereenState extends State<homeScereen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(210, 0, 0, 0),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 1),
                    child: Column(
                      children: [
                        Text(
                          "",
                          style: TextStyle(),
                        ),
                        Text(
                          "",
                          style: TextStyle(),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            MyButton(title: '1'),
                            MyButton(title: '2'),
                            MyButton(title: '3'),
                            MyButton(
                              title: '4',
                              color: Colors.orange,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            MyButton(title: '1'),
                            MyButton(title: '='),
                            MyButton(title: '3'),
                            MyButton(
                              title: '4',
                              color: Colors.orange,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            MyButton(title: '1'),
                            MyButton(title: '2'),
                            MyButton(title: '3'),
                            MyButton(
                              title: '4',
                              color: Colors.orange,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            MyButton(title: '1'),
                            MyButton(title: '2'),
                            MyButton(title: '3'),
                            MyButton(
                              title: '4',
                              color: Colors.orange,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

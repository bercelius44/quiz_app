import 'package:flutter/material.dart';

import 'package:quiz_app/home.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  int activeScreen = 1;

  void switchScreen() {
    setState(() {
      activeScreen = 2;
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = Home(switchScreen);

    switch (activeScreen) {
      case 1:
        screenWidget = Home(switchScreen);
        break;
      case 2:
        screenWidget = const QuestionsScreen();
        break;
    }

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}

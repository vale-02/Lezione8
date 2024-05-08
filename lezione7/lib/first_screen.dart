import 'package:flutter/material.dart';
import 'package:lezione7/data/questions.dart';
import 'package:lezione7/questions_screen.dart';
import 'package:lezione7/result_screen.dart';
import 'package:lezione7/start_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
  void switchNewScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void addAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchNewScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsWidget(
        onSelectAnswer: addAnswer,
      );
    }
    if (activeScreen == 'results-screen') {
      screenWidget = ResultWidget(
        chosenAnswers: selectedAnswers,
      );
    }
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [Colors.white, Color.fromARGB(255, 22, 60, 118)],
              ),
            ),
            // da usare in caso di initState
            // child: activeScreen,
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}

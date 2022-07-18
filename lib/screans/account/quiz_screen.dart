import 'package:flutter/material.dart';

import '../../widgets/global/header.dart';
import '../../widgets/global/background.dart';
import '../../widgets/quiz/custom_button.dart';
import '../../widgets/quiz/answers.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int questionIndex = 0;
  final Map<String, List<String>> questions = {
    " How do you protect your business against cyber-crime?": [
      "We have cybersecurity insurance coverage",
      "Our dedicated staff will protect us",
      "We give regular training for best practices",
      "Third-party vendor protection",
    ],
    "What is SEO?": [
      "We have cybersecurity insurance coverage",
      "Our dedicated staff will protect us",
      "We give regular training for best practices",
      "Third-party vendor protection",
    ],
    "Who should join this course?": [
      "We have cybersecurity insurance coverage",
      "Our dedicated staff will protect us",
      "We give regular training for best practices",
      "Third-party vendor protection",
    ],
    "What are the T&C for this program?": [
      "nope",
      "Our dedicated staff will protect us",
      "We give regular training for best practices",
      "Third-party vendor protection",
    ],
  };
  List<String> collectedAnswers = [];

  void getSelectedQuestion(index) {
    setState(() {
      questionIndex = index;
    });
  }

  void addAnswer(String answer) {
    setState(() {
      // questions.values.toList()[question number][ answer number]
      if (!collectedAnswers.contains(answer)) collectedAnswers.add(answer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(title: "Quiz name", route: ""),
          Background(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomButton(
                  getSelected: getSelectedQuestion,
                  selectedIndex: questionIndex,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(questions.keys.toList()[questionIndex]),
                ),
                Answers(answers: questions.values.toList()[questionIndex], addAnswer: addAnswer),
                TextButton(
                  onPressed: () {
                    final snackBar = SnackBar(
                      backgroundColor: Theme.of(context).colorScheme.error,
                      content: const Text(
                        'Your answers have been saved',
                        style: TextStyle(color: Colors.white),
                      ),
                    );

                    setState(() {
                      if (questionIndex == 3) {
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Navigator.of(context).pop();
                      } else {
                        questionIndex += 1;
                      }
                    });
                  },
                  style: TextButton.styleFrom(
                      primary: Theme.of(context).colorScheme.onPrimary,
                      backgroundColor: const Color(0xFF7DC579)),
                  child: const Text(
                    'Next question',
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

//
// Container(
// padding: const EdgeInsets.all(10),
// color: Theme.of(context).colorScheme.secondary,
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// // ------course Image-----
// Container(
// width: 50,
// height: 50,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10.0),
// color: Colors.white,
// image: DecorationImage(
// image: NetworkImage(""),
// fit: BoxFit.cover,
// ),
// ),
// ),
// SizedBox(
// width: 20,
// ),
//
// Text("course Title")
// ],
// ),
// ),

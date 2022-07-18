import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  const Answers({
    Key? key,
    required this.answers,
    required this.addAnswer,
  }) : super(key: key);

  final List<String> answers;
  final Function addAnswer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          4,
          (i) => GestureDetector(
                onTap: () {
                  addAnswer(answers[i]);
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 80,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE1E0E9)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(answers[i]),
                  ),
                ),
              )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StudentDataCard extends StatelessWidget {
  const StudentDataCard({
    required this.totalCourseNum,
    required this.completeNum,
    Key? key,
  }) : super(key: key);
  final String totalCourseNum;
  final String completeNum;

  @override
  Widget build(BuildContext context) {
    return Container(
      // CARD
      margin: const EdgeInsets.only(bottom: 5.0),
      width: MediaQuery.of(context).size.width * .9,
      height: 80,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // first icon
            color: Theme.of(context).colorScheme.primaryContainer,
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: const FaIcon(
                    FontAwesomeIcons.tv,
                    color: Colors.deepOrange,
                    size: 30,
                  ),
                ), // Icon
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Total Courses"),
                    Text(totalCourseNum),
                  ],
                )
              ],
            ),
          ), // First ICON
          Container(
            color: Theme.of(context).colorScheme.tertiaryContainer,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // icon
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: FaIcon(
                    FontAwesomeIcons.clipboardCheck,
                    color: Colors.purple[800],
                    size: 30,
                  ),
                ), // Icon
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Complete lessons"),
                    Text(completeNum),
                  ],
                )
              ],
            ),
          ) // SECOND ICON
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/course_provider.dart';
import '../../widgets/my_courses/my_course_card.dart';

class MyCoursesList extends StatelessWidget {
  const MyCoursesList({required this.height, Key? key}) : super(key: key);
  final double height;

  @override
  Widget build(BuildContext context) {
    final courses = Provider.of<CourseProvider>(context, listen: false).getCourses;
    return Container(
      height: MediaQuery.of(context).size.height * height,
      margin: const EdgeInsets.only(top: 5.0),
      child: ListView.builder(
          itemCount: courses.length,
          itemBuilder: (BuildContext context, int index) {
            return MyCourseCard(
                id: courses[index].id,
                courseName: courses[index].title,
                courseImage: courses[index].image,
                instructorName: courses[index].instructor,
                price: courses[index].price,
                rating: courses[index].price);
          }),
    );
  }
}

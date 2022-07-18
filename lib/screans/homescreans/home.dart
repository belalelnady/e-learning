import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/home/header_home.dart';
import '../../widgets/home/student_data_card.dart';
import '../../widgets/home/recommendation_list.dart';
import '../../widgets/global/background.dart';
import '../../providers/course_provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Provider.of<CourseProvider>(context, listen: false).fetchRecomCourses();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HeaderHome(
            name: "Lori Stevens",
            avatar: "https://eduport.webestica.com/assets/images/avatar/09.jpg",
          ),
          StudentDataCard(
            completeNum: "7",
            totalCourseNum: "9",
          ),
          // Background White Color
          Background(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 20.0, top: 20.0),
                  child: const Text("Recommendation"),
                ),
                if (!Provider.of<CourseProvider>(context, listen: false).isLoading)
                  const Recommendationlist(height: .5),
                if (Provider.of<CourseProvider>(context, listen: false).isLoading)
                  const Center(heightFactor: 10, child: const CircularProgressIndicator()),
              ],
            ),
          )
        ],
      ),
    );
  }
}

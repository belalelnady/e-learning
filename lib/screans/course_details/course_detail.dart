import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/global/header.dart';
import '../../widgets/global/background.dart';
import '../../widgets/course_detail/course_overview.dart';
import '../../widgets/course_detail/instructor_overview.dart';
import '../../providers/course_provider.dart';

class CourseDetail extends StatefulWidget {
  const CourseDetail({Key? key}) : super(key: key);

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final courseId = ModalRoute.of(context)!.settings.arguments as String; // id o
    final loadedCourse = Provider.of<CourseProvider>(context, listen: false).findById(courseId);

    // f clicked course
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(title: "Course Detail", route: ""),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(loadedCourse.title,
                  style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 30))),
          Background(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //--------tabBar----------------
                  Container(
                    child: TabBar(
                      controller: _tabController,
                      tabs: const [
                        Tab(
                          text: 'Overview',
                        ),
                        Tab(
                          text: 'Instructor',
                        ),
                      ],
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      labelColor: Theme.of(context).colorScheme.onBackground,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  //--------tabVIEW----------------
                  Container(
                    width: double.maxFinite,
                    height: MediaQuery.of(context).size.height * .65,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        CourseOverview(course: loadedCourse),
                        InstructorOverview(course: loadedCourse),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

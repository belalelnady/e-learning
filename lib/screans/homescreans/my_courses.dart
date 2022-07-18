import 'package:flutter/material.dart';

import '../../widgets/global/header.dart';
import '../../widgets/global/background.dart';
import '../../widgets/my_courses/my_courses_list.dart';

class MyCourses extends StatefulWidget {
  const MyCourses({Key? key}) : super(key: key);

  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(title: "My Courses", route: "/"),
          Background(
            child: Column(
              children: [
                //--------tabBar----------------
                Container(
                  child: TabBar(
                    controller: _tabController,
                    tabs: const [
                      Tab(
                        text: 'InProgress',
                      ),
                      Tab(
                        text: 'Done',
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
                  height: MediaQuery.of(context).size.height * .6,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .6,
                        child: const MyCoursesList(height: .4),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .6,
                        child: const MyCoursesList(height: .4),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

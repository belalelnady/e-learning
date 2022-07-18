import 'package:flutter/material.dart';

import '../../widgets/global/header.dart';
import '../../widgets/global/background.dart';
import '../../widgets/global/courses_list.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(title: "Search Results", route: ""),
          Background(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Results "), Text("Total 6")]),
                ),
                const CoursesList(
                  height: .7,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../widgets/global/header.dart';
import '../../widgets/global/background.dart';
import '../../widgets/global/courses_list.dart';

class InstructorDetail extends StatelessWidget {
  const InstructorDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(title: "Instructor", route: ""),
          Card(name: "Sarah William", info: "Developer & Instructor"),
          const Divider(thickness: 1.0, endIndent: 20, indent: 20),
          // ---DESCRIPTION---
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Text(
              "Desctription ",
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          // ---Email----
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Text(
              "Email : example@gmail.com",
              style: Theme.of(context).textTheme.subtitle2?.copyWith(fontWeight: FontWeight.normal),
            ),
          ),
          Background(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Courses"),
                        Text(
                          "Total 7",
                          style: Theme.of(context).textTheme.caption,
                        )
                      ]),
                ),
                const CoursesList(
                  height: .5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    required this.info,
    required this.name,
    Key? key,
  }) : super(key: key);
  final String info;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ---AVATART-----
          Container(
            margin: const EdgeInsets.only(right: 20.0),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage("https://eduport.webestica.com/assets/images/avatar/09.jpg"),
                fit: BoxFit.contain,
              ),
            ),
          ),
          //____instructorName--------
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.subtitle2,
                  )),
              Text(
                info,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

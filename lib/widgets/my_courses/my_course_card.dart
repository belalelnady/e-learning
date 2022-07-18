import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCourseCard extends StatelessWidget {
  const MyCourseCard({
    required this.id,
    required this.courseName,
    required this.courseImage,
    required this.instructorName,
    required this.price,
    required this.rating,
    Key? key,
  }) : super(key: key);

  final String courseName;
  final String id;
  final String courseImage;
  final String instructorName;
  final double rating;
  final double price;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/course_playlist");
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
        ),
        padding: const EdgeInsets.all(15.0),
        height: 105,
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        child: Row(
          children: [
            //----- course DETAILS------
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(courseName),
                  Text("price : ${price.toString()}"),
                  Row(
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Text("  ${rating.toString()} • by ${instructorName.toString()}"),
                    ],
                  )
                ],
              ),
            ),
            // ------course Image-----
            Container(
              margin: const EdgeInsets.only(right: 8.0),
              width: 85,
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(courseImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

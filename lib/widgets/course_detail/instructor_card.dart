import 'package:flutter/material.dart';

class InstructorCard extends StatelessWidget {
  const InstructorCard({
    required this.info,
    required this.name,
    Key? key,
  }) : super(key: key);
  final String info;
  final String name;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/instructor_detail");
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10.0, left: 5.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(20.0),
        ),
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
                  image: NetworkImage(
                      "https://eduport.webestica.com/assets/images/avatar/09.jpg"),
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
                    )),
                Text(info, style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

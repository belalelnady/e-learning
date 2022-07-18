import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/course_model.dart';
import '../../providers/cart_provider.dart';

class CourseOverview extends StatelessWidget {
  const CourseOverview({Key? key, required this.course}) : super(key: key);
  final Course course;

  @override
  Widget build(BuildContext context) {
    //---- cart provider --------
    final cart = Provider.of<CartProvider>(context, listen: false);

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
              child: Text(course.description, style: Theme.of(context).textTheme.bodyText1),
            ),
            const Divider(
              thickness: 1,
              height: 30,
            ),
            Container(
                margin: const EdgeInsets.only(top: 10.0), child: const Text("what will you Learn")),
            // -----LIST OF WHAT WILL BE LEARNT ---
            Container(
              height: MediaQuery.of(context).size.height * .3,
              margin: const EdgeInsets.only(top: 10.0, left: 20),
              child: ListView.builder(
                  itemCount: course.whatWillulearn.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        "• ${course.whatWillulearn[index]}",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    );
                  }),
            ),
            // ------ADD to cart button -----------
            Container(
              width: MediaQuery.of(context).size.width * .4,
              height: 50,
              margin: const EdgeInsets.only(top: 10.0),
              child: TextButton(
                onPressed: () {
                  cart.addToCart(course.id, course.title, course.instructor, course.image,
                      course.price, course.rating);
                },
                child: const Text("Add to Cart"),
                style:
                    TextButton.styleFrom(backgroundColor: Colors.green[400], primary: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

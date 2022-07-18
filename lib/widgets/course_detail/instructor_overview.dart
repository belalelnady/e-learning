import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'instructor_card.dart';
import '../../models/course_model.dart';
import '../../providers/cart_provider.dart';

class InstructorOverview extends StatelessWidget {
  const InstructorOverview({
    required this.course,
    Key? key,
  }) : super(key: key);
  final Course course;

  @override
  Widget build(BuildContext context) {
    //---- cart provider --------
    final cart = Provider.of<CartProvider>(context, listen: false);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InstructorCard(
            name: "Sarah William",
            info: "1400 Students",
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 15),
            child: const Text("Description"),
          ),
          //------decription / rating / email -----
          Container(
            margin: const EdgeInsets.only(left: 18, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Fulfilled direction use continual set him proprietycontinued"
                    " Saw met applauded favorite deficienb engrossed read more",
                    style: Theme.of(context).textTheme.bodyText1),
                //--- number courses raiting--------
                Container(
                  margin:
                      EdgeInsets.only(top: MediaQuery.of(context).size.height * .06, bottom: 20),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.circlePlay,
                        color: Theme.of(context).colorScheme.surface,
                      ),
                      const SizedBox(width: 5),
                      Text("29 Courses", style: Theme.of(context).textTheme.bodyText1),
                      SizedBox(width: MediaQuery.of(context).size.width * .2),
                      const FaIcon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.yellow,
                      ),
                      const SizedBox(width: 5),
                      Text("4.4", style: Theme.of(context).textTheme.bodyText1),
                    ],
                  ),
                ),

                Text("EMAI ID : EXAMPLE@gmail.com", style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
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
    );
  }
}

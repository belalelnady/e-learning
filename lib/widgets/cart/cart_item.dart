import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import './../../providers/cart_provider.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    required this.cartItemId,
    required this.courseName,
    required this.courseImage,
    required this.instructorName,
    required this.price,
    required this.rating,
    required this.productId,
    Key? key,
  }) : super(key: key);

  final String productId;
  final String cartItemId;
  final String courseName;
  final String courseImage;
  final String instructorName;
  final double rating;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      height: MediaQuery.of(context).size.height * .24,
      width: MediaQuery.of(context).size.width * .8,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.all(Radius.circular(10.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //----- course DETAILS------
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      courseName,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const SizedBox(height: 12.0),
                    Text("price : ${price.toString()}",
                        style: Theme.of(context).textTheme.bodyText2),
                    const SizedBox(height: 12.0),
                    Row(
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.solidStar,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        const SizedBox(width: 6),
                        Text(rating.toString()),
                        Text("   • by ${instructorName.toString()}",
                            style: Theme.of(context).textTheme.caption),
                      ],
                    )
                  ],
                ),
              ),
              // ------course Image-----
              Container(
                margin: const EdgeInsets.only(right: 8.0),
                width: 75,
                height: 75,
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
          TextButton(
            onPressed: () {
              Provider.of<CartProvider>(context, listen: false).removeFromCart(productId);
            },
            style: TextButton.styleFrom(primary: Theme.of(context).colorScheme.onSecondary),
            child: const Text("Remove"),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:provider/provider.dart';

import '../../providers/cart_provider.dart';

class Header extends StatelessWidget {
  const Header({
    required this.title,
    required this.route,
    Key? key,
  }) : super(key: key);
  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .15,
      padding: const EdgeInsets.only(top: 50, bottom: 20.0, right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  route == "" ? Navigator.of(context).pop() : Navigator.pushNamed(context, "/");
                },
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 15,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
              Text(title, style: Theme.of(context).textTheme.subtitle2),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/cart");
            },
            child: Consumer<CartProvider>(
              builder: (_, cartData, ch) => Badge(
                animationType: BadgeAnimationType.fade,
                badgeColor: Theme.of(context).colorScheme.surface,
                badgeContent: Text(cartData.getItemCount().toString()),
                child: ch,
              ),
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

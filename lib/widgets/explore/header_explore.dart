import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/cart_provider.dart';

class HeaderExplore extends StatelessWidget {
  const HeaderExplore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //---- cart provider --------
    return Container(
      height: MediaQuery.of(context).size.height * .15,
      padding: const EdgeInsets.only(top: 50, bottom: 20.0, right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Explore",
            style: Theme.of(context).textTheme.subtitle2,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/cart');
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

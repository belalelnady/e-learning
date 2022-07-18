import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:provider/provider.dart';

import '../../providers/cart_provider.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({Key? key, required this.name, required this.avatar}) : super(key: key);

  final String name;
  final String avatar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 20.0, right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // _____AVATAR_______
              Container(
                margin: const EdgeInsets.only(right: 20.0),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(avatar),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Text(
                    name,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
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

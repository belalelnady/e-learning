import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/global/background.dart';
import '../../widgets/cart/cart_item.dart';
import '../../providers/cart_provider.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //-------Header---------
          Container(
            height: MediaQuery.of(context).size.height * .05,
            margin: const EdgeInsets.only(top: 40),
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
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
                    Text("Cart", style: Theme.of(context).textTheme.subtitle2),
                  ],
                ),
              ],
            ),
          ),
          //-----background-----
          Background(
              child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              children: [
                // ------CartItem List-------
                Container(
                  height: constraints.maxHeight * .62,
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Consumer<CartProvider>(
                    builder: (_, cart, ch) {
                      return Container(
                        height: MediaQuery.of(context).size.height * .5,
                        margin: const EdgeInsets.only(top: 5.0),
                        child: Scrollbar(
                          thickness: .8,
                          child: ListView.builder(
                              padding: const EdgeInsets.symmetric(horizontal: 9),
                              itemCount: cart.cartItems.length,
                              itemBuilder: (BuildContext context, int index) {
                                return CartItem(
                                    // key: ValueKey(cart.cartItems.keys.toString()[index]),
                                    productId: cart.cartItems.keys.toList()[index],
                                    cartItemId: cart.cartItems.values
                                        .toList()[index]
                                        .id, //this is the id of the cart item
                                    courseName: cart.cartItems.values.toList()[index].title,
                                    courseImage: cart.cartItems.values.toList()[index].image,
                                    instructorName:
                                        cart.cartItems.values.toList()[index].instructorName,
                                    price: cart.cartItems.values.toList()[index].price,
                                    rating: cart.cartItems.values.toList()[index].rating);
                              }),
                        ),
                      );
                    },
                  ),
                ),
                // --====TOTAL AND BUTTON CHECKOUT
                Container(
                  height: constraints.maxHeight * .3,
                  child: Column(
                    children: [
                      const Divider(thickness: 1.0, endIndent: 20, indent: 20),
                      //------------ total price-------
                      Container(
                        height: 30,
                        margin: const EdgeInsets.only(top: 20.0, bottom: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Items",
                              style: Theme.of(context).textTheme.caption,
                            ),
                            Consumer<CartProvider>(
                              builder: (_, cartItem, __) => Text("${cartItem.totalPrice}\$",
                                  style: Theme.of(context).textTheme.bodyText2),
                            )
                          ],
                        ),
                      ),
                      // ======= Check out Button ======
                      Container(
                        width: MediaQuery.of(context).size.width * .82,
                        height: 50,
                        margin: const EdgeInsets.only(top: 20.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/checkout');
                          },
                          child: const Text("Checkout Now"),
                          style: TextButton.styleFrom(
                              primary: Theme.of(context).colorScheme.onPrimary,
                              backgroundColor: const Color(0xFF7DC579)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../widgets/global/header.dart';
import '../../widgets/global/background.dart';
import '../../widgets/cart/payment_detail.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(title: "Payment", route: ""),
          Background(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const PaymentDetail(),
                  // -----BUTTONS-----
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .4,
                        height: 50,
                        margin: const EdgeInsets.only(top: 10.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/cart');
                          },
                          child: const Text("Go to Cart"),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.green[400], primary: Colors.white),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .4,
                        height: 50,
                        margin: const EdgeInsets.only(top: 10.0),
                        child: TextButton(
                          onPressed: () {
                            final snackBar = SnackBar(
                              backgroundColor: Theme.of(context).colorScheme.error,
                              content: const Text(
                                'Your changes have been saved',
                                style: TextStyle(color: Colors.white),
                              ),
                            );

                            ScaffoldMessenger.of(context).showSnackBar(snackBar);

                            Navigator.of(context).pop();
                          },
                          child: const Text("Save changes"),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.green[400], primary: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

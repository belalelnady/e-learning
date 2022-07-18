import 'package:flutter/material.dart';

import '../../widgets/global/background.dart';
import '../../widgets/cart/payment_detail.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // -----Header-----
          Container(
            height: MediaQuery.of(context).size.height * .15,
            padding: const EdgeInsets.only(top: 50, bottom: 20.0, right: 20, left: 20),
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
                    Text("Checkout", style: Theme.of(context).textTheme.subtitle2),
                  ],
                ),
              ],
            ),
          ),
          Background(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Personal Details",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const PersonalDetail(),
                  Text(
                    "Payment Details",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const PaymentDetail(),
                  // -----BUTTONS-----
                  Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: const Text("Complete Order"),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.green[400], primary: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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

class PersonalDetail extends StatelessWidget {
  const PersonalDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Your name"),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10.0,
                        bottom: 10,
                      ),
                      width: MediaQuery.of(context).size.width * .4,
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Email address"),
                Container(
                  margin: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 10,
                  ),
                  width: MediaQuery.of(context).size.width * .4,
                  child: TextField(
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Colors.grey),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Mobile number"),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10.0,
                        bottom: 10,
                      ),
                      width: MediaQuery.of(context).size.width * .4,
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Mobile number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Country"),
                Container(
                  margin: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 10,
                  ),
                  width: MediaQuery.of(context).size.width * .4,
                  child: TextField(
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Colors.grey),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'country',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("state"),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10.0,
                        bottom: 10,
                      ),
                      width: MediaQuery.of(context).size.width * .4,
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'state ',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Postal code"),
                Container(
                  margin: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 10,
                  ),
                  width: MediaQuery.of(context).size.width * .4,
                  child: TextField(
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Colors.grey),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'PIN code',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Address"),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10.0, bottom: 30),
                  width: MediaQuery.of(context).size.width * .4,
                  child: TextField(
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Colors.grey),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class PaymentDetail extends StatelessWidget {
  const PaymentDetail({
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
        // ----Card Number ----
        const Text("Card Number"),
        Container(
          margin: const EdgeInsets.only(top: 20.0, bottom: 10),
          width: MediaQuery.of(context).size.width * .9,
          child: TextField(
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintStyle: const TextStyle(color: Colors.grey),
              fillColor: Colors.white,
              filled: true,
              hintText: 'xxxx xxxx xxxx xxxx',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        //----------------
        Row(
          children: [
            //---------Expiration date
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Expiration date"),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, bottom: 10, right: 5),
                      width: MediaQuery.of(context).size.width * .2,
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Month',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, bottom: 10, right: 20),
                      width: MediaQuery.of(context).size.width * .2,
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'year',
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
            //---------CVV / CVC
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("CVV / CVC"),
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
                      hintText: 'xxx',
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
        const SizedBox(
          height: 20,
        ),
        // ----Name on Card  ----
        const Text("Name on Card"),
        Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 40),
          width: MediaQuery.of(context).size.width * .9,
          child: TextField(
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintStyle: const TextStyle(color: Colors.grey),
              fillColor: Colors.white,
              filled: true,
              hintText: 'Enter card holder name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

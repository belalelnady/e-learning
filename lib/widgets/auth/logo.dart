import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .07),
            child: const Image(image: AssetImage('assets/images/logo.png'))),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            "E-Learning",
            style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 48.0),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 20),
          child: Text(
            "Learn from anything and anywhere",
            style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 20.0),
          ),
        ),
      ],
    );
  }
}

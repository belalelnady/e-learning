import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    required this.child,
    Key? key,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 20.0),
        padding: const EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            )),
        child: child,
      ),
    );
  }
}

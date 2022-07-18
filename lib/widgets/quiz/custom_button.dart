import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.getSelected,
    required this.selectedIndex,
    Key? key,
  }) : super(key: key);

  final Function getSelected;
  final int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: List.generate(
      4,
      (index) => GestureDetector(
        onTap: () {
          getSelected(index);
        },
        child: Container(
          width: 60,
          height: 60,
          margin: const EdgeInsets.only(right: 10, left: 10),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFE1E0E9)),
            borderRadius: BorderRadius.circular(15),
            color: selectedIndex == index
                ? Theme.of(context).colorScheme.error
                : Theme.of(context).colorScheme.secondary,
          ),
          child: Center(
              child: Text(
            (index + 1).toString(),
            style: TextStyle(
              color: selectedIndex == index
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.onError,
            ),
          )),
        ),
      ),
    ));
  }
}

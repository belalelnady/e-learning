import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .06,
      margin: const EdgeInsets.only(bottom: 20),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        textAlignVertical: TextAlignVertical.center,
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Search for my_courses',
          hintStyle: const TextStyle(color: Colors.grey),
          contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
          suffixIcon: const Icon(
            Icons.search,
          ),
        ),
      ),
    );
  }
}

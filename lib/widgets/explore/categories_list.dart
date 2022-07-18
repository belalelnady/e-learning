import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    Key? key,
  }) : super(key: key);

  final List<String> imageList = const [
    'coding.png',
    'online.png',
    'data-science.png',
    'marketing.png',
    'photography.png',
    'artist.png',
    'engineering.png',
    'medical.png',
    'profit.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .6,
      margin: const EdgeInsets.only(top: 10.0),
      child: ListView.builder(
          itemCount: imageList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/search_result");
              },
              leading: Container(
                height: 26,
                width: 26,
                child: Image(
                  image: AssetImage("assets/images/${imageList[index]}"),
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
              ),
              title: Text(imageList[index]),
            );
          }),
    );
  }
}

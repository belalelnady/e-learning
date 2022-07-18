import 'package:flutter/material.dart';

import '../../widgets/global/background.dart';
import '../../widgets/explore/search_bar.dart';
import '../../widgets/explore/header_explore.dart';
import '../../widgets/explore/categories_list.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);
  final bool move = true;
  @override
  Widget build(BuildContext context) {
    // return move ? SearchResult(result: "PHotoShop") : ExploreView();
    return const ExploreView();
  }
}

class ExploreView extends StatelessWidget {
  const ExploreView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const HeaderExplore(),
          Background(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                height: MediaQuery.of(context).size.height * .8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [SearchBar(), Text("Browser Category"), CategoriesList()],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

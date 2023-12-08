import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sleep_magic/screens/categories/explore_categories.dart';
import 'package:sleep_magic/screens/moods/explore_moods.dart';
import 'package:sleep_magic/screens/recent/recent_searches.dart';
import 'package:sleep_magic/widgets/category_item.dart';
import 'package:sleep_magic/widgets/divider_item.dart';
import 'package:sleep_magic/widgets/mood_item.dart';
import 'package:sleep_magic/widgets/search_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        automaticallyImplyLeading: true,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, size: 28),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SearchBox(
              controller: _searchInputController,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const RecentSearchesScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            DividerItem(
              text: 'Select Category',
              onPressed: () => _goToScreen(const ExploreCategoriesScreen()),
            ),
            _categoryWidgeItemsBuilder(context),
            const SizedBox(height: 30),
            DividerItem(
              text: "Explore Moods",
              onPressed: () => _goToScreen(const ExploreMoodScreen()),
            ),
            _moodWidgetItemsBuilder(context),
          ],
        ),
      ),
    );
  }

  void _goToScreen(Widget m) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => m,
      ),
    );
  }

  Widget _categoryWidgeItemsBuilder(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 10),
        itemBuilder: (context, index) => CategoryItem(
          index: index,
          text: "Sleep",
          color: Color(
            0xff5099b4 * Random(DateTime.now().microsecond).nextInt(20),
          ),
        ),
      ),
    );
  }

  Widget _moodWidgetItemsBuilder(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 10),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => MoodItem(
          title: "Camping Relax",
          playTime: "3:30:20",
          index: index,
          color: Color(
            0xff5099b4 * Random(DateTime.now().microsecond).nextInt(20),
          ),
        ),
      ),
    );
  }
}

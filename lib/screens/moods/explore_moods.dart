import 'package:flutter/material.dart';
import 'package:sleep_magic/widgets/mood_item.dart';
import 'package:sleep_magic/widgets/search_box.dart';

class ExploreMoodScreen extends StatefulWidget {
  const ExploreMoodScreen({super.key});
  @override
  State<ExploreMoodScreen> createState() => _ExploreMoodScreenState();
}

class _ExploreMoodScreenState extends State<ExploreMoodScreen> {
  final TextEditingController _searchInputController = TextEditingController();
  final List<MoodItem> _filteredMoodItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Moods'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Column(
        children: [
          const Divider(thickness: 0.5),
          SearchBox(controller: _searchInputController),
          Expanded(
            flex: 1,
            child: ListView.builder(
              //itemCount: _filteredMoodItems.length,
              //itemBuilder: (_, index) => _filteredMoodItems[index],
              itemBuilder: (_, index) => MoodItem(
                title: "Camping Relax",
                playTime: '2:30:40',
                index: index,
                color: Colors.red,
              ),
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.symmetric(horizontal: 15),
            ),
          )
        ],
      ),
    );
  }
}

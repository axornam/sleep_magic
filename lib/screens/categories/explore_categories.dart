import 'package:flutter/material.dart';
import 'package:sleep_magic/widgets/category_item.dart';
import 'package:sleep_magic/widgets/search_box.dart';

class ExploreCategoriesScreen extends StatefulWidget {
  const ExploreCategoriesScreen({super.key});

  @override
  State<ExploreCategoriesScreen> createState() =>
      _ExploreCategoriesScreenState();
}

class _ExploreCategoriesScreenState extends State<ExploreCategoriesScreen> {
  final TextEditingController _searchInputController = TextEditingController();
  final List<CategoryItem> _filteredItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Categories'),
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
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 30,
                crossAxisSpacing: 10,
                childAspectRatio: 1.25,
              ),
              //itemCount: _filteredItems.length,
              //itemBuilder: (_, index) => _filteredItems[index],
              itemBuilder: (_, index) => CategoryItem(
                text: "Sleep",
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

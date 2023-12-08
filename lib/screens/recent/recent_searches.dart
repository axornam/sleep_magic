import 'package:flutter/material.dart';
import 'package:sleep_magic/widgets/divider_item.dart';
import 'package:sleep_magic/widgets/search_box.dart';

class RecentSearchesScreen extends StatefulWidget {
  const RecentSearchesScreen({super.key});

  @override
  State<RecentSearchesScreen> createState() => _RecentSearchesScreenState();
}

class _RecentSearchesScreenState extends State<RecentSearchesScreen> {
  final TextEditingController _searchInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBox(
              controller: _searchInputController,
              clearable: true,
            ),
            DividerItem(text: "Recent Searches", onPressed: () {}),
            Expanded(
              child: ListView.builder(
                itemBuilder: (_, index) => _buildListItem("Camping Relax"),
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildListItem(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          ListTile(
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.close),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                image: const DecorationImage(
                  image: AssetImage('assets/images/cool_avatar_f.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(title),
          ),
          const Divider(height: 1),
        ],
      ),
    );
  }
}

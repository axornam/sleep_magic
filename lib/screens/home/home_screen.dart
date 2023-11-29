import 'package:flutter/material.dart';
import 'dart:math';

import 'package:sleep_magic/screens/moods/mood_screen.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: TextField(
                controller: _searchInputController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  iconColor: null,
                  hintText: 'Search for Sound or Video',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: (Colors.teal), width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: (Colors.teal), width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                ),
                style: const TextStyle(),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
              child: Text(
                "Select Category",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            _categoryWidgeItems(context),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
              child: Text(
                "Explore Moods",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            _moodWidgetItems(context),
          ],
        ),
      ),
    );
  }

  Widget _categoryWidgeItems(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => _categoryWidgetItemsBuilder(
          context,
          index,
          Color(0xff5099b4 * Random(DateTime.now().microsecond).nextInt(20))
              .withAlpha(90),
        ),
      ),
    );
  }

  Widget _categoryWidgetItemsBuilder(BuildContext ctx, int index, Color clr) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        child: Container(
          decoration: BoxDecoration(
            color: clr,
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          padding: const EdgeInsets.all(10),
          height: 50,
          width: 150,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person, color: clr.withAlpha(255), size: 32),
                Text(
                  "Sleep",
                  style: TextStyle(fontSize: 18, color: clr.withAlpha(255)),
                )
              ],
            ),
          ),
        ),
        onTap: () {},
      ),
    );
  }

  Widget _moodWidgetItems(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => _moodWidgetItemsBuilder(
          context,
          index,
          Color(0xff5099b4 * Random(DateTime.now().microsecond).nextInt(20))
              .withAlpha(90),
        ),
      ),
    );
  }

  Widget _moodWidgetItemsBuilder(BuildContext ctx, int index, Color clr) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        child: Container(
          decoration: BoxDecoration(
            color: clr,
            borderRadius: const BorderRadius.all(Radius.circular(25)),
          ),
          padding: const EdgeInsets.only(left: 20, right: 100),
          height: 80,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Camping Relax",
                style: TextStyle(
                  fontSize: 38,
                  height: 1,
                  fontWeight: FontWeight.w500,
                  color: clr.withAlpha(255),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  width: 110,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "3:33:20",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Icon(
                        Icons.play_circle,
                        size: 18,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const MoodScreen(
                moodId: "Camping Relax",
                playTime: "20000",
                noOfSongs: 20,
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleep_magic/screens/moods/explore_moods.dart';
import 'package:sleep_magic/widgets/divider_item.dart';
import 'package:sleep_magic/widgets/mood_item.dart';
import 'package:sleep_magic/widgets/play_item.dart';

class SleepScreen extends StatefulWidget {
  const SleepScreen({super.key});

  @override
  State<SleepScreen> createState() => _SleepScreenState();
}

class _SleepScreenState extends State<SleepScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop;
          },
          icon: const Icon(CupertinoIcons.chevron_left, size: 28),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.share, size: 28),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Divider(thickness: 0.5, height: 0.5),
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/sleep_emoji.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 65),
                  Text(
                    "Camping Relax",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const PlayItem(text: "Listen")
                ],
              ),
            ),
            const Divider(thickness: 0.5, height: 0.5),
            const SizedBox(height: 10),
            DividerItem(
              text: 'More Like This',
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

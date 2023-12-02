import 'package:flutter/material.dart';
import 'package:sleep_magic/screens/moods/mood_screen.dart';
import 'package:sleep_magic/widgets/play_item.dart';

class MoodItem extends StatelessWidget {
  const MoodItem({
    super.key,
    required this.title,
    required this.playTime,
    required this.index,
    required this.color,
    this.onPressed,
  });

  final String title;
  final int index;
  final String playTime;
  final Color color;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 200,
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        child: Container(
          decoration: BoxDecoration(
            color: color.withAlpha(90),
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
                title,
                style: TextStyle(
                  fontSize: 38,
                  height: 1,
                  fontWeight: FontWeight.w500,
                  color: color.withAlpha(255),
                ),
              ),
              PlayItem(text: playTime.toString()),
            ],
          ),
        ),
        onTap: () {
          onPressed != null
              ? onPressed!()
              : Navigator.of(context).push(
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

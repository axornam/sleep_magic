import 'package:flutter/material.dart';
import 'package:sleep_magic/screens/moods/mood_screen.dart';

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
      padding: const EdgeInsets.only(left: 15),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        playTime.toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Icon(Icons.play_circle, size: 18)
                    ],
                  ),
                ),
              ),
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

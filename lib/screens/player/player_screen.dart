import 'package:flutter/material.dart';
import 'package:sleep_magic/config/constants.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => _onLike,
            icon: const Icon(Icons.heart_broken),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Center(
                child: Container(
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    border: Border.all(color: Colors.teal, width: 1),
                  ),
                  child: const Image(
                    image: AssetImage('assets/images/sleep_emoji.png'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30, top: 15),
                child: Text(
                  "Camping Relax",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                  ),
                ),
              ),
              _musicalProgressBar(context, 60 * 60 * 5),
              const SizedBox(height: 15),
              _musicalMedialControls(),
              const SizedBox(height: 50),
              _musicalLyricsDialog(),
            ],
          )
        ],
      ),
    );
  }

  void _onLike() {}

  Widget _musicalLyricsDialog() {
    return InkWell(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
      onTap: () {},
      onTapUp: (details) {},
      onTapDown: (details) {},
      child: Container(
        height: 100,
        decoration: const BoxDecoration(
          //color: Color(0xfff9fafe),
          //color: Color(0x2f29fafe),
          color: Color(tealPrimaryColor - 0xaa000000),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_upward),
              ),
              const Text(
                "LYRICS",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _musicalMedialControls() {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shuffle),
            iconSize: 25,
          ),
          IconButton(
            onPressed: () {},
            iconSize: 35,
            icon: const Icon(Icons.skip_previous),
          ),
          IconButton(
            onPressed: () {},
            iconSize: 60,
            color: Colors.white,
            style: const ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll<Color>(Color(tealPrimaryColor)),
              shadowColor: MaterialStatePropertyAll<Color>(Colors.black54),
              elevation: MaterialStatePropertyAll<double>(4.0),
            ),
            icon: const Icon(
              Icons.play_arrow,
            ),
          ),
          IconButton(
            onPressed: () {},
            iconSize: 35,
            icon: const Icon(Icons.skip_next),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.repeat),
            iconSize: 25,
          ),
        ],
      ),
    );
  }

  Widget _musicalProgressBar(BuildContext ctx, int duration) {
    return const Center(
      child: SizedBox(
        width: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            LinearProgressIndicator(
              value: 0.5,
              backgroundColor: Colors.grey,
              color: Colors.redAccent,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("2:44"),
                Text("5:20"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

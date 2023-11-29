import 'package:flutter/material.dart';

class MoodScreen extends StatefulWidget {
  const MoodScreen(
      {super.key, required this.moodId, String? playTime, int? noOfSongs});

  final String moodId;
  //final String playTime = null;
  //final String noOfSongs = null;

  @override
  State<MoodScreen> createState() => _MoodScreenState();
}

class _MoodScreenState extends State<MoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      appBar: _customAppBar(),
      body: Column(
        children: [
          //Container(
          //decoration: const BoxDecoration(
          //image: DecorationImage(
          //image: AssetImage('assets/images/sleep_emoji.png'),
          //fit: BoxFit.cover,
          //),
          //),
          //height: 200,
          //),
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemBuilder: (context, index) =>
                  _moodPlayList("Mood Title", "Mood Subtitle", ""),
            ),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _customAppBar() {
    return PreferredSize(
      preferredSize: const Size(300, 300),
      child: Stack(
        children: [
          Align(
            child: Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/sleep_emoji.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: 150,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 150,
                left: 120,
                right: 35,
              ),
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.all(Radius.circular(200)),
                ),
                child: IconButton(
                  onPressed: () {},
                  iconSize: 30,
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _moodPlayList(String title, String subtitle, String imgPath) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shape: const Border(
        bottom: BorderSide(width: 0.5, color: Color(0x22000000)),
      ),
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          image: const DecorationImage(
            image: AssetImage('assets/images/sleep_emoji.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.more_horiz),
        onPressed: () {},
      ),
      onTap: () {},
    );
  }
}

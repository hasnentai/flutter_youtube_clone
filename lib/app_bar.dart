import 'package:flutter/material.dart';

class YoutubeAppBar extends StatefulWidget {
  const YoutubeAppBar({super.key});

  @override
  State<YoutubeAppBar> createState() => _YoutubeAppBarState();
}

class _YoutubeAppBarState extends State<YoutubeAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: false,
      backgroundColor: Colors.black,
      title: Image.asset(
        "assets/youtube_logo_dark.webp",
        height: 70,
      ),
      actions: const [
        Icon(
          Icons.cast_rounded,
        ),
        SizedBox(
          width: 20.0,
        ),
        Icon(
          Icons.notifications_none,
        ),
        SizedBox(
          width: 20.0,
        ),
        Icon(
          Icons.search_sharp,
        ),
        SizedBox(
          width: 20.0,
        ),
        Icon(
          Icons.person_outline,
        )
      ],
    );
  }
}

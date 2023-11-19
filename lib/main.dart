import 'package:flutter/material.dart';
import 'package:youtube_clone/app_bar.dart';
import 'package:youtube_clone/chip_list.dart';
import 'package:youtube_clone/video_card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(),
      home: SafeArea(
        bottom: true,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: const CustomScrollView(
            slivers: [YoutubeAppBar(), YoutubeChipLists(), VideoCard()],
          ),
          bottomNavigationBar: BottomNavigationBarTheme(
            data: const BottomNavigationBarThemeData(
              selectedItemColor: Colors.white,
              unselectedLabelStyle: TextStyle(fontSize: 10.0),
              selectedLabelStyle: TextStyle(fontSize: 10.0),
              backgroundColor: Colors.black,
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed, //
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.switch_access_shortcut_add_sharp),
                  label: "Shorts",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_circle_outline_outlined,
                    size: 40,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.subscriptions_outlined,
                  ),
                  label: "Subscriptions",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.video_library_outlined),
                  label: "Library",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class YoutubeChipLists extends StatefulWidget {
  const YoutubeChipLists({super.key});

  @override
  State<YoutubeChipLists> createState() => _YoutubeChipListsState();
}

class _YoutubeChipListsState extends State<YoutubeChipLists> {
  List<String> chipList = [
    "",
    "All",
    "Wickets",
    "Tariq Jamil",
    "News",
    "Live",
    "Cricket"
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 50,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: chipList.length,
            itemBuilder: (context, item) {
              return Center(
                child: Container(
                  margin: EdgeInsets.only(left: 6.0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: chipList[item] == ""
                      ? const Icon(
                          Icons.navigation_outlined,
                          size: 18,
                        )
                      : Text(chipList[item]),
                ),
              );
            }),
      ),
    );
  }
}

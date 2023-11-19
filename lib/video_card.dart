// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class VideoCard extends StatefulWidget {
  const VideoCard({super.key});

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  @override
  Widget build(BuildContext context) {
    List<YoutubeVideos> videos = [
      YoutubeVideos(
        thumbnailImage:
            "https://images.unsplash.com/photo-1563874257547-d19fbb71b46c?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        avatarImage:
            "https://images.unsplash.com/photo-1619551734325-81aaf323686c?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGxvZ28lMjBvZiUyMGZhbW91cyUyMHlvdXR1YmVyc3xlbnwwfHwwfHx8MA%3D%3D",
        title: "How Australia Lost War Against Birds | The Great EMU War",
        subtitle: "Zem TV 1.4M views 1 month ago",
      ),
      YoutubeVideos(
        thumbnailImage:
            "https://plus.unsplash.com/premium_photo-1661943659036-aa040d92ee64?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjV8fHlvdXR1YmUlMjB0aHVtYm5haWx8ZW58MHx8MHx8fDA%3D",
        avatarImage:
            "https://images.unsplash.com/photo-1619551734325-81aaf323686c?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGxvZ28lMjBvZiUyMGZhbW91cyUyMHlvdXR1YmVyc3xlbnwwfHwwfHx8MA%3D%3D",
        title: "How Australia Lost War Against Birds | The Great EMU War",
        subtitle: "Zem TV 1.4M views 1 month ago",
      ),
      YoutubeVideos(
        thumbnailImage:
            "https://images.unsplash.com/photo-1542681575-352258e0c854?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fHlvdXR1YmUlMjB0aHVtYm5haWx8ZW58MHx8MHx8fDA%3D",
        avatarImage:
            "https://images.unsplash.com/photo-1619551734325-81aaf323686c?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGxvZ28lMjBvZiUyMGZhbW91cyUyMHlvdXR1YmVyc3xlbnwwfHwwfHx8MA%3D%3D",
        title: "How Australia Lost War Against Birds | The Great EMU War",
        subtitle: "Zem TV 1.4M views 1 month ago",
      ),
      YoutubeVideos(
        thumbnailImage:
            "https://images.unsplash.com/photo-1615014672571-461f4f80db5a?q=80&w=2874&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        avatarImage:
            "https://images.unsplash.com/photo-1619551734325-81aaf323686c?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGxvZ28lMjBvZiUyMGZhbW91cyUyMHlvdXR1YmVyc3xlbnwwfHwwfHx8MA%3D%3D",
        title: "How Australia Lost War Against Birds | The Great EMU War",
        subtitle: "Zem TV 1.4M views 1 month ago",
      )
    ];

    return SliverList.builder(
      itemCount: videos.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Image.network(
              videos[index].thumbnailImage,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  videos[index].avatarImage,
                ),
              ),
              title: Text(
                videos[index].title,
              ),
              subtitle: Text(
                videos[index].subtitle,
              ),
            )
          ],
        );
      },
    );
  }
}

class YoutubeVideos {
  String thumbnailImage;
  String avatarImage;
  String title;
  String subtitle;
  YoutubeVideos({
    required this.thumbnailImage,
    required this.avatarImage,
    required this.title,
    required this.subtitle,
  });
}

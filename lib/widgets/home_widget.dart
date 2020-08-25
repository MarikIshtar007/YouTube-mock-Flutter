import 'package:flutter/material.dart';
import 'video_tile_widget.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          leading: Image.asset(
            'assets/images/logo.png',
            scale: 0.5,
          ),
          title: Text(
            'Youtube',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.videocam, color: Color(0xFF606060)),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search, color: Color(0xFF606060),),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/one.jpg'),
                radius: 20,
              ),
            )
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            VideoTile(
              thumbnail: 'assets/images/v2.jpg',
              title: 'Best Anime to watch this Summer',
              channelImg: 'assets/images/one.jpg',
              channelName: 'Supreme Excess',
              views: '47K views',
              date: '1 year ago',
            ),
            VideoTile(
              thumbnail: 'assets/images/v3.jpg',
              title: 'Top 10 Places to visit once the Quarantine lifts!',
              channelImg: 'assets/images/one.jpg',
              channelName: 'World TourZ',
              views: '23K views',
              date: '3 years ago',
            ),
            VideoTile(
              thumbnail: 'assets/images/v4.jpg',
              title: 'Top 10 Places to visit once the Quarantine lifts!',
              channelImg: 'assets/images/one.jpg',
              channelName: 'World TourZ',
              views: '23K views',
              date: '3 years ago',
            ),
            VideoTile(
              thumbnail: 'assets/images/v1.jpg',
              title: 'Top 10 Places to visit once the Quarantine lifts!',
              channelImg: 'assets/images/one.jpg',
              channelName: 'World TourZ',
              views: '23K views',
              date: '3 years ago',
            ),
            VideoTile(
              thumbnail: 'assets/images/v2.jpg',
              title: 'Best Anime to watch this Summer',
              channelImg: 'assets/images/one.jpg',
              channelName: 'Supreme Excess',
              views: '47K views',
              date: '1 year ago',
            ),
            VideoTile(
              thumbnail: 'assets/images/v3.jpg',
              title: 'Top 10 Places to visit once the Quarantine lifts!',
              channelImg: 'assets/images/one.jpg',
              channelName: 'World TourZ',
              views: '23K views',
              date: '3 years ago',
            ),
            VideoTile(
              thumbnail: 'assets/images/v4.jpg',
              title: 'Top 10 Places to visit once the Quarantine lifts!',
              channelImg: 'assets/images/one.jpg',
              channelName: 'World TourZ',
              views: '23K views',
              date: '3 years ago',
            ),
            VideoTile(
              thumbnail: 'assets/images/v5.jpg',
              title: 'Top 10 Places to visit once the Quarantine lifts!',
              channelImg: 'assets/images/one.jpg',
              channelName: 'World TourZ',
              views: '23K views',
              date: '3 years ago',
            ),
            VideoTile(
              thumbnail: 'assets/images/v6.jpg',
              title: 'Top 10 Places to visit once the Quarantine lifts!',
              channelImg: 'assets/images/one.jpg',
              channelName: 'World TourZ',
              views: '23K views',
              date: '3 years ago',
            ),
            VideoTile(
              thumbnail: 'assets/images/v2.jpg',
              title: 'Best Anime to watch this Summer',
              channelImg: 'assets/images/one.jpg',
              channelName: 'Supreme Excess',
              views: '47K views',
              date: '1 year ago',
            ),
            VideoTile(
              thumbnail: 'assets/images/v3.jpg',
              title: 'Top 10 Places to visit once the Quarantine lifts!',
              channelImg: 'assets/images/one.jpg',
              channelName: 'World TourZ',
              views: '23K views',
              date: '3 years ago',
            ),
            VideoTile(
              thumbnail: 'assets/images/v4.jpg',
              title: 'Top 10 Places to visit once the Quarantine lifts!',
              channelImg: 'assets/images/one.jpg',
              channelName: 'World TourZ',
              views: '23K views',
              date: '3 years ago',
            ),
            VideoTile(
              thumbnail: 'assets/images/v2.jpg',
              title: 'Best Anime to watch this Summer',
              channelImg: 'assets/images/one.jpg',
              channelName: 'Supreme Excess',
              views: '47K views',
              date: '1 year ago',
            ),
            VideoTile(
              thumbnail: 'assets/images/v3.jpg',
              title: 'Top 10 Places to visit once the Quarantine lifts!',
              channelImg: 'assets/images/one.jpg',
              channelName: 'World TourZ',
              views: '23K views',
              date: '3 years ago',
            ),
            VideoTile(
              thumbnail: 'assets/images/v4.jpg',
              title: 'Top 10 Places to visit once the Quarantine lifts!',
              channelImg: 'assets/images/one.jpg',
              channelName: 'World TourZ',
              views: '23K views',
              date: '3 years ago',
            ),
          ]),
        )
      ],
    );
  }
}


import 'package:flutter/material.dart';
import 'package:youtube_mock/widgets/video_tile_widget.dart';

class SubsWidget extends StatefulWidget {
  @override
  _SubsWidgetState createState() => _SubsWidgetState();
}

class _SubsWidgetState extends State<SubsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: Image.asset(
              'assets/images/logo.png',
              scale: 0.5,
            ),
            title: Text(
              'Youtube',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.videocam, color: Color(0xFF606060)),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Color(0xFF606060),
                ),
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
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          padding: EdgeInsets.all(3),
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/one.jpg'),
                                radius: 26,
                              ),
                            ],
                          ),
                        ),
                        Text('Channel 1')
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          padding: EdgeInsets.all(3),
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/one.jpg'),
                                radius: 26,
                              ),
                            ],
                          ),
                        ),
                        Text('Channel 2')
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          padding: EdgeInsets.all(3),
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/one.jpg'),
                                radius: 26,
                              ),
                            ],
                          ),
                        ),
                        Text('Channel 3')
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          padding: EdgeInsets.all(3),
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/one.jpg'),
                                radius: 26,
                              ),
                            ],
                          ),
                        ),
                        Text('Channel 4')
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          padding: EdgeInsets.all(3),
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/one.jpg'),
                                radius: 26,
                              ),
                            ],
                          ),
                        ),
                        Text('Channel 5')
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          padding: EdgeInsets.all(3),
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/one.jpg'),
                                radius: 26,
                              ),
                            ],
                          ),
                        ),
                        Text('Channel 6')
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ),
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
                thumbnail: 'assets/images/v6.jpg',
                title: 'Top 10 Places to visit once the Quarantine lifts!',
                channelImg: 'assets/images/one.jpg',
                channelName: 'World TourZ',
                views: '23K views',
                date: '3 years ago',
              ),
            ]),
          )
        ],
      ),
    );
  }
}

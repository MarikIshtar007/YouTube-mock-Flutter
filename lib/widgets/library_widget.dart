import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_mock/screens/video_screen.dart';
import 'package:youtube_mock/widgets/video_tile_widget.dart';

class LibraryWidget extends StatefulWidget {
  @override
  _LibraryWidgetState createState() => _LibraryWidgetState();
}

class _LibraryWidgetState extends State<LibraryWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 8),
                child: Text(
                  'Recent',
                  style: TextStyle(fontSize: 17, color: Color(0xFF606060)),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.27,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            child: Image.asset('assets/images/v2.jpg',),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Best anime to watch \nthis Summer',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Icon(Icons.more_vert,size: 19,)
                            ],
                          ),
                          Text('AnimeSpot', style: TextStyle(fontSize: 13, color: Colors.grey ),)
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context)=> VideoPage(
                                thumbnail: 'assets/images/v3.jpg',
                                title: 'Top 10 Places to visit once the Quarantine lifts!',
                                channelImg: 'assets/images/one.jpg',
                                channelName: 'World TourZ',
                                views: '23K views',
                                date: '3 years ago',
                              )
                          ));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 100,
                              child: Image.asset('assets/images/v3.jpg',),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Naruto Epic Moments \nRecap 2',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  width: 35,
                                ),
                                Icon(Icons.more_vert,size: 19,)
                              ],
                            ),
                            Text('Narutofan', style: TextStyle(fontSize: 13, color: Colors.grey ),)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            child: Image.asset('assets/images/v4.jpg',),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'John wick Kills',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Icon(Icons.more_vert,size: 19,)
                            ],
                          ),
                          Text('GunShot', style: TextStyle(fontSize: 13, color: Colors.grey ),)
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            child: Image.asset('assets/images/v2.jpg',),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Best anime to watch \nthis Summer',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Icon(Icons.more_vert,size: 19,)
                            ],
                          ),
                          Text('AnimeSpot', style: TextStyle(fontSize: 13, color: Colors.grey ),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.history,
                  color: Colors.grey,
                ),
                title: Text('History'),
              ),
              ListTile(
                leading: Icon(
                  Icons.file_download,
                  color: Colors.grey,
                ),
                title: Text('Downloads'),
              ),
              ListTile(
                leading: Icon(
                  Icons.ondemand_video,
                  color: Colors.grey,
                ),
                title: Text('Your Videos'),
              ),
              ListTile(
                leading: Icon(
                  Icons.shop,
                  color: Colors.grey,
                ),
                title: Text('Purchases'),
              ),
              ListTile(
                leading: Icon(
                  Icons.access_time,
                  color: Colors.grey,
                ),
                title: Text('Watch Later'),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Playlists',
                  style: TextStyle(fontSize: 17, color: Color(0xff606060)),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
                title: Text(
                  'New Playlist',
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
        ));
  }
}

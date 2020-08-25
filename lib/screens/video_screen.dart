import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_mock/widgets/video_tile_widget.dart';

class VideoPage extends StatefulWidget {
  final String thumbnail;
  final String channelImg;
  final String title;
  final String channelName;
  final String views;
  final String date;

  VideoPage(
      {this.thumbnail,
      this.channelImg,
      this.title,
      this.channelName,
      this.views,
      this.date});

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.34,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.thumbnail), fit: BoxFit.cover)),

          ),
          SingleChildScrollView(
            child: Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.66,
                alignment: Alignment.center,
                child: ListView(
                  shrinkWrap: true,
                  controller: controller,
                  scrollDirection: Axis.vertical,
                  physics: AlwaysScrollableScrollPhysics(),
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width * 0.85),
                              child: Text(
                                widget.title,
                                style: TextStyle(fontSize: 17, color: Colors.black),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4, left: 8),
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  widget.views,
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.56),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 3),
                                padding: EdgeInsets.only(bottom: 6),
                                child: Text(
                                  '.',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.56),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  widget.date,
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.56),
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.thumb_up,
                                    color: Colors.grey,
                                    size: 23,
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '20K',
                                    style: TextStyle(color: Color(0xFF606060)),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.thumb_down,
                                    color: Colors.grey,
                                    size: 23,
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    '3K',
                                    style: TextStyle(color: Color(0xFF606060)),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.share,
                                    color: Colors.grey,
                                    size: 23,
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Share',
                                    style: TextStyle(color: Color(0xFF606060)),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.file_download,
                                    color: Colors.grey,
                                    size: 23,
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Download',
                                    style: TextStyle(color: Color(0xFF606060)),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.library_add,
                                    color: Colors.grey,
                                    size: 23,
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Save',
                                    style: TextStyle(color: Color(0xFF606060)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(widget.channelImg),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.channelName,
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                '5.1K subscribers',
                                style: TextStyle(color: Color(0xFF606060)),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                child: Text(
                                  'SUBSCRIBE',
                                  style: TextStyle(color: Colors.red, fontSize: 20),
                                ),
                                onTap: (){},
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    VideoTile(
                      thumbnail: 'assets/images/v5.jpg',
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
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

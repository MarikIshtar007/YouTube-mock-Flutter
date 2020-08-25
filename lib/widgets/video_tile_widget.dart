import 'package:flutter/material.dart';
import 'package:youtube_mock/screens/video_screen.dart';

class VideoTile extends StatelessWidget {
  final String thumbnail;
  final String channelImg;
  final String title;
  final String channelName;
  final String views;
  final String date;

  const VideoTile({
    this.thumbnail,
    this.channelImg,
    this.title,
    this.channelName,
    this.views,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => VideoPage(
                    thumbnail: thumbnail,
                    channelImg: channelImg,
                    channelName: channelName,
                    title: title,
                    views: views,
                    date: date,
                  )));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(thumbnail), fit: BoxFit.cover)),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(channelImg),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text(
                              channelName,
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
                              views,
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
                              date,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.56),
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

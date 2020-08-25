import 'package:flutter/material.dart';
import 'package:youtube_mock/widgets/explore_widget.dart';
import 'package:youtube_mock/widgets/home_widget.dart';
import 'package:youtube_mock/widgets/library_widget.dart';
import 'package:youtube_mock/widgets/notify_widget.dart';
import 'package:youtube_mock/widgets/subs_widget.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static List<Widget> _pages = <Widget>[
    HomeWidget(),
    ExploreWidget(),
    SubsWidget(),
    NotifyWidget(),
    LibraryWidget()
  ];

  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        currentIndex: _index,
        showUnselectedLabels: true,
        selectedItemColor: Colors.red,
        unselectedItemColor: Color(0xFF606060),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 10),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text(
              'Explore',
              style: TextStyle(fontSize: 10),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            title: Text(
              'Subscriptions',
              style: TextStyle(fontSize: 10),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text(
              'Notifications',
              style: TextStyle(fontSize: 10),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            title: Text(
              'Library',
              style: TextStyle(fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}

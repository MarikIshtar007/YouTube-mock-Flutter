import 'package:flutter/material.dart';

class NotifyWidget extends StatefulWidget {
  @override
  _NotifyWidgetState createState() => _NotifyWidgetState();
}

class _NotifyWidgetState extends State<NotifyWidget> {
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
      body: ListView.separated(
        physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        separatorBuilder: (context, index)=> Divider(),
        padding: EdgeInsets.only(left: 10, right: 10),
        itemBuilder: (context, index){
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.0),
            child: Center(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/one.jpg'),
                ),
                title: Text('Lorem ipsum dolor sit amet'),
                subtitle: Text('${index+10} minutes ago'),
                trailing: Image.asset('assets/images/v5.jpg'),
              ),
            ),
          );
        },
      )
    );
  }
}

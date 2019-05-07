import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/pages/Call.screen.dart';
import 'package:whatsapp_clone_flutter/pages/Camera.screen.dart';
import 'package:whatsapp_clone_flutter/pages/Chat.screen.dart';
import 'package:whatsapp_clone_flutter/pages/Status.screen.dart';
import 'package:whatsapp_clone_flutter/pages/Group.screen.dart';
import 'constant/Constant.dart';

class WhatsAppHome extends StatefulWidget {
  final cameras;

  WhatsAppHome(this.cameras);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 5);
  }

  void choiceAction(String choice) {
    print('WORKING FOR POPUP MENU');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi, Ari Supriatna', style: TextStyle(fontWeight: FontWeight.w600)),
        elevation: 0.7,
        actions: <Widget>[
          Icon(Icons.search),
          Padding(padding: EdgeInsets.symmetric(horizontal: 6.0)),
          PopupMenuButton(
            padding: EdgeInsets.all(8),
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return Constants.choices.map((String choices) {
                return PopupMenuItem(
                  value: choices,
                  child: Text(choices),
                );
              }).toList();
            },
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "GROUPS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS")
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(widget.cameras),
          ChatScreen(),
          GroupScreen(),
          StatusScreen(),
          CallScreen()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.chat, color: Colors.white),
        onPressed: () {},
      ),
    );
  }
}
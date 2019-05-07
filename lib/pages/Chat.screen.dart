import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/models/Chat.model.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataDummy.length,
      itemBuilder: (context, index) => Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dataDummy[index].avatarUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(dataDummy[index].name, style: TextStyle(fontWeight: FontWeight.w600)),
                Text(dataDummy[index].time, style: TextStyle(color: Colors.grey, fontSize: 11.0))
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(dataDummy[index].message, style: TextStyle(color: Colors.grey, fontSize: 15.0)),
            ),
          ),
          Divider(height: 10.0, indent: 70.0,),
        ],
      ),
    );
  }
}
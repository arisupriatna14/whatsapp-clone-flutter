import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/models/Call.model.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Theme.of(context).accentColor,
      //   child: Icon(Icons.call, color: Colors.white),
      //   onPressed: () {},
      // ),
      body: ListView.builder(
        itemCount: dataDummyCall.length,
        itemBuilder: (context, int index) => Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(dataDummyCall[index].avatarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    dataDummyCall[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.call_missed_outgoing,
                      color: Theme.of(context).primaryColor,
                      size: 20.0,
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 4)),
                    Icon(Icons.schedule, size: 16, color: Colors.grey),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                    Text(
                      dataDummyCall[index].time,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0
                      ),
                    )
                  ],
                ),
              ),
              trailing: Icon(
                Icons.call,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Divider(height: 10.0, indent: 70.0,)
          ],
        ),
      ),
    );
  }
}
import 'package:EventySA/views/pages/drawer/history/history.dart';
import 'package:EventySA/views/pages/drawer/manage_event/manage_event.dart';
import 'package:EventySA/views/pages/drawer/participate_event/participate.dart';
import 'package:flutter/material.dart';
// import 'package:EventySA/views/pages/drawer/settings/settings.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_state_manager/get_state_manager.dart';

import 'my_participation/participate.dart';

class AppDrawer extends GetView {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: Colors.teal[200],
            child: Text(
              'Options',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text(
              'Manage events',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.festival_sharp,
              size: 30,
              color: Colors.teal[400],
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ManageEvent();
                  },
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Create card',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.credit_card,
              size: 30,
              color: Colors.teal[400],
            ),
            onTap: () {
              Get.toNamed("/CreateCard");
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Event Participate',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.pan_tool_rounded,
              size: 30,
              color: Colors.teal[400],
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Participate();
                  },
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'My Participation',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.assistant_rounded,
              size: 30,
              color: Colors.teal[400],
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return MyParticipate();
                  },
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'History',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.history_rounded,
              size: 30,
              color: Colors.teal[400],
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return History();
                  },
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Setting',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.settings,
              size: 30,
              color: Colors.teal[400],
            ),
            onTap: () {
              Get.toNamed("/Setting");
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}

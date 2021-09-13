
import 'package:eventy_app/screens/topEvent.dart';
import 'package:eventy_app/util/data.dart';
import 'package:flutter/material.dart';
import 'eventItem.dart';
import 'package:filter_list/filter_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

@override
  Widget build(BuildContext context) {
    return Scaffold(
      
     backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Colors.teal[50],
        elevation: 0,
        
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 90.0,top: 10),
            child: Text(
              "Good Moorning",
              style: TextStyle(
                fontSize: 33.0,
                fontWeight: FontWeight.bold,
                
                color: Colors.black87,
              ),
            ),
            
          ),
          
          Center(
            child: IconButton(
              icon: const Icon(Icons.add_alert, color: Colors.black45,),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text('Nothing')));
              },
            ),
          ),
          SizedBox(width: 20.0),
        ],
      ),
    
      body:ListView(
      
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
          ),
          
          titlenewEvent(),
          SizedBox(height: 10.0),
          topEventsList(),
          SizedBox(height: 5.0),
          titlenearEvent(),
          SizedBox(height: 1.0),
          nearEventsList(),
          SizedBox(height: 10.0),
          
        ],
       
      ),
    
    );
  }

  }
  titlenewEvent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[

        Text(
          "New Event",
          
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w800,
            color: Colors.black87,
           
          ),
        ),
      
      ],
    );
  }
  topEventsList() {
    return Container(
     
      height: 275,
      width: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: events.length,
        itemBuilder: (BuildContext context, int index) {
          Map event = events[index];

          return TopEvent(
            event: event,
          );
        },
      ),
    );
  }

  titlenearEvent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
      children: <Widget>[

        Text(
          "Event near from you",
          
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w800,
            color: Colors.black87,
           
          ),
        ),
      
      ],
    );
  }

  nearEventsList() {
    return Container(
      height:800.0,
      margin: new EdgeInsets.symmetric(vertical: 5.0),
      child: ListView.builder(
        
        
        itemCount: events.length,
        itemBuilder: (BuildContext context, int index) {
          Map event = events[index];

          return EventItem(
            event: event,
          );
        },
      )
    );
  }


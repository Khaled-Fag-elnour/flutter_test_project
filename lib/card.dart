import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  String title;
  MyCard({this.title});

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      shadowColor: Colors.black26,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.topLeft,
              child: Image.network('https://picsum.photos/300/250'),
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.thumb_up),
                      SizedBox(width: 5),
                      Text('Like'),
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.comment),
                        SizedBox(width: 5),
                        Text('Comment'),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

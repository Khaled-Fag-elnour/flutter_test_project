import 'package:day1_flutter_app/card.dart';
import 'package:day1_flutter_app/cardDetails.dart';
import 'package:day1_flutter_app/services/postServices.dart';
import 'package:flutter/material.dart';

import 'models/post.dart';

class CardsList extends StatefulWidget {
  @override
  _CardsListState createState() => _CardsListState();
}

class _CardsListState extends State<CardsList> {
  List<Post> postsList = new List();

  @override
  void initState() {
    super.initState();
    getPosts();
  }

  getPosts() async {
    postsList = await PostService().getPosts();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First Flutter App'),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: postsList.length,
          itemBuilder: (context, index) {
            return new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CardDetails(post: postsList[index]),
                  ),
                );
              },
              child: MyCard(title: postsList[index].title),
            );
          },
        ),
      ),
    );
  }
}

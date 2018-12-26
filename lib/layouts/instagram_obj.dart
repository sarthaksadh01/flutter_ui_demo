import 'package:flutter/material.dart';
import './instagram_story.dart';
import './instagram_post.dart';

class Instagram_obj extends StatelessWidget {
  List<Instagram_Story> stories = <Instagram_Story>[];
  List<Instagram_Post> post = <Instagram_Post>[];
  final String type;
  Instagram_obj(this.type);
  @override
  Widget build(BuildContext context) {
    if (type == 'story') {
      var i;
      for (i = 0; i < 10; i++) {
        Instagram_Story x = new Instagram_Story();
        stories.add(x);
      }
      return Container(
        height: 100,
        child: ListView.builder(
          //new
          scrollDirection: Axis.horizontal,
          // padding: new EdgeInsets.all(8.0), //new//new
          itemBuilder: (_, int index) {
            return new GestureDetector(
              child: stories[index],
              onTap: () {},
            );
          }, //new
          itemCount: stories.length,
          //new
        ),
      );
    } else if(type=='post'){
      double h = MediaQuery.of(context).size.height;
      var i;
      for (i = 0; i < 10; i++) {
        Instagram_Post x = new Instagram_Post();
        post.add(x);
      }

      return new Container(
        height: h-150,
       // flex: 1,
        child: 
        ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (_, int index) {
            return new GestureDetector(
              child: post[index],
              onTap: () {},
            );
          }, //new
          itemCount: post.length,
          //new
        ),
      );
    }
    else{
      return new Divider(
        height: 3.0,
      );
    }
  }
}

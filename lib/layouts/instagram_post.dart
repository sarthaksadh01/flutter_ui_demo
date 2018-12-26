import 'package:flutter/material.dart';

class Instagram_Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return new Container(
      margin: EdgeInsets.all(0.0),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(7.0, 30.0, 10.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  radius: 17,
                  //backgroundImage: NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg',scale: 0.8),
                  backgroundColor: Colors.green,
                  child: Text('s'),
                ),
                Text(
                  'Name of user',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold
                      //fontStyle: FontStyle.italic
                      ),
                ),
                Icon(Icons.menu)
              ],
            ),
          ),
          new Image.network(
            'https://www.gettyimages.in/gi-resources/images/500px/983794168.jpg',
            width: w,
            height: 300,
          ),
         Container(
           margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0),
           child:  Row(
            children: <Widget>[
             
              Icon(Icons.blur_circular),
             
               Padding(
                padding: EdgeInsets.all(10.0),
                //child: ,
              ),
               Icon(Icons.comment),
               Padding(
                padding: EdgeInsets.all(10.0),
                //child: ,
              ),
              Icon(Icons.send),
            ],
          ),
         ),
          Container(
            alignment: Alignment(-1, 0),
            margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
            child: Text(
              '17325 likes',
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

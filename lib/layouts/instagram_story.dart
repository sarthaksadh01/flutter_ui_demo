import 'package:flutter/material.dart';

class Instagram_Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(3.5, 7, 3.5, 2),
          child: CircleAvatar(
            radius: 32,
            backgroundColor: Colors.green,
            child: Text('SS'),
          ),
        ),
        Container(
          child: Text('name'),
        )
      ],
    );
  }
}

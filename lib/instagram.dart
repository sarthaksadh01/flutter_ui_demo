import 'package:flutter/material.dart';
import './layouts/instagram_obj.dart';

class Instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Instagram_full(),
      theme: ThemeData(primaryColor: Colors.white),
       debugShowCheckedModeBanner:false
    );
  }
}

class Instagram_full extends StatefulWidget {
  @override
  Instagram_state createState() => Instagram_state();
}

class Instagram_state extends State<Instagram_full> {
  List<Instagram_obj> obj = <Instagram_obj>[];

  @override
  void initState() {
    Instagram_obj x = new Instagram_obj('story');
    obj.add(x);
    Instagram_obj y = new Instagram_obj('divider');
    obj.add(y);
    Instagram_obj z = new Instagram_obj('post');
    obj.add(z);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: Icon(Icons.camera_alt),
        actions: <Widget>[
          //Padding(padding: EdgeInsets.all(20.0),),
          Icon(Icons.live_tv),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Stack(
            children: <Widget>[
              Center(
                child: Icon(Icons.send),
              ),
              Center(child: CircleAvatar(
                radius: 5,
                foregroundColor: Colors.white,
                child: Text('2',style: TextStyle(
                  fontSize: 8
                ),),
                backgroundColor: Colors.red,
              ),)
              
            ],
          ),
        ],
        title: Text(
          'Instagram',
          style: TextStyle(fontFamily: 'Billabong', fontSize: 30),
        ),
      ),
      body: Column(
        children: <Widget>[
          new Flexible(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (_, int index) {
                return new GestureDetector(
                  child: obj[index],
                  onTap: () {},
                );
              }, //new
              itemCount: obj.length,
              //new
            ),
          ),
        ],
      ), //new
      bottomNavigationBar: botmnavbar(),
    );
  }

  Widget botmnavbar() {
    return SizedBox(
      height: 50,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.search,
            size: 30,
          ),
          Icon(
            Icons.add,
            size: 30,
          ),
          Icon(
            Icons.blur_circular,
            size: 30,
          ),
          Icon(
            Icons.supervisor_account,
            size: 30,
          ),
        ],
      ),
    );
  }
}

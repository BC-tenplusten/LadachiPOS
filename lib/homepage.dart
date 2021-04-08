import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("LADACHI SDN BHD"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
          margin: EdgeInsets.all(12),
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) => new Container(
                color: Colors.grey,
                child: new Center(
                  child: new CircleAvatar(
                    backgroundColor: Colors.white,
                    child: new Text('$index'),
                  ),
                )),
            staggeredTileBuilder: (int index) =>
                StaggeredTile.count(2, index.isOdd ? 2 : 3),
            mainAxisSpacing: 12.0,
            crossAxisSpacing: 12.0,
          )),
    ));
  }
}

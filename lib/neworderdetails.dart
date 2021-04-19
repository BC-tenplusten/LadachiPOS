import 'package:flutter/material.dart';

class neworderpage2 extends StatelessWidget {
  const neworderpage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Ladachi SDN BHD'),
      ),
      body: new orderdetails(),
    );
  }
}

class orderdetails extends StatelessWidget {
  final TextEditingController _controller = new TextEditingController();
  final leftcolumn = new Padding(
    padding: EdgeInsets.all(24.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(child: TextField()),
      ],
    ),
  );

  // final midcolumn = new Container(
  //   child: new Column(
  //     children: <Widget>[
  //       TextField(
  //         keyboardType: TextInputType.multiline,
  //         maxLines: 10,
  //       )
  //     ],
  //   ),
  // );
  // final rightcolumn = new Container(
  //   child: new Column(
  //     children: <Widget>[
  //       TextField(
  //         keyboardType: TextInputType.multiline,
  //         maxLines: 10,
  //       )
  //     ],
  //   ),
  // );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Container(
          child: new Row(
        children: <Widget>[
          leftcolumn,
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';

class neworderpage2 extends StatelessWidget {
  const neworderpage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: neworderpage2screen(),
    );
  }
}

class neworderpage2screen extends StatelessWidget {
  const neworderpage2screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Chat Item"),
        backgroundColor: Colors.lightGreen,
      ),
      body: orderdetails(),
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
        Row(children: <Widget>[
          Expanded(
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          )
        ])
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
    return new Scaffold(
        // body: new Container(
        //   child: new Column(
        //     children: <Widget>[leftcolumn],
        //   ),
        // ),
        );
  }
}

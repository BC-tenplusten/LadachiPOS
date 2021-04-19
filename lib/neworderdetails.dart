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
  final leftcolumn = new Column(
    children: <Widget>[
      new Flexible(
        child: TextField(
          keyboardType: TextInputType.multiline,
          maxLines: 10,
        ),
      ),
    ],
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
        child: new Row(
      children: <Widget>[
        leftcolumn,
        // midcolumn,
        // rightcolumn,
      ],
    ));
  }
}

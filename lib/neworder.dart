import 'package:flutter/material.dart';
import 'package:ladachipos/neworderdetails.dart';

class newOrder extends StatefulWidget {
  newOrder({Key key}) : super(key: key);

  @override
  newOrderState createState() => newOrderState();
}

class newOrderState extends State<newOrder> {
  final TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('Ladachi SDN BHD')),
        body: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: _controller,
              decoration: const InputDecoration(
                icon: const Icon(Icons.person),
                hintText: 'Enter name',
                labelText: 'Name',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Field cannot be empty';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _controller,
              decoration: const InputDecoration(
                icon: const Icon(Icons.date_range),
                hintText: 'Enter date',
                labelText: 'Date',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Field cannot be empty';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _controller,
              decoration: const InputDecoration(
                icon: const Icon(Icons.phone),
                hintText: 'Enter phone',
                labelText: 'Phone Number',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Field cannot be empty';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _controller,
              decoration: const InputDecoration(
                icon: const Icon(Icons.house),
                hintText: 'Enter Address',
                labelText: 'Address',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Field cannot be empty';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _controller,
              decoration: const InputDecoration(
                icon: const Icon(Icons.delivery_dining),
                hintText: 'Enter Delivery Date',
                labelText: 'Delivery Date',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Field cannot be empty';
                }
                return null;
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                child: Text('Proceed'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => neworderpage2()),
                  );
                },
              ),
            )
          ],
        ));
  }
}

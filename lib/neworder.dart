import 'package:flutter/material.dart';
import 'package:ladachipos/neworderdetails.dart';
// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class newOrder extends StatefulWidget {
  newOrder({Key key}) : super(key: key);

  @override
  newOrderState createState() => newOrderState();
}

class newOrderState extends State<newOrder> {
  final TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController deliveryDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CollectionReference users =
        FirebaseFirestore.instance.collection('Invoice');

    Future<void> addInvoiceField() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
            'name': nameController.text, // John Doe
            'date': dateController.text, // Stokes and Sons
            'phone': phoneController.text, // 42
            'address': addressController.text, // 42
            'deliveryDate': deliveryDateController.text, // 42
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return new Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('Ladachi SDN BHD')),
        body: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: nameController,
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
              controller: dateController,
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
              controller: phoneController,
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
              controller: addressController,
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
              controller: deliveryDateController,
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
                  addInvoiceField();
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => neworderpage2()),
                  // );
                },
              ),
            )
          ],
        ));
  }
}

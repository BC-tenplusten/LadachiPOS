import 'package:flutter/material.dart';
import 'package:ladachipos/neworderdetails.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class newOrder extends StatefulWidget {
  newOrder({Key key}) : super(key: key);

  @override
  newOrderState createState() => newOrderState();
}

class newOrderState extends State<newOrder> {
  TextEditingController receiptController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController deliveryDateController = TextEditingController();
  TextEditingController brand = TextEditingController();
  TextEditingController product1 = TextEditingController();
  TextEditingController product2 = TextEditingController();
  TextEditingController product3 = TextEditingController();
  TextEditingController total = TextEditingController();
  @override
  Widget build(BuildContext context) {
    CollectionReference users =
        FirebaseFirestore.instance.collection('purchaseOrder');

    Future<void> addInvoiceField() {
      return users
          .add({
            'receiptNo': receiptController.text,
            'name': nameController.text,
            'date': dateController.text,
            'phone': phoneController.text,
            'address': addressController.text,
            'deliveryDate': deliveryDateController.text,
            'product1': product1.text,
            'product2': product2.text,
            'product3': product3.text,
            'total': total,
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
              controller: receiptController,
              decoration: const InputDecoration(
                icon: const Icon(Icons.format_list_numbered),
                hintText: 'Enter receipt number',
                labelText: 'Receipt Number',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Field cannot be empty';
                }
                return null;
              },
            ),
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
            TextFormField(
              controller: product1,
              decoration: const InputDecoration(
                icon: const Icon(Icons.add_circle_outline_sharp),
                hintText: 'Product',
                labelText: 'Product 1',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Field cannot be empty';
                }
                return null;
              },
            ),
            TextFormField(
              controller: product2,
              decoration: const InputDecoration(
                icon: const Icon(Icons.add_circle_outline_sharp),
                hintText: 'Product',
                labelText: 'Product 2',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Field cannot be empty';
                }
                return null;
              },
            ),
            TextFormField(
              controller: product3,
              decoration: const InputDecoration(
                icon: const Icon(Icons.add_circle_outline_sharp),
                hintText: 'Product',
                labelText: 'Product 3',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Field cannot be empty';
                }
                return null;
              },
            ),
            TextFormField(
              controller: total,
              decoration: const InputDecoration(
                icon: const Icon(Icons.calculate),
                hintText: 'Total cost',
                labelText: 'Total',
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

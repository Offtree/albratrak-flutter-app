import 'package:albatrak/models/common/address.dart';
import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    Key key,
    @required this.address,
    this.title,
    this.phonenumber,
  }) : super(key: key);

  final Address address;
  final String title;
  final String phonenumber;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: Theme.of(context).textTheme.title,
            ),
            Text(address?.street),
            Text("${address?.city}, ${address?.state}"),
            Text("${address?.zip}, ${address?.country}"),
            SizedBox(height: 8),
            Text(phonenumber),
          ],
        ),
      ),
    );
  }
}

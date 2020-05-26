import 'package:flutter/material.dart';

class GetAccessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double price = 15999.99;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Theme.of(context).accentColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              'Learn from the Best',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Get Unlimited Access to all content for \$$price',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Theme.of(context).textTheme.caption.color,
                  fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: RaisedButton(
                child: Text('GET STARTED'),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}

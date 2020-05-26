import 'package:flutter/material.dart';

import './getAccessWidget.dart';
import './classesList.dart';
import './classPreviewList.dart';

class MainHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool paid = false;
    return Container(
      child: ListView(
        children: <Widget>[
          if (!paid) GetAccessWidget(),
          if (!paid)
            SizedBox(
              height: 20,
            ),
          Text(
            'New Classes',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                letterSpacing: 1,
                fontSize: 20,
                fontWeight: FontWeight.w200),
          ),
          ClassesList(),
          Divider(
            color: Theme.of(context).primaryColor,
          ),
          Text(
            !paid ? 'Class Previews' : 'Ongoing Classes',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                letterSpacing: 1,
                fontSize: 20,
                fontWeight: FontWeight.w200),
          ),
          if (!paid) ClassPreviews()
        ],
      ),
    );
  }
}

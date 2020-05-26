import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './classTile.dart';
import '../Services&Providers/classProvider.dart';

class ClassesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 300,
      child: Consumer<Classes>(
        builder: (ctx, classes, _) => ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: classes.classes.length,
          itemBuilder: (context, index) => ClassTile(classes.classes[index]),
        ),
      ),
    );
  }
}

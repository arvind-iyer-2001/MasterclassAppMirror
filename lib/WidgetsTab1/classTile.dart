import 'package:flutter/material.dart';
import 'package:masterclass_app_mirror/Models/classModels.dart';

class ClassTile extends StatelessWidget {
  ClassTile(this.masterclass);
  final Class masterclass;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 240,
        width: 200,
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                // Navigate to the Main Class Screen
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: GridTile(
                    footer: GridTileBar(
                      title: Text(
                        masterclass.instructor,
                      ),
                      subtitle: Text(
                        masterclass.title,
                        softWrap: true,
                      ),
                      backgroundColor: Colors.black54,
                    ),
                    child: Image.network(
                      masterclass.instructorImage,
                      fit: BoxFit.fitHeight,
                    )),
              ),
            )));
  }
}

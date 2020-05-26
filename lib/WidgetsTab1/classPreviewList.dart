import 'package:flutter/material.dart';
import 'package:masterclass_app_mirror/Models/classModels.dart';
import 'package:masterclass_app_mirror/Services&Providers/classProvider.dart';
import 'package:provider/provider.dart';

class ClassPreviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 220,
      child: Consumer<Classes>(
        builder: (ctx, classes, _) => ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: classes.classes.length,
          itemBuilder: (context, index) {
            final masterclass = classes.classes[index];
            final content = masterclass.content.firstWhere(
                (element) => element.lessonNumber.contains("Preview"));
            return PreviewTile(masterclass: masterclass, content: content);
          },
        ),
      ),
    );
  }
}

class PreviewTile extends StatelessWidget {
  const PreviewTile({
    @required this.masterclass,
    @required this.content,
  });

  final Class masterclass;
  final Content content;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap: () {
                // Navigate to the Preview Screen
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: GridTile(
                    footer: GridTileBar(
                      title: Text(
                        masterclass.instructor,
                      ),
                      subtitle: Text(
                        content.contentTitle,
                        softWrap: true,
                      ),
                      backgroundColor: Colors.black,
                    ),
                    child: Container(
                      child: Image.network(
                        content.contentImageUrl,
                        fit: BoxFit.fitHeight,
                      ),
                    )),
              ),
            )));
  }
}

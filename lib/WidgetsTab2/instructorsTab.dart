import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Services&Providers/instructorProvider.dart';

class InstructorsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<Instructors>(
          child: ListTile(),
          builder: (context, snapshot, _) {
            final instructorsList = snapshot.instructors;
            return ListView.builder(
              itemCount: instructorsList.length,
              itemBuilder: (context, index) {
                final instructor = instructorsList[index];
                return ListTile(
                  leading: Image.network(instructor.instructorImage[0]),
                  title: Text(instructor.instructorName),
                  subtitle:
                      Text('${instructor.instructorCourses.length} Course'),
                );
              },
            );
          }),
    );
  }
}

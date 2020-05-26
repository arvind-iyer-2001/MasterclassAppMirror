import 'package:flutter/material.dart';

import '../Models/instructorModels.dart';

final url =
    "https://firebasestorage.googleapis.com/v0/b/backstage-utility-app-ea137.appspot.com/o/Random%20Screenshot.png?alt=media&token=372090b8-7380-4402-a74e-0131d0867093";

class Instructors with ChangeNotifier {
  List<Instructor> _instructorsList = [
    Instructor(
        instructorCourses: ["i1", "i2", "i3"],
        instructorId: 'i1',
        instructorImage: [url, url, url],
        instructorInfo: ["Line 1", "Line 2", "Line 3"],
        instructorName: "Sample Name"),
    Instructor(
        instructorCourses: ["i1", "i2", "i3"],
        instructorId: 'i2',
        instructorImage: [url, url, url],
        instructorInfo: ["Line 1", "Line 2", "Line 3"],
        instructorName: "Sample Name"),
    Instructor(
        instructorCourses: ["i1", "i2", "i3"],
        instructorId: 'i3',
        instructorImage: [url, url, url],
        instructorInfo: ["Line 1", "Line 2", "Line 3"],
        instructorName: "Sample Name"),
    Instructor(
        instructorCourses: ["i1", "i2", "i3"],
        instructorId: 'i4',
        instructorImage: [url, url, url],
        instructorInfo: ["Line 1", "Line 2", "Line 3"],
        instructorName: "Sample Name"),
  ];

  List<Instructor> get instructors {
    return [..._instructorsList];
  }
}

import 'package:flutter/material.dart';
import 'package:masterclass_app_mirror/Models/classModels.dart';
import 'package:masterclass_app_mirror/SampleData/sampleData.dart'
    as sampleData;

var _classes = sampleData.classes;

class Classes with ChangeNotifier {
  List<Class> get classes {
    return [..._classes];
  }
}

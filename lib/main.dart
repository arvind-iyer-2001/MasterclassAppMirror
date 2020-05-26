import 'package:flutter/material.dart';
import 'package:masterclass_app_mirror/Services&Providers/classProvider.dart';
import 'package:masterclass_app_mirror/Services&Providers/instructorProvider.dart';
import 'package:provider/provider.dart';
import './homeOutline.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Classes(),
        ),
        ChangeNotifierProvider(
          create: (context) => Instructors(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            appBarTheme:
                AppBarTheme(color: Colors.black, textTheme: TextTheme()),
            backgroundColor: Colors.black,
            buttonTheme: ButtonThemeData(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                buttonColor: Colors.red,
                textTheme: ButtonTextTheme.primary),
            primarySwatch: Colors.grey,
            primaryColor: Colors.white,
            accentColor: Colors.grey[900],
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: TextTheme(
                bodyText2: TextStyle(color: Colors.white),
                subtitle1: TextStyle(color: Colors.white),
                caption: TextStyle(color: Colors.grey[500]))),
        home: HomeOutline(),
      ),
    );
  }
}

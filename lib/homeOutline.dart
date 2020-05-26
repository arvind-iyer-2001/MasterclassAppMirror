import 'package:flutter/material.dart';

import './WidgetsTab1/mainHomeBody.dart';
import './WidgetsTab2/instructorsTab.dart';

class HomeOutline extends StatelessWidget {
  final loggedIn = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: AppBar(
            title: Text(
              'MASTERCLASS',
              style: TextStyle(
                  letterSpacing: 2.5,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w300),
            ),
            actions: <Widget>[
              if (!loggedIn)
                FlatButton(
                  child: Text('Login',
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                  onPressed: () {
                    // Navigate to Sign In Page
                  },
                )
            ],
            centerTitle: true,
          ),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  MainHomeBody(),
                  InstructorsTab(),
                  Container(),
                  Container(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: TabBar(
          indicatorColor: Colors.red,
          tabs: [
            Tab(
              icon: Icon(
                Icons.directions,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Tab(
                icon: Icon(
              Icons.folder_open,
              color: Theme.of(context).primaryColor,
            )),
            Tab(
                icon: Icon(
              Icons.search,
              color: Theme.of(context).primaryColor,
            )),
            Tab(
                icon: Icon(
              Icons.person,
              color: Theme.of(context).primaryColor,
            ))
          ],
        ),
      ),
    );
  }
}

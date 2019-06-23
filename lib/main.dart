import 'package:flutter/material.dart';
import 'package:flutter_dog/demo/basic_demo.dart';
import 'package:flutter_dog/demo/bottom_navigation_bar_demo.dart';
import 'package:flutter_dog/demo/drawer_demo.dart';
import 'package:flutter_dog/demo/form_demo.dart';
import 'package:flutter_dog/demo/layout_demo.dart';
import 'package:flutter_dog/demo/material_components.dart';
import 'package:flutter_dog/demo/navigator_demo.dart';
import 'package:flutter_dog/demo/sliver_demo.dart';
import 'package:flutter_dog/demo/view_demo.dart';
import 'demo/listview_demo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      home: NavigatorDemo(),
      initialRoute: '/mdc',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => Page(
              title: 'About',
            ),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents()
      },
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70,
          accentColor: Color.fromRGBO(3, 54, 255, 1.0)),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text('Flutter'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => debugPrint('Search Button is Pressed'),
              ),
            ],
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(
                  icon: Icon(Icons.view_quilt),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
              LayoutDemo(),
              SliverDemo()
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo()),
    );
  }
}

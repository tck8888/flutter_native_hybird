import 'package:flutter/material.dart';
import 'my_tab_view.dart';
import 'package:flutter_module/tab_navigator/tab_navigator_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TabNavigatorView());
  }
}

import 'package:flutter/material.dart';
import 'package:firstproject/dummy.dart';
import '3rdDayUserList.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var content = MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/profile":(BuildContext context) => Dummy(),
      },
      // home: Dummy(),
      home: UserList(),
    );
    return content;
  }
}
import 'package:flutter/material.dart';

import 'package:chat/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'chat App',
      initialRoute: 'chat',
      routes: appRoutes,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:learn_flutter/config/router.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CheetSheet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Color(0xFFba6cba)
      ),
      initialRoute: Router.root,
      onGenerateRoute: Router.generateRoute,
      // navigatorKey: ,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:interface_for_gbk/resources/res.dart';
import 'package:interface_for_gbk/screens/dashboard_screen.dart';
import 'package:interface_for_gbk/screens/main_screen.dart';
import 'package:interface_for_gbk/screens/register_screen.dart';
import 'package:interface_for_gbk/screens/total_user_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    Resources.dashboardScreen: (BuildContext context) => DaschboardScreen(),
    Resources.registerScreen: (BuildContext context) => RegisterScreen(),
    Resources.totalUsersScreen: (BuildContext context) => TotalUsersScreen(),
  };

  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(30, 30, 47, 1),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
        hintColor: Colors.white,
      ),
      home: const MainScreen(),
      routes: routes,
    );
  }
}

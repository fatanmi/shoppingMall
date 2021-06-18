import 'package:flutter/material.dart';
import 'package:plant_app/component/detailsScreen.dart';
import './component/homeScreen.dart';

import './constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Colors.amber,
        primaryColor: kprimaryColor,
        fontFamily: "Raleway",
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: kTextColor,
            ),
      ),
      // home: HomeScreen(),

      routes: {
        "/": (ctx) => HomeScreen(),
        DetailsScreen.routeName: (ctx) => DetailsScreen(),
      },
    );
  }
}

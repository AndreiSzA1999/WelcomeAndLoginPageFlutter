import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:welcome_login_page_flutter/constants.dart';

import 'WelcomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Screen 1',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: TextTheme(
              headline5:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              headline6:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
              button: TextStyle(color: kPrimaryColor),
          ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white.withOpacity(0.2))),
          
        )
      ),
      home: WelcomeScreen(),
    );
  }
}

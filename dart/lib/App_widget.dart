import 'package:dart/App_controller.dart';
import 'package:dart/login_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance ,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.blue, 
              brightness: AppController.instance.darkTheme 
              ? Brightness.dark 
              : Brightness.light
              ),
          initialRoute: '/',
          routes: {
            '/':(context) => LoginPage(),
            '/home': (context)=> HomePage(),
          }
        );
      },
    );
  }
}

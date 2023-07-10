import 'package:flutter/material.dart';
import 'package:todo/home_page.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              elevation: 0,
              backgroundColor: Colors.white,
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24)),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.black),
          ),
          scaffoldBackgroundColor: Colors.white),
      home: const HomePage(),
    );
  }
}

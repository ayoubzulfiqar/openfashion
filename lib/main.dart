import 'package:flutter/material.dart';
import 'package:open_fashion/src/pages/homepage.dart';

void main() {
  runApp(const OpenFashion());
}

class OpenFashion extends StatelessWidget {
  const OpenFashion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Open Fashion",
      useInheritedMediaQuery: true,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "Tenor Sans",
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

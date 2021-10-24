import 'package:flutter/material.dart';
import 'package:super_bbva/Layouts/main_menu.dart';

Map<int, Color> primaryColor = {
50:const Color(0x0A003882),
100:const Color(0x0C003882),
200:const Color(0x0F003882),
300:const Color(0x2F003882),
400:const Color(0x4F003882),
500:const Color(0x6F003882),
600:const Color(0x8F003882),
700:const Color(0xAF003882),
800:const Color(0xCF003882),
900:const Color(0xFF003882),
};
MaterialColor primarycolor = MaterialColor(0xFF003882,primaryColor);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: primarycolor,
      ),
      home: const MainMenu(),
    );
  }
}

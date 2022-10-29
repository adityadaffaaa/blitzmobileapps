import 'package:flutter/material.dart';
import 'package:flutter_photo_in_apps/Pages/pencarian.dart';
import 'package:flutter_photo_in_apps/Pages/profil.dart';
import 'Pages/home.dart';
import 'Pages/riwayat.dart';
import 'Pages/splash.dart';
import 'Pages/profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Blitz",
      debugShowCheckedModeBanner: false,
      routes: {'/': (context) => SplashPage(), '/home': (context) => Home()}
    );
  }
}

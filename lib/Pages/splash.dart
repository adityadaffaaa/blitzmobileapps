import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_photo_in_apps/theme.dart';
import '../main.dart';
import '../Pages/home.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/home'));

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container();
    }

    Widget logo() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/image/Logo Photo In.png",
              height: 58,
            ),
          ],
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 32),
        child: Text(
          "© 2022 Blitz by Daffa Fawwaz Aditya",
          style: Paragraph2.copyWith(color: text1),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [header(), logo(), footer()],
        ),
      )),
    );
  }
}

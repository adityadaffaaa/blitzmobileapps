import 'dart:ui';
import 'package:flutter_photo_in_apps/Pages/pencarian.dart';

import '../Widget/riwayatcard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'profil.dart';
import '../theme.dart';

class RiwayatPemesanan extends StatefulWidget {
  const RiwayatPemesanan({Key? key}) : super(key: key);

  @override
  State<RiwayatPemesanan> createState() => _RiwayatPemesananState();
}

class _RiwayatPemesananState extends State<RiwayatPemesanan> {
  int currentIndex = 1;
  @override
  Widget Navbar() {
    return BottomNavigationBar(
      backgroundColor: primary,
      currentIndex: currentIndex,
      onTap: (value) {
        print(value);
        setState(() {
          currentIndex = value;
        });
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Home();
                }));
              },
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: currentIndex == 0
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: secondary)
                    : BoxDecoration(borderRadius: BorderRadius.circular(0)),
                margin: EdgeInsets.only(top: 11),
                child: Image.asset(
                  "assets/image/icons/ri-home-3-line.png",
                  width: 24,
                ),
              ),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(4),
              margin: EdgeInsets.only(top: 11),
              decoration: currentIndex == 1
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(24), color: secondary)
                  : BoxDecoration(borderRadius: BorderRadius.circular(0)),
              child: Image.asset(
                "assets/image/icons/calendar.png",
                width: 24,
              ),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Pencarian();
                }));
              },
              child: Container(
                padding: EdgeInsets.all(4),
                margin: EdgeInsets.only(top: 11),
                decoration: currentIndex == 2
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: secondary)
                    : BoxDecoration(borderRadius: BorderRadius.circular(0)),
                child: Image.asset(
                  "assets/image/icons/Magnifier.png",
                  width: 24,
                ),
              ),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(4),
              margin: EdgeInsets.only(top: 11),
              decoration: currentIndex == 3
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(24), color: secondary)
                  : BoxDecoration(borderRadius: BorderRadius.circular(0)),
              child: Image.asset(
                "assets/image/icons/Bell.png",
                width: 24,
              ),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Profil();
                  }));
                },
                child: Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.only(top: 11),
                  decoration: currentIndex == 4
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: secondary)
                      : BoxDecoration(borderRadius: BorderRadius.circular(0)),
                  child: Image.asset(
                    "assets/image/icons/profile.png",
                    width: 24,
                  ),
                ),
              ),
            ),
            label: ""),
      ],
    );
  }

  Widget build(BuildContext context) {
    Widget header() {
      return Container(
          margin: EdgeInsets.only(top: 4),
          child: Text(
            "Riwayat Pemesanan",
            style: Heading3.copyWith(color: text1),
          ));
    }

    Widget caripemesanan() {
      return Container(
        margin: EdgeInsets.only(top: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 260,
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                  color: primary, borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: text2,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: Paragraph2.copyWith(color: text2),
                      decoration: InputDecoration.collapsed(
                          hintText: "Cari Pemesanan",
                          hintStyle: Paragraph2.copyWith(color: text2)),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.mail,
              color: primary,
            ),
            Icon(
              Icons.filter_alt_outlined,
              color: primary,
            )
          ],
        ),
      );
    }

    Widget riwayat() {
      return Container(
        margin: EdgeInsets.only(top: 24),
        child: Column(
          children: [
            RiwayatCardVideo(),
            SizedBox(height: 18),
            RiwayatCardEditing(),
            SizedBox(height: 18),
            RiwayatCardFoto(),
            SizedBox(
              height: 18,
            ),
            RiwayatCardVideo(),
            SizedBox(height: 18),
            RiwayatCardEditing(),
            SizedBox(height: 18),
            RiwayatCardFoto(),
            SizedBox(
              height: 18,
            ),
            RiwayatCardVideo(),
            SizedBox(height: 18),
            RiwayatCardEditing(),
            SizedBox(height: 18),
            RiwayatCardFoto(),
            SizedBox(
              height: 18,
            ),
          ],
        ),
      );
    }

    return Container(
      child: Scaffold(
        bottomNavigationBar: Navbar(),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                children: [header(), caripemesanan(), riwayat()],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

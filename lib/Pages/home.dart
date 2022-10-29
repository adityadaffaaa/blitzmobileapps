// import 'dart:html';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_photo_in_apps/Pages/pencarian.dart';
import 'package:flutter_photo_in_apps/Pages/profil.dart';
import 'package:flutter_photo_in_apps/Widget/pilihjasacard.dart';
import '../Widget/carousel.dart';
import '../theme.dart';
import '../Pages/riwayat.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  @override
  static const List<Widget> indexHalaman = <Widget>[
    Home(),
    RiwayatPemesanan(),
    Profil()
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
    print(index);
  }

  Widget Navbar() {
    return BottomNavigationBar(
      backgroundColor: primary,
      currentIndex: currentIndex,
      onTap: _onItemTapped,
      // onTap: (value) {
      //   print(value);
      //   setState(() {
      //     currentIndex = value;
      //   });
      // },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(4),
              decoration: currentIndex == 0
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(24), color: secondary)
                  : BoxDecoration(borderRadius: BorderRadius.circular(0)),
              margin: EdgeInsets.only(top: 11),
              child: Image.asset(
                "assets/image/icons/ri-home-3-line.png",
                width: 24,
              ),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return RiwayatPemesanan();
                }));
              },
              child: Container(
                padding: EdgeInsets.all(4),
                margin: EdgeInsets.only(top: 11),
                decoration: currentIndex == 1
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: secondary)
                    : BoxDecoration(borderRadius: BorderRadius.circular(0)),
                child: Image.asset(
                  "assets/image/icons/calendar.png",
                  width: 24,
                ),
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
            icon: GestureDetector(
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
            label: ""),
      ],
    );
  }

  // Widget body() {

  //   switch (currentIndex) {
  //     case 1:
  //       return Home();
  //       break;
  //     default:
  //   }
  // }

  Widget header() {
    return Container(
        margin: EdgeInsets.only(top: 4),
        child: Column(
          children: <Widget>[
            Center(
              child: Image(
                image: AssetImage('assets/image/Logo Photo In.png'),
                height: 36,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Halo,',
                      style: Heading1Reg,
                    ),
                    Text(
                      ' Daffa!',
                      style: Heading1.copyWith(color: primary),
                    )
                  ],
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Profil();
                      }));
                    },
                    child: Image(
                      image: AssetImage('assets/image/Daffa.png'),
                      height: 64,
                    )),
              ],
            ),
          ],
        ));
  }

  Widget carousel() {
    return Container();
  }

  Widget pilihjasa() {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pilih Jasa',
                    style: Heading4.copyWith(color: primary),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text('Pilih salah satu jasa dibawah\nini yang kamu inginkan',
                      style: Paragraph4.copyWith(color: text4)),
                ],
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PilihJasaFotografiCard(),
                  PilihJasaVideografiCard(),
                  PilihJasaEditVideoCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget peralatankami() {
    return Container(
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 2,
                    width: 80,
                    decoration: BoxDecoration(
                        color: primary, borderRadius: BorderRadius.circular(8)),
                  ),
                  Text(
                    "Peralatan Kami",
                    style: Heading3.copyWith(color: primary),
                  ),
                  Container(
                    height: 2,
                    width: 80,
                    decoration: BoxDecoration(
                        color: primary, borderRadius: BorderRadius.circular(8)),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: Text(
                  "Peralatan yang kami gunakan menunjang hasil akhir yang memuaskan",
                  textAlign: TextAlign.center,
                  style: Paragraph4.copyWith(color: text4),
                ),
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Color(0xff313131).withOpacity(0.3),
                              blurRadius: 18,
                              offset: Offset(0, 4))
                        ]),
                        child: Image.asset(
                          "assets/image/Peralatan Kamera.png",
                          height: 154,
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Camera",
                            style: Heading4.copyWith(color: text1),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                            style: Paragraph4.copyWith(color: text4),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Color(0xff313131).withOpacity(0.3),
                              blurRadius: 18,
                              offset: Offset(0, 4))
                        ]),
                        child: Image.asset(
                          "assets/image/Peralatan Lighting.png",
                          height: 154,
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lighting",
                            style: Heading4.copyWith(color: text1),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                            style: Paragraph4.copyWith(color: text4),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Color(0xff313131).withOpacity(0.3),
                              blurRadius: 18,
                              offset: Offset(0, 4))
                        ]),
                        child: Image.asset(
                          "assets/image/Peralatan Tripod.png",
                          height: 154,
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tripod",
                            style: Heading4.copyWith(color: text1),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.",
                            style: Paragraph4.copyWith(color: text4),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        bottomNavigationBar: Navbar(),
        body: SafeArea(
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[header(), pilihjasa(), peralatankami()],
                  ),
                ))),
      ),
    );
  }
}

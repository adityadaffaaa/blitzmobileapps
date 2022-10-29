import 'package:flutter/material.dart';
import 'package:flutter_photo_in_apps/Pages/riwayat.dart';
import 'package:flutter_photo_in_apps/theme.dart';
import './home.dart';
import './profil.dart';

class Pencarian extends StatefulWidget {
  const Pencarian({Key? key}) : super(key: key);

  @override
  State<Pencarian> createState() => _PencarianState();
}

class _PencarianState extends State<Pencarian> {
  int currentIndex = 2;
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
            icon: Container(
              padding: EdgeInsets.all(4),
              margin: EdgeInsets.only(top: 11),
              decoration: currentIndex == 2
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(24), color: secondary)
                  : BoxDecoration(borderRadius: BorderRadius.circular(0)),
              child: Image.asset(
                "assets/image/icons/Magnifier.png",
                width: 24,
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

  @override
  Widget searchbar() {
    return Container(
      margin: EdgeInsets.only(top: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 284,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: text4),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  size: 24,
                  color: text4,
                ),
                Expanded(
                    child: TextFormField(
                  style: Paragraph2.copyWith(color: text4),
                  decoration: InputDecoration.collapsed(
                      hintText: "Cari Photo, Video, dll ",
                      hintStyle: Paragraph2.copyWith(color: text1)),
                ))
              ],
            ),
          ),
          InkWell(
              onTap: () {},
              child: Icon(
                Icons.filter_alt_outlined,
                color: text1,
                size: 24,
              )),
        ],
      ),
    );
  }

  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Terpopuler",
                style: Heading4.copyWith(color: text1),
              ),
              InkWell(
                  onTap: () {},
                  child: Text(
                    "Lihat selengkapnya",
                    style: Paragraph2.copyWith(color: primary),
                  ))
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 207,
                  width: 207,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage("assets/image/fotomomen5.png"),
                      )),
                ),
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 93,
                      width: 93,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: AssetImage("assets/image/fotomomen7.png"),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 93,
                      width: 93,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: AssetImage("assets/image/fotomomen4.png"),
                          )),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 145,
                  width: 154,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage("assets/image/fotomomen8.png"))),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 145,
                  width: 154,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage("assets/image/fotomomen9.png"))),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget terbaru() {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Terbaru",
                style: Paragraph1.copyWith(color: text1),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Lihat lainnya",
                  style: Paragraph2.copyWith(color: primary),
                ),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 145,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 145,
                  width: 153,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage("assets/image/fotomomen8.png"))),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 145,
                  width: 153,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage("assets/image/fotomomen9.png"))),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 145,
                  width: 153,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage("assets/image/fotomomen8.png"))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget momenPernikahan() {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Momen Pernikahan",
                style: Paragraph1.copyWith(color: text1),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Lihat lainnya",
                  style: Paragraph2.copyWith(color: primary),
                ),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 145,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 145,
                  width: 153,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage("assets/image/fotomomen9.png"))),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 145,
                  width: 153,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage("assets/image/fotomomen9.png"))),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 145,
                  width: 153,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage("assets/image/fotomomen8.png"))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget momenUlangTahun() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Momen Ulang Tahun",
                style: Paragraph1.copyWith(color: text1),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Lihat lainnya",
                  style: Paragraph2.copyWith(color: primary),
                ),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 145,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 145,
                  width: 153,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage("assets/image/fotomomen9.png"))),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 145,
                  width: 153,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage("assets/image/fotomomen8.png"))),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 145,
                  width: 153,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage("assets/image/fotomomen8.png"))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Navbar(),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  searchbar(),
                  header(),
                  terbaru(),
                  momenPernikahan(),
                  momenUlangTahun()
                ],
              ),
            ),
          ),
        ));
  }
}

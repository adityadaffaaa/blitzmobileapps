import 'package:flutter/material.dart';
import 'package:flutter_photo_in_apps/Pages/pencarian.dart';
import 'package:flutter_photo_in_apps/Pages/riwayat.dart';
import '../theme.dart';
import 'home.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  int currentIndex = 4;
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
            icon: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext) {
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
            icon: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext) {
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
            icon: Center(
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

  Widget header() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back_ios),
            iconSize: 24,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return Home();
              }));
            },
          ),
          Text(
            "Profil Saya",
            style: Heading3.copyWith(color: text1),
          ),
          Container(
            height: 24,
            width: 24,
          )
        ],
      ),
    );
  }

  Widget foto() {
    return Container(
      margin: EdgeInsets.only(top: 46),
      child: Column(
        children: [
          Image.asset(
            "assets/image/Daffa.png",
            height: 110,
          ),
          SizedBox(height: 16),
          Text(
            "Daffa Fawwaz Aditya",
            style: Heading3.copyWith(color: text1),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "Ketuk untuk edit",
            style: Paragraph4.copyWith(color: text4),
          )
        ],
      ),
    );
  }

  Widget footer() {
    return Container(
      margin: EdgeInsets.only(top: 46),
      child: Column(
        children: [
          Container(
            height: 296,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.manage_accounts_outlined,
                          size: 32,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pengaturan akun",
                              style: Paragraph1.copyWith(color: text1),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Data diri, Keamanan Akun",
                              style: Paragraph4.copyWith(color: text4),
                            )
                          ],
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 24,
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.help_outline_rounded,
                          size: 32,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bantuan umum",
                              style: Paragraph1.copyWith(color: text1),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Syarat dan ketentuan, Privasi & Aturan",
                              style: Paragraph4.copyWith(color: text4),
                            )
                          ],
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 24,
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.headset_mic_outlined,
                          size: 32,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bantuan",
                              style: Paragraph1.copyWith(color: text1),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Helpdesk, FAQ",
                              style: Paragraph4.copyWith(color: text4),
                            )
                          ],
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 24,
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.error_outline_outlined,
                          size: 32,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tentang",
                              style: Paragraph1.copyWith(color: text1),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Tentang Photo In, Tentang Bisnis Photo In",
                              style: Paragraph4.copyWith(color: text4),
                            )
                          ],
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 24,
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.language_rounded,
                          size: 32,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Bahasa",
                          style: Paragraph1.copyWith(color: text1),
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 24,
                        ))
                  ],
                ),
              ],
            ),
          ),
          Container(
            // margin: EdgeInsets.only(top: 32),
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(primary),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(horizontal: 26, vertical: 10)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)))),
                    child: Text("Log Out")),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Versi 1.1",
                  style: Paragraph4.copyWith(color: text4),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Navbar(),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [header(), foto(), footer()],
          ),
        ),
      ),
    );
  }
}

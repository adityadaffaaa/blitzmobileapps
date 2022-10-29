import 'package:flutter/material.dart';
import '../theme.dart';

class PilihJasaVideografiCard extends StatelessWidget {
  const PilihJasaVideografiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24),
      height: 280,
      width: 235,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: background1,
          boxShadow: [
            BoxShadow(
                color: Color(0xff313131).withOpacity(0.1),
                blurRadius: 18,
                offset: Offset(0, 4))
          ]),
      child: Column(
        children: [
          Image.asset('assets/image/Vendor videografi.png'),
          SizedBox(
            height: 13,
          ),
          Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Vendor Videografi',
                    style: Heading4.copyWith(color: text1),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Ingin abadikan momen berharga\nAnda bisa diabadikan dalam sebuah\nvideo? Pilih jasa ini',
                    style: Paragraph4.copyWith(color: text4),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class PilihJasaFotografiCard extends StatelessWidget {
  const PilihJasaFotografiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 235,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: background1,
          boxShadow: [
            BoxShadow(
                color: Color(0xff313131).withOpacity(0.1),
                blurRadius: 18,
                offset: Offset(0, 4))
          ]),
      child: Column(
        children: [
          Image.asset('assets/image/Vendor fotografi.png'),
          SizedBox(
            height: 13,
          ),
          Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Vendor Fotografi',
                    style: Heading4.copyWith(color: text1),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Abadikan momen berharga Anda\ndengan hasil foto yang memuaskan\ndengan memilih jasa ini',
                    style: Paragraph4.copyWith(color: text4),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class PilihJasaEditVideoCard extends StatelessWidget {
  const PilihJasaEditVideoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24),
      height: 280,
      width: 235,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: background1,
          boxShadow: [
            BoxShadow(
                color: Color(0xff313131).withOpacity(0.1),
                blurRadius: 18,
                offset: Offset(0, 4))
          ]),
      child: Column(
        children: [
          Image.asset('assets/image/Editing Video.png'),
          SizedBox(
            height: 13,
          ),
          Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Video Editing',
                    style: Heading4.copyWith(color: text1),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Editor video professional kami akan\nmengedit video Anda menjadi lebih\nmenarik',
                    style: Paragraph4.copyWith(color: text4),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../theme.dart';

class RiwayatCardVideo extends StatelessWidget {
  const RiwayatCardVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 153,
      width: 343,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color(0xffF8F4F4), borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Booking",
                    style: Paragraph1.copyWith(color: text1),
                  ),
                  Text(
                    "7 Januari 2022 - 9 Januari 2022",
                    style: Paragraph4.copyWith(color: text4),
                  )
                ],
              ),
              Container(
                  padding:
                      EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                  decoration: BoxDecoration(
                      color: primary, borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    "Selesai",
                    style: Paragraph1.copyWith(color: text2),
                  ))
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/image/Riwayat Video.png",
                height: 90,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Videografi",
                        style: Paragraph1.copyWith(color: text1),
                      ),
                      Text(
                        "Momen Holiday",
                        style: Paragraph2.copyWith(color: text1),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Total Bayar",
                        style: Paragraph4.copyWith(color: text4),
                      ),
                      Text(
                        "Rp. 610.000",
                        style: Paragraph4.copyWith(color: text1),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
class RiwayatCardFoto extends StatelessWidget {
  const RiwayatCardFoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 153,
      width: 343,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color(0xffF8F4F4), borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Booking",
                    style: Paragraph1.copyWith(color: text1),
                  ),
                  Text(
                    "7 Januari 2022 - 9 Januari 2022",
                    style: Paragraph4.copyWith(color: text4),
                  )
                ],
              ),
              Container(
                  padding:
                      EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                  decoration: BoxDecoration(
                      color: primary, borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    "Selesai",
                    style: Paragraph1.copyWith(color: text2),
                  ))
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/image/Riwayat Foto.png",
                height: 90,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Videografi",
                        style: Paragraph1.copyWith(color: text1),
                      ),
                      Text(
                        "Momen Holiday",
                        style: Paragraph2.copyWith(color: text1),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Total Bayar",
                        style: Paragraph4.copyWith(color: text4),
                      ),
                      Text(
                        "Rp. 610.000",
                        style: Paragraph4.copyWith(color: text1),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
class RiwayatCardEditing extends StatelessWidget {
  const RiwayatCardEditing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 153,
      width: 343,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color(0xffF8F4F4), borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Booking",
                    style: Paragraph1.copyWith(color: text1),
                  ),
                  Text(
                    "7 Januari 2022 - 9 Januari 2022",
                    style: Paragraph4.copyWith(color: text4),
                  )
                ],
              ),
              Container(
                  padding:
                      EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                  decoration: BoxDecoration(
                      color: primary, borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    "Selesai",
                    style: Paragraph1.copyWith(color: text2),
                  ))
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/image/Riwayat Editing.png",
                height: 90,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Videografi",
                        style: Paragraph1.copyWith(color: text1),
                      ),
                      Text(
                        "Momen Holiday",
                        style: Paragraph2.copyWith(color: text1),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Total Bayar",
                        style: Paragraph4.copyWith(color: text4),
                      ),
                      Text(
                        "Rp. 610.000",
                        style: Paragraph4.copyWith(color: text1),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

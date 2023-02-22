import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes.dart';

class BookDetail extends StatelessWidget {
  static const nameRoute = ' /bookDetails';
  const BookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30, bottom: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.chevron_left_rounded,
                size: 30,
              ),
            ),
            Text(
              'Book Details',
              style: semiBoldText14.copyWith(color: blackColor),
            ),
            Icon(
              Icons.share_outlined,
              size: 22,
            )
          ],
        ),
      );
    }

    Widget bookImage() {
      return Container(
        height: 267,
        width: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/trending-1.png'),
          ),
        ),
      );
    }

    Widget infoDescription() {
      return Container(
        height: 60,
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: greyinfoColor,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Row(children: [
          Column(
            children: [
              Text(
                'Rating',
                style: mediumText14.copyWith(color: dividerColor),
              ),
              Text(
                '4.2',
                style: semiBoldText12.copyWith(color: blackColor2),
              ),
            ],
          ),
          VerticalDivider(
            color: dividerColor,
            thickness: 1,
          ),
          Column(
            children: [
              Text(
                'Number of Pages',
                style: mediumText14.copyWith(color: dividerColor),
              ),
              Text(
                '275',
                style: semiBoldText12.copyWith(color: blackColor2),
              ),
            ],
          ),
          VerticalDivider(
            color: dividerColor,
            thickness: 1,
          ),
          Column(
            children: [
              Text(
                'Language',
                style: mediumText14.copyWith(color: dividerColor),
              ),
              Text(
                'IDN',
                style: semiBoldText12.copyWith(color: blackColor2),
              ),
            ],
          ),
        ]),
      );
    }

    Widget description() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Struktur Ekonomi ',
                        style: semiBoldText20.copyWith(
                          color: blackColor2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        'Mick Schumacher',
                        style: mediumText14.copyWith(
                          color: greyColor,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'USD 39.99',
                  style: mediumText14.copyWith(color: greenColor),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Description',
              style: semiBoldText14.copyWith(color: blackColor2),
            ),
            SizedBox(height: 6),
            Text(
              'Struktur Kagum, as defined by bestselling business guru Mick S, is not about manipulating people. It transforms situations and relationships.',
              style: regularText12.copyWith(color: greyColor),
            ),
            infoDescription(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Column(
            children: [
              header(),
              bookImage(),
              description(),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/book.dart';
import 'package:flutter_application_1/screens/home/components/trending_book.dart';
import 'package:flutter_application_1/themes.dart';
import 'package:flutter_application_1/screens/home/components/recent_book.dart';

class HomePage extends StatefulWidget {
  static const nameRoute = ' /homepage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _categories = [
    'All Books',
    'Economy',
    'Law',
    'Sports',
    'Education'
  ];

  int _isSelected = 0;
// KOLOM HELLO
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/icons/profile.png')))),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Charles,',
                  style: semiBoldText16,
                ),
                Text(
                  'Good Morning',
                  style: regularText14.copyWith(color: greyColor),
                )
              ],
            ),
            Spacer(),
            Image.asset('assets/icons/icon-menu.png', width: 18)
          ],
        ),
      );
    }

    Widget searchField() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
            decoration: InputDecoration(
                hintText: 'Find your favorite book',
                fillColor: searchColor,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                isCollapsed: true,
                contentPadding: EdgeInsets.all(18),
                suffixIcon: InkWell(
                  onTap: () {},
                  child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius:
                              BorderRadius.all((Radius.circular(12)))),
                      child: Icon(
                        Icons.search_rounded,
                        color: whiteColor,
                      )),
                ),
                hintStyle: mediumText12.copyWith(color: greyColor))),
      );
    }

    Widget recentBook() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            RecentBook(
              image: 'assets/images/recentbooks_1.png',
              title: 'Kesenjangan Ekonomi',
            ),
            SizedBox(
              width: 20,
            ),
            RecentBook(
              image: 'assets/images/recentbooks-2.png',
              title: 'Demokrasi dan Diskursus',
            )
          ],
        ),
      );
    }

    Widget categories(int index) {
      return InkWell(
        onTap: () {
          setState(() {
            _isSelected = index;
          });
        },
        child: Container(
          margin: EdgeInsets.only(top: 30, right: 12),
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          decoration: BoxDecoration(
            color: _isSelected == index ? greenColor : transparentColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            _categories[index],
            style: semiBoldText14.copyWith(
                color: _isSelected == index ? whiteColor : greyColor),
          ),
        ),
      );
    }

    Widget listCategories() {
      return SingleChildScrollView(
        padding: EdgeInsets.only(left: 30),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: _categories
              .asMap()
              .entries
              .map((MapEntry map) => categories(map.key))
              .toList(),
        ),
      );
    }

    Widget trendingBook() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: bookLists
              .asMap()
              .entries
              .map((MapEntry map) => TrendingBook(
                    info: bookLists[map.key],
                  ))
              .toList(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 27),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                SizedBox(height: 30),
                searchField(),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text('Recent Book',
                      style: semiBoldText16.copyWith(color: blackColor)),
                ),
                SizedBox(height: 12),
                recentBook(),
              ],
            ),
          ),
          listCategories(),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Text(
              'Trending Now',
              style: semiBoldText16.copyWith(color: blackColor),
            ),
          ),
          trendingBook(),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

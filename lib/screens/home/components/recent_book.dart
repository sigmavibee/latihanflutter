import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class RecentBook extends StatelessWidget {
  const RecentBook({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: borderColorRecentBooks),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 90,
          ),
          SizedBox(width: 18),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: semiBoldText14.copyWith(color: blackColor2),
              ),
              CircularPercentIndicator(
                radius: 60,
                lineWidth: 7,
                animation: true,
                percent: 0.6,
                progressColor: greenColor,
                reverse: true,
                circularStrokeCap: CircularStrokeCap.round,
              ),
              Text(
                '60 % Completed',
                style: mediumText12.copyWith(color: greyColor),
              ),
            ],
          )
        ],
      ),
    );
  }
}

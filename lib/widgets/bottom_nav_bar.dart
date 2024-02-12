import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:po/constants.dart';
import 'package:po/main.dart';
import 'package:po/pages/home.dart';
import 'package:po/widgets/doctorcall.dart';
import 'package:po/widgets/doctorpage.dart';
import 'package:po/pages/home.dart';

import '../additionalpage/calender.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "Today",
            svgScr: "assets/icons/calendar.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Calendar()),
              );
              // Add the functionality you want when "Today" is pressed
            },
          ),
          BottomNavItem(
            title: "Exercises",
            svgScr: "assets/icons/gym.svg",
            isActive: true,
            press: () {
              // Add the functionality you want when "All Exercises" is pressed
            },
          ),
          BottomNavItem(
            title: "Appointment",
            svgScr: "assets/icons/search.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CallScreen()),
              );
            },
          ),
          BottomNavItem(
            title: "Assessment",
            svgScr: "assets/icons/Settings.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key? key,
    required this.svgScr,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgScr,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
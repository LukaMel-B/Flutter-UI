import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_design/screens/page_five.dart';
import 'package:ui_design/screens/page_four.dart';
import 'package:ui_design/screens/page_six.dart';
import 'package:ui_design/screens/page_three.dart';
import 'package:ui_design/screens/page_two.dart';

import '../screens/page_one.dart';

class ListValues {
  final nav = [
    PageOne(),
    PageTwo(),
    PageThree(),
    PageFour(),
    PageFive(),
    PageSix(),
  ];
  final title = [
    'Page 1',
    'Page 2',
    'Page 3',
    'Page 4',
    'Page 5',
    'Page 6',
  ];
  final lead = const [
    Icon(
      Icons.share_outlined,
      color: Colors.black54,
      size: 25,
    ),
    Icon(
      Icons.chat_bubble_outline_outlined,
      color: Colors.black54,
      size: 25,
    ),
    Icon(
      Icons.whatsapp_rounded,
      color: Colors.black54,
      size: 25,
    ),
    Icon(
      Icons.lock_outline_rounded,
      color: Colors.black54,
      size: 25,
    ),
    Icon(
      Icons.star_border_outlined,
      color: Colors.black54,
      size: 25,
    ),
    Icon(
      Icons.logout_outlined,
      color: Colors.black54,
      size: 25,
    ),
  ];
  final text = [
    'Share Dukaan App',
    'Change Language',
    'Whatsapp Chat Support',
    'Privacy Policy',
    'Rate Us',
    'Sign Out',
  ];
  final color = const [
    Color.fromARGB(255, 255, 106, 0),
    Color(0xff6AD966),
    Color(0xffF2AA52),
    Color(0xff10AD9D),
    Color(0xff7C7C7C),
    Color(0xff6D44A6),
    Color(0xffC15B84),
  ];
  final title2 = [
    '''Marketing
Designs''',
    '''Online
Payments''',
    '''Discount
Coupons''',
    '''My
Customer''',
    '''Store QR
Code''',
    '''Extra
Charges''',
    '''Order
Forms''',
  ];
  final p2Icon = const [
    Icon(
      FontAwesomeIcons.bullhorn,
      color: Colors.white,
      size: 19,
    ),
    Icon(
      FontAwesomeIcons.indianRupeeSign,
      color: Colors.white,
      size: 19,
    ),
    Icon(
      FontAwesomeIcons.percent,
      color: Colors.white,
      size: 19,
    ),
    Icon(
      FontAwesomeIcons.userGroup,
      color: Colors.white,
      size: 19,
    ),
    Icon(
      FontAwesomeIcons.usersViewfinder,
      color: Colors.white,
      size: 19,
    ),
    Icon(
      FontAwesomeIcons.moneyBills,
      color: Colors.white,
      size: 19,
    ),
    Icon(
      FontAwesomeIcons.alignLeft,
      color: Colors.white,
      size: 19,
    ),
  ];
}

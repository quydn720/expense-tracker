import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xff7F3DFF);
const Color kPrimaryColorLight = Color(0xffFF85AE);
const Color kSecondaryColor = Color(0xFF33C9FF);
const Color kOptionalColor = Color(0xFF41E94B);
const Color kWhiteBackgroundColor = Color(0xFFFCFCFC);
const Color kGreyishColor = Color(0xFFF6F6F7);

const Color kDark25 = Color(0xff7A7E80);
const Color kDark50 = Color(0xff464A4D);
const Color kDark75 = Color(0xff161719);
const Color kDark100 = Color(0xff0D0E0F);

const Color kLight20 = Color(0xffE3E5E5);
const Color kLight40 = Color(0xffF2F4F5);
const Color kLight60 = Color(0xffF7F9FA);
const Color kLight80 = Color(0xffFBFBFB);
const Color kLight100 = Color(0xffFFFFFF);

const int kAnimationDuration = 100;

const double kDefaultRadius = 16;
const double kBottomSheetRadius = 24;
const double kLargeRadius = 32;

const double kDefaultPadding = 8;
const double kMediumPadding = 16;
const double kLargePadding = 32;

const Size kLargeButtonSize = Size(double.infinity, 56);
const Size kSmallButtonSize = Size(164, 56);

final kFirstDay = DateTime(2020);
final kLastDay = DateTime.utc(2030, 12, 31);

const kOnboardingData = [
  {
    'image': 'assets/images/money.png',
    'title': 'Gain total control of your money',
    'content': 'Become your own money manager and make every cent count',
  },
  {
    'image': 'assets/images/bill.png',
    'title': 'Know where your money goes',
    'content':
        'Track your transaction easily, with categories and financial report',
  },
  {
    'image': 'assets/images/data_table.png',
    'title': 'Planning ahead',
    'content': 'Setup your budget for each category so you in control'
  },
];

// Typography
const tiny = TextStyle(fontSize: 12);
const small = TextStyle(fontSize: 13);
const body3 = TextStyle(fontSize: 14);
const body2 = TextStyle(fontSize: 16, fontWeight: FontWeight.w600);
const body1 = TextStyle(fontSize: 16);
const title3 = TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
const title2 = TextStyle(fontSize: 24, fontWeight: FontWeight.w600);
const title1 = TextStyle(fontSize: 32, fontWeight: FontWeight.w700);
const titleX = TextStyle(fontSize: 64, fontWeight: FontWeight.w700);

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

const Color kViolet20 = Color(0xffEEE5FF);
const Color kViolet40 = Color(0xffD3BDFF);
const Color kViolet60 = Color(0xffB18AFF);
const Color kViolet80 = Color(0xff8F57FF);
const Color kViolet100 = Color(0xff7F3DFF);

const Color kRed20 = Color(0xffFDD5D7);
const Color kRed40 = Color(0xffFDA2A9);
const Color kRed60 = Color(0xffFD6F7A);
const Color kRed80 = Color(0xffFD5662);
const Color kRed100 = Color(0xffFD3C4A);

const Color kGreen20 = Color(0xffCFFAEA);
const Color kGreen40 = Color(0xff93EACA);
const Color kGreen60 = Color(0xff65D1AA);
const Color kGreen80 = Color(0xff2AB784);
const Color kGreen100 = Color(0xff00A86B);

const Color kYellow20 = Color(0xffFCEED4);
const Color kYellow40 = Color(0xffFCDDA1);
const Color kYellow60 = Color(0xffFCCC6F);
const Color kYellow80 = Color(0xffFCBB3C);
const Color kYellow100 = Color(0xffFCAC12);

const Color kBlue20 = Color(0xffBDDCFF);
const Color kBlue40 = Color(0xff8AC0FF);
const Color kBlue60 = Color(0xff57A5FF);
const Color kBlue80 = Color(0xff248AFF);
const Color kBlue100 = Color(0xff0077FF);

const int kAnimationDuration = 100;

const double kDefaultRadius = 16.0;
const double kBottomSheetRadius = 24.0;
const double kLargeRadius = 32.0;

const double kDefaultPadding = 8.0;
const double kMediumPadding = 16.0;
const double kLargePadding = 32.0;

const Size kLargeButtonSize = Size(double.infinity, 56.0);
const Size kSmallButtonSize = Size(164, 56);

final kFirstDay = DateTime(2020, 01, 01);
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

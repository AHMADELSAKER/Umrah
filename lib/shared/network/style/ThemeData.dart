import 'dart:ui';

import 'package:umrah_app/shared/network/style/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData LightTheme = ThemeData(
  primarySwatch: Mdefaultcolor,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      ),
      titleSpacing: 20.0,
      backwardsCompatibility: false,
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      )),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Defaultcolor,
    unselectedItemColor: unselectedDefaultcolor,
    elevation: 20,
    backgroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  ),
);

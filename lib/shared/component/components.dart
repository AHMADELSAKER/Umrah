// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:umrah_app/shared/component/Constants.dart';

import '../network/style/Colors.dart';

void navigateTo({
  required context,
  required widget,
}) =>
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigatoandremove({
  required context,
  required widget,
}) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );

Widget ContainerWithDecoration() => Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.redAccent, Colors.white, Colors.blue]),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
          )),
    );

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: Color.fromARGB(255, 0, 155, 157),
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

Widget ButtonContainer(
        {@required context,
        @required NextScreen,
        @required width,
        @required height,
        @required String? text}) =>
    Container(
      width: width / 1.17,
      height: height / 9,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 0, 155, 157),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: () {
          navigatoandremove(context: context, widget: NextScreen);
        },
        child: Text(
          text!,
          style: TextStyle(color: Colors.white, fontSize: fontsize),
        ),
      ),
    );

Widget ContForTFF({
  @required widget,
  @required width,
  @required height,
}) =>
    Container(
        width: width / 0.9,
        height: height / 12,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
        ),
        child: widget);

Widget iconContainer(
        {Widget? nextScreen,
        context,
        double? heigt,
        double? iconsize,
        double? width,
        IconData? Theicon,
        double? circularRadius}) =>
    Container(
      height: heigt,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[200],
      ),
      child: Center(
        child: IconButton(
          color: Colors.grey[500],
          onPressed: () {
            navigatoandremove(context: context, widget: nextScreen!);
          },
          icon: Icon(
            Theicon,
            size: iconsize,
          ),
        ),
      ),
    );

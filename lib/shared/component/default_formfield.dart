import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DefaultFormField extends StatelessWidget {
  TextEditingController controller;
  TextInputType type;
  String label;
  String? Svg;
  IconData? prefix;
  IconData? suffix;
  bool? ispassword;
  Function valdiate;
  Function? suffixpressed;
  Function? onsubmit;

  DefaultFormField({
    required this.controller,
    required this.type,
    required this.label,
    this.prefix,
    this.suffix,
    required this.valdiate,
    this.ispassword,
    this.suffixpressed,
    this.onsubmit,
    this.Svg,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: (value) {
        return onsubmit!(value);
      },
      controller: controller,
      obscureText: ispassword!,
      keyboardType: type,
      validator: (value) {
        return valdiate(value);
      },
      decoration: InputDecoration(
        labelText: label,

        // errorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(25.0),
        //   borderSide: BorderSide(color: Colors.redAccent, width: 5),
        // ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(25.0),
        //   borderSide: BorderSide(color: Colors.blueAccent, width: 5),
        // ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
        border: OutlineInputBorder(),
        // hintText: label,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: 58,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(prefix ?? null),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 1,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ),

        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixpressed!(),
                icon: Icon(suffix),
              )
            : null,
      ),
    );
  }
}

class SvgFormField extends StatelessWidget {
  TextEditingController controller;
  TextInputType type;
  String label;
  String? Svg;

  IconData? suffix;
  bool? ispassword;
  Function valdiate;
  Function? suffixpressed;
  Function? onsubmit;

  SvgFormField({
    this.Svg,
    required this.controller,
    required this.type,
    required this.label,
    this.suffix,
    required this.valdiate,
    this.ispassword,
    this.suffixpressed,
    this.onsubmit,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: (value) {
        return onsubmit!(value);
      },
      controller: controller,
      obscureText: ispassword!,
      keyboardType: type,
      validator: (value) {
        return valdiate(value);
      },
      decoration: InputDecoration(
        labelText: label,

        // errorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(25.0),
        //   borderSide: BorderSide(color: Colors.redAccent, width: 5),
        // ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(25.0),
        //   borderSide: BorderSide(color: Colors.blueAccent, width: 5),
        // ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
        border: OutlineInputBorder(),
        // hintText: label,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Svg ?? '',
                  width: 15,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 20,
                  width: 1,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ),

        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixpressed!(),
                icon: Icon(suffix),
              )
            : null,
      ),
    );
  }
}

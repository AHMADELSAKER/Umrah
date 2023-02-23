import 'package:umrah_app/layout/loginScreen.dart';
import 'package:umrah_app/shared/network/local/cache_helper.dart';
import 'package:flutter/cupertino.dart';

import 'components.dart';

void SignOut(context) {
  cachehelper.Removedata('token').then((value) {
    if (value) {
      navigatoandremove(context: context, widget: loginScreen());
    }
  });
}

void PrintFullText(String? text) {
  final pattern = RegExp('.{1,800}');
  pattern.allMatches(text!).forEach((match) {
    print(match.group(0));
  });
}

String? token = '';
double fontsize = 16;
Function? Media(context) {
  double Width = MediaQuery.of(context).size.width;
  double Height = MediaQuery.of(context).size.width;
// Media(this.Width,this.Height)
}


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umrah_app/layout/CompleteLoginScreen.dart';
import 'package:umrah_app/layout/VerficationForForgetPass.dart';
import 'package:umrah_app/layout/loginpassword.dart';

import 'package:umrah_app/layout/loginScreen.dart';
import 'package:umrah_app/shared/component/Constants.dart';
import 'package:umrah_app/shared/component/components.dart';
import 'package:umrah_app/shared/component/default_formfield.dart';

class forgettenPassword extends StatefulWidget {
  const forgettenPassword({
    Key? key,
  }) : super(key: key);

  @override
  State<forgettenPassword> createState() => forgettenPasswordState();
}

class forgettenPasswordState extends State<forgettenPassword> {
  var formkey = GlobalKey<FormState>();
  var emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formkey,
          child: Column(children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(
                height: Height / 4,
                width: Width / 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 10,
                      blurRadius: 25,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/images/lock.svg'),
                          // SvgPicture.asset('assets/images/back.svg',
                          // semanticsLabel: 'Acme Logo'),
                          SizedBox(
                            width: 15,
                          ),
                          Text('هل نسيت كلمة المرور ',
                              style: TextStyle(
                                  fontSize: fontsize,
                                  fontWeight: FontWeight.bold)),
                          Spacer(),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[200],
                            ),
                            child: Center(
                              child: IconButton(
                                color: Colors.grey[500],
                                onPressed: () {
                                  navigatoandremove(
                                      context: context,
                                      widget: completeLginScreen());
                                },
                                icon: Icon(
                                  Icons.close,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'ادخل بريدك الالكتروني و سوف نقوم بإرسال كود مكون من 5 ارقام لتعيين كلمة سر جديدة ',
                        style: TextStyle(
                            fontSize: fontsize, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Height / 3,
              ),
              Positioned(
                top: Height / 5,
                left: Width / 300,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ContForTFF(
                      widget: SvgFormField(
                          controller: emailcontroller,
                          type: TextInputType.emailAddress,
                          label: ' البريد الالكتروني',
                          Svg: 'assets/images/lock-2.svg',
                          valdiate: (String? value) {
                            if (value! == null) {
                              print('يرجى إدخال البريد الالكتروني ');
                            }
                          },
                          ispassword: false),
                      width: Width / 1.2,
                      height: Height),
                ),
              ),
            ]),
            SizedBox(
              height: Height / 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  ButtonContainer(
                      context: context,
                      NextScreen: verfiForForgetPassScreen(),
                      width: Width,
                      height: Height / 1.3,
                      text: 'ارسال')
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

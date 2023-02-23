import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umrah_app/layout/CompleteLoginScreen.dart';
import 'package:umrah_app/layout/loginpassword.dart';
// import '../../assets/images/firstScreen.dart';
import 'package:umrah_app/shared/component/Constants.dart';
import 'package:umrah_app/shared/component/components.dart';
import 'package:umrah_app/shared/component/default_formfield.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<loginScreen> createState() => loginScreenState();
}

class loginScreenState extends State<loginScreen> {
  var formkey = GlobalKey<FormState>();
  var emailcontroller = TextEditingController();
  var phonecontroller = TextEditingController();
  var passcontroller = TextEditingController();
  var namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                height: Height / 6.3,
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
                          SvgPicture.asset('assets/images/back.svg'),
                          // SvgPicture.asset('assets/images/back.svg',
                          // semanticsLabel: 'Acme Logo'),
                          SizedBox(
                            width: 15,
                          ),
                          Text('التسجيل ',
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
                                      context: context, widget: loginScreen());
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
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        ' أنشئ حسابك في اسم التطبيق',
                        style: TextStyle(
                            fontSize: fontsize, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Height / 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    ContForTFF(
                        widget: SvgFormField(
                            controller: namecontroller,
                            type: TextInputType.name,
                            label: 'الإسم',
                            Svg: 'assets/images/user-add-2.svg',
                            valdiate: (String? value) {
                              if (value == null) {
                                print('يرجى إدخال الاسم ');
                              }
                              return null;
                            },
                            ispassword: false),
                        width: Width,
                        height: Height),
                    SizedBox(
                      height: 15,
                    ),
                    ContForTFF(
                        widget: SvgFormField(
                            controller: emailcontroller,
                            type: TextInputType.emailAddress,
                            label: 'البريد الاإلكتروني',
                            Svg: 'assets/images/openmail.svg',
                            valdiate: (String? value) {
                              if (value! == null) {
                                print('يرجى إدخال البريد الإلكتروني');
                              }
                            },
                            ispassword: false),
                        width: Width,
                        height: Height),
                    SizedBox(
                      height: 15,
                    ),
                    ContForTFF(
                        widget: SvgFormField(
                            controller: phonecontroller,
                            type: TextInputType.phone,
                            label: 'رقم الجوال ',
                            Svg: 'assets/images/mobile-notch.svg',
                            valdiate: (String? value) {
                              if (value == null) {
                                print('يرجى إدخال رقم الهاتف ');
                              }
                              return null;
                            },
                            ispassword: false),
                        width: Width,
                        height: Height),
                    SizedBox(
                      height: 15,
                    ),
                    ContForTFF(
                        widget: SvgFormField(
                          controller: passcontroller,
                          type: TextInputType.visiblePassword,
                          label: 'كلمة المرور',
                          Svg: 'assets/images/lock.svg',
                          valdiate: (String? value) {
                            if (value! == null) {
                              print('يرجى إدخال كلمة المرور');
                            }
                          },
                          // suffix: Icons.remove_red_eye,
                          ispassword: false,
                        ),
                        width: Width,
                        height: Height),
                    SizedBox(
                      height: 29,
                    ),
                    Container(
                      width: Width / 0.9,
                      height: Height / 15,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 155, 157),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () {
                          navigatoandremove(
                              context: context, widget: completeLginScreen());
                        },
                        child: Text(
                          'التسجيل',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Center(
                  child: Text(
                    'بالضغط على زر التسجيل فأنت توافق على الشروط والأحكام وسياسية الخصوصية',
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

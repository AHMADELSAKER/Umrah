import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umrah_app/layout/VerficationForForgetPass.dart';
import 'package:umrah_app/layout/loginpassword.dart';
import 'package:umrah_app/layout/forgetenPassword.dart';
import 'package:umrah_app/layout/loginScreen.dart';
import 'package:umrah_app/layout/newPassword.dart';
import 'package:umrah_app/shared/component/Constants.dart';
import 'package:umrah_app/shared/component/components.dart';
import 'package:umrah_app/shared/component/default_formfield.dart';

class completeLginScreen extends StatefulWidget {
  const completeLginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<completeLginScreen> createState() => completeLginScreenState();
}

class completeLginScreenState extends State<completeLginScreen> {
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
                                      context: context,
                                      widget: loginPassword());
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
                        'اكمل حسابك',
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
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      ContForTFF(
                          widget: SvgFormField(
                              Svg: 'assets/images/user-add-2.svg',
                              controller: namecontroller,
                              type: TextInputType.name,
                              label: 'اسم العائلة',
                              valdiate: (String? value) {
                                if (value == null) {
                                  print(' يرجى إدخال الاسم العائلة');
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
                              label: ' النوع',
                              Svg: 'assets/images/gender.svg',
                              valdiate: (String? value) {
                                if (value! == null) {
                                  print('يرجى إدخال النوع ');
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
                              Svg: 'assets/images/map-marker-8.svg',
                              controller: phonecontroller,
                              type: TextInputType.phone,
                              label: ' البلد  ',
                              valdiate: (String? value) {
                                if (value == null) {
                                  print('يرجى إدخال البلد  ');
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
                            Svg: 'assets/images/calendar-minus.svg',
                            controller: passcontroller,
                            type: TextInputType.visiblePassword,
                            label: ' تاريخ الميلاد',

                            valdiate: (String? value) {
                              if (value! == null) {
                                print('يرجى إدخال تاريخ الميلاد');
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
                                context: context, widget: forgettenPassword());
                          },
                          child: Text(
                            'تأكيد',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

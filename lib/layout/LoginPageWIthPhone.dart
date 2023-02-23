import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umrah_app/layout/CompleteLoginScreen.dart';
import 'package:umrah_app/layout/loginpassword.dart';

import 'package:umrah_app/layout/loginScreen.dart';
import 'package:umrah_app/layout/onBoarding.dart';
import 'package:umrah_app/shared/component/Constants.dart';
import 'package:umrah_app/shared/component/components.dart';
import 'package:umrah_app/shared/component/default_formfield.dart';
import 'package:umrah_app/shared/network/style/Colors.dart';

class loginPageWithPhone extends StatefulWidget {
  @override
  State<loginPageWithPhone> createState() => _loginPageWithPhoneState();
}

class _loginPageWithPhoneState extends State<loginPageWithPhone>
    with SingleTickerProviderStateMixin {
  var formkey = GlobalKey<FormState>();
  TabController? _tabController;
  var phonecontroller = TextEditingController();
  var emailcontroller = TextEditingController();

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: SingleChildScrollView(
              child: Column(children: [
                Column(
                  children: [
                    Stack(clipBehavior: Clip.none, children: [
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
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
                                  Text('تسجيل الدخول',
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
                                          navigateTo(
                                              context: context,
                                              widget: loginScreen());
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
                          ],
                        ),
                      ),
                      Column(children: [
                        Container(
                          width: double.infinity,
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 60,
                                ),
                                Container(
                                  height: 45,
                                  color: Colors.grey[200],
                                  child: TabBar(
                                    controller: _tabController,
                                    indicator: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade400),
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.white,
                                    ),
                                    labelColor: Colors.white,
                                    unselectedLabelColor: Colors.black,
                                    tabs: [
                                      Tab(
                                        child: Text(
                                          'رقم الجوال',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: fontsize,
                                          ),
                                        ),
                                      ),
                                      Tab(
                                        child: Text(
                                          'البريد الإلكتروني',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: fontsize),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // tab bar view here
                                Expanded(
                                  child: TabBarView(
                                    controller: _tabController,
                                    children: [
                                      // first tab bar view widget
                                      Center(
                                        child: ContForTFF(
                                            widget: TextFormField(
                                              controller: phonecontroller,

                                              keyboardType: TextInputType.phone,
                                              // focusNode: controller.phoneFocusNode,
                                              decoration: InputDecoration(
                                                border:
                                                    const OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(10.0),
                                                  ),
                                                ),
                                                hintText: "   رقم الجوال",
                                                helperStyle: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: fontsize),
                                                prefixIcon: Container(
                                                  width: 58,
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Icon(
                                                        Icons.phone,
                                                        color: Colors.grey[500],
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Container(
                                                        width: 2,
                                                        height: 25,
                                                        color: Colors.grey[500],
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                suffixIcon: Directionality(
                                                  textDirection:
                                                      TextDirection.ltr,
                                                  child: CountryCodePicker(
                                                    onChanged:
                                                        (CountryCode ss) {
                                                      phonecontroller;
                                                    },
                                                    initialSelection: "+965",
                                                    showCountryOnly: true,
                                                    showOnlyCountryWhenClosed:
                                                        false,
                                                  ),
                                                ),
                                                fillColor: Colors.white70,
                                                alignLabelWithHint: false,
                                              ),
                                            ),
                                            width: Width,
                                            height: Height),
                                      ),

                                      // second tab bar view widget
                                      Center(
                                          child: ContForTFF(
                                              widget: DefaultFormField(
                                                  controller: emailcontroller,
                                                  type: TextInputType
                                                      .emailAddress,
                                                  label: 'البريد الاإلكتروني',
                                                  prefix: Icons.email,
                                                  valdiate: (String? value) {
                                                    if (value! == null) {
                                                      print(
                                                          'يرجى إدخال البريد الإلكتروني');
                                                    }
                                                  },
                                                  ispassword: false),
                                              width: Width,
                                              height: Height)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ]),
                  ],
                ),
                // SizedBox(
                //   height: Height / 20,
                // ),

                ButtonContainer(
                    context: context,
                    NextScreen: loginPassword(),
                    width: Width,
                    height: Height / 1.3,
                    text: 'دخول'),
                Padding(
                    padding: const EdgeInsets.only(left: 10, right: 120),
                    child: Row(children: [
                      Text(
                        'مستخدم جديد؟',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        child: Text(
                          'سجل الان',
                          style: TextStyle(color: Defaultcolor),
                        ),
                        onPressed: () {},
                      ),
                    ])),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

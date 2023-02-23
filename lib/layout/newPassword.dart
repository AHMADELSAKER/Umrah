import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umrah_app/layout/VerficationForForgetPass.dart';
import 'package:umrah_app/layout/loginpassword.dart';
// import '../../assets/images/firstScreen.dart';
import 'package:umrah_app/layout/forgetenPassword.dart';
import 'package:umrah_app/layout/loginScreen.dart';
import 'package:umrah_app/shared/component/Constants.dart';
import 'package:umrah_app/shared/component/components.dart';
import 'package:umrah_app/shared/component/default_formfield.dart';

class newPasswordScreen extends StatefulWidget {
  const newPasswordScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<newPasswordScreen> createState() => newPasswordScreenState();
}

class newPasswordScreenState extends State<newPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  var formkey = GlobalKey<FormState>();
  var repeatPasscontroller = TextEditingController();
  var passcontroller = TextEditingController();

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
                height: Height / 4.5,
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
                          Text('  كلمة السر الجديدة ',
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
                                      widget: verfiForForgetPassScreen());
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
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'قم بادخال كلمة مرور جديدة تستخدمها عند تسجيل الدخول في المرة القادمة ',
                        style: TextStyle(fontSize: fontsize),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Height / 20,
              ),
              Column(
                children: [
                  ContForTFF(
                      widget: SvgFormField(
                          controller: repeatPasscontroller,
                          type: TextInputType.name,
                          label: ' كلمة المرور',
                          Svg: 'assets/images/lock.svg',
                          valdiate: (String? value) {
                            if (value == null) {
                              print(' يرجى إدخال كلمة المرور');
                            }
                            return null;
                          },
                          ispassword: false),
                      width: Width / 1.25,
                      height: Height),
                  SizedBox(
                    height: 20,
                  ),
                  ContForTFF(
                      widget: SvgFormField(
                          controller: repeatPasscontroller,
                          type: TextInputType.name,
                          label: ' كلمة المرور',
                          Svg: 'assets/images/lock.svg',
                          valdiate: (String? value) {
                            if (value == null) {
                              print(' يرجى إدخال كلمة المرور');
                            }
                            return null;
                          },
                          ispassword: false),
                      width: Width / 1.25,
                      height: Height),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: Width / 1.2,
                    height: Height / 15,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 155, 157),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                insetPadding: EdgeInsets.symmetric(
                                    horizontal: Width / 30),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(32.0))),
                                alignment: Alignment.bottomCenter,
                                child: Stack(
                                  clipBehavior: Clip.none, children: <Widget>[
                                    Form(
                                      key: _formKey,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Center(
                                                child: Container(
                                              height: 10,
                                              width: 45,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[300],
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                            )),
                                          ),
                                          SizedBox(
                                            height: Height / 25,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadiusDirectional
                                                      .circular(50),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.cyan
                                                      .withOpacity(0.2),
                                                  spreadRadius: 15,
                                                  blurRadius: 25,
                                                  offset: Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: Icon(
                                              Icons.check_circle_outline,
                                              size: 80,
                                              color: Color.fromARGB(
                                                  255, 60, 187, 64),
                                            ),
                                          ),
                                          SizedBox(
                                            height: Height / 25,
                                          ),
                                          Text(
                                              'لقد تم اعادة تعيين كلمة السر بنجاح'),
                                          SizedBox(
                                            height: Height / 20,
                                            width: 350,
                                          ),
                                          Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 50,
                                                      vertical: 20),
                                              child: Container(
                                                  width: Width / 1.5,
                                                  height: Height / 15,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 0, 155, 157),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Center(
                                                      child: TextButton(
                                                    onPressed: (() =>
                                                        navigateTo(
                                                            context: context,
                                                            widget:
                                                                loginScreen())),
                                                    child: Text(
                                                        'العودة الى تسجيل الدخول ',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: fontsize,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        )),
                                                  ))))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Text(
                        'تعيين كلمة السر',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fontsize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}





// return new CustomAlertDialog(
//     content: new Container(
//         width: 260.0,
//         height: 230.0,
//         decoration: new BoxDecoration(
//         shape: BoxShape.rectangle,
//         color: const Color(0xFFFFFF),
//         borderRadius:
//             new BorderRadius.all(new Radius.circular(32.0)),
//         ),
//         child: new Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//             // dialog top
//             new Expanded(
//             child: new Row(
//                 children: <Widget>[
//                 new Container(
//                     // padding: new EdgeInsets.all(10.0),
//                     decoration: new BoxDecoration(
//                     color: Colors.white,
//                     ),
//                     child: new Text(
//                     'Rate',
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 18.0,
//                         fontFamily: 'helvetica_neue_light',
//                     ),
//                     textAlign: TextAlign.center,
//                     ),
//                 ),
//                 ],
//             ),
//             ),

//             // dialog centre
//             new Expanded(
//             child: new Container(
//                 child: new TextField(
//                 decoration: new InputDecoration(
//                 border: InputBorder.none,
//                 filled: false,
//                 contentPadding: new EdgeInsets.only(
//                     left: 10.0,
//                     top: 10.0,
//                     bottom: 10.0,
//                     right: 10.0),
//                 hintText: ' add review',
//                 hintStyle: new TextStyle(
//                     color: Colors.grey.shade500,
//                     fontSize: 12.0,
//                     fontFamily: 'helvetica_neue_light',
//                 ),
//                 ),
//             )),
//             flex: 2,
//             ),

//             // dialog bottom
//             new Expanded(
//             child: new Container(
//                 padding: new EdgeInsets.all(16.0),
//                 decoration: new BoxDecoration(
//                 color: const Color(0xFF33b17c),
//                 ),
//                 child: new Text(
//                 'Rate product',
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18.0,
//                     fontFamily: 'helvetica_neue_light',
//                 ),
//                 textAlign: TextAlign.center,
//                 ),
//             ),
//             ),
//         ],
//         ),
//     ),
//     );
// });
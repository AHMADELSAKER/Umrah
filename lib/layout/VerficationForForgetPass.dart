import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umrah_app/layout/loginpassword.dart';
import 'package:umrah_app/layout/forgetenPassword.dart';
import 'package:umrah_app/layout/loginScreen.dart';
import 'package:umrah_app/layout/newPassword.dart';
import 'package:umrah_app/shared/component/components.dart';
import 'package:umrah_app/shared/component/default_formfield.dart';
import 'package:umrah_app/shared/network/style/Colors.dart';

class verfiForForgetPassScreen extends StatefulWidget {
  const verfiForForgetPassScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<verfiForForgetPassScreen> createState() =>
      verfiForForgetPassScreenState();
}

class verfiForForgetPassScreenState extends State<verfiForForgetPassScreen> {
  var formkey = GlobalKey<FormState>();
  var n1 = TextEditingController();
  var n2 = TextEditingController();
  var n3 = TextEditingController();
  var n4 = TextEditingController();
  var n5 = TextEditingController();
  FocusNode focusNode = FocusNode();
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();
  FocusNode focusNode5 = FocusNode();

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
              Stack(children: [
                Container(
                  height: Height / 3,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 4,
                            blurRadius: 30,
                            color: Colors.grey.shade200,
                            offset: Offset(0, 3)),
                      ],
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, right: 10, left: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.lock),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              ' هل نسيت كلمة المرور؟ ',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
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
                                        widget: forgettenPassword());
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
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          child: Text(
                            'ادخل الكود المرسل الى البريد الخاص بك ',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: Height / 40,
                        ),
                        Container(
                          child: Image(
                              image: AssetImage('assets/images/Inbox.png')),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: Height / 3.3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 52),
                      child: Row(children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            height: Height / 17,
                            width: Width / 9,
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              focusNode: focusNode,
                              onChanged: (v) {
                                FocusScope.of(context).requestFocus(focusNode);
                                setState(() {
                                  focusNode.unfocus();
                                  focusNode1!.requestFocus();
                                });
                                print('11111111');
                              },
                              controller: n1,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            height: Height / 17,
                            width: Width / 9,
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              focusNode: focusNode1,
                              onChanged: (v) {
                                FocusScope.of(context).requestFocus(focusNode);
                                setState(() {
                                  focusNode1.unfocus();
                                  focusNode2!.requestFocus();
                                });
                                print('11111111');
                              },
                              controller: n2,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            height: Height / 17,
                            width: Width / 9,
                            child: TextField(
                              focusNode: focusNode2,
                              onChanged: (v) {
                                FocusScope.of(context).requestFocus(focusNode);
                                setState(() {
                                  focusNode2.unfocus();
                                  focusNode3!.requestFocus();
                                });
                                print('11111111');
                              },
                              controller: n3,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            height: Height / 17,
                            width: Width / 9,
                            child: TextFormField(
                              focusNode: focusNode3,
                              onChanged: (v) {
                                FocusScope.of(context).requestFocus(focusNode);
                                setState(() {
                                  focusNode3.unfocus();
                                  focusNode4!.requestFocus();
                                });
                              },
                              controller: n4,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            height: Height / 17,
                            width: Width / 9,
                            child: Center(
                              child: TextFormField(
                                focusNode: focusNode4,
                                onChanged: (v) {
                                  FocusScope.of(context)
                                      .requestFocus(focusNode);
                                  setState(() {
                                    focusNode4.unfocus();
                                    focusNode5!.requestFocus();
                                  });
                                  print('11111111');
                                },
                                controller: n5,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Width / 25),
                      child: Row(
                        children: [
                          Text('00:29'),
                          Spacer(),
                          Text(
                            'إعادة الارسال',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 15,
                                color: Defaultcolor),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ]),
              SizedBox(
                height: Height / 20,
              ),
              ButtonContainer(
                  context: context,
                  NextScreen: newPasswordScreen(),
                  width: Width,
                  height: Height / 1.7,
                  text: 'استمرار')
            ]),
          ),
        ),
      ),
    );
  }
}

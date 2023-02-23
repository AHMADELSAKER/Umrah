import 'package:flutter/material.dart';
import 'package:umrah_app/layout/CompleteLoginScreen.dart';
import 'package:umrah_app/layout/LoginPageWIthPhone.dart';
import 'package:umrah_app/layout/loginScreen.dart';
import 'package:umrah_app/shared/component/Constants.dart';
import 'package:umrah_app/shared/component/components.dart';
import 'package:umrah_app/shared/component/default_formfield.dart';
import 'package:flutter_svg/flutter_svg.dart';

class loginPassword extends StatelessWidget {
  const loginPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    var passcontroller = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formkey,
          child: Column(children: [
            Container(
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
              height: Height / 11,
              width: Width / 0.9,
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
                ],
              ),
            ),
            SizedBox(
              height: Height / 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                  color: Colors.white,
                  child: ContForTFF(
                      widget: DefaultFormField(
                        controller: passcontroller,
                        type: TextInputType.visiblePassword,
                        label: ' تاكيد كلمة المرور',
                        prefix: Icons.lock,
                        valdiate: (String? value) {
                          if (value! == null) {
                            print('يرجى إدخال كلمة المرور');
                          }
                        },
                        // suffix: Icons.remove_red_eye,
                        ispassword: false,
                      ),
                      width: Width,
                      height: Height)),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                ' نسيت كلمة المرور ؟',
                style: TextStyle(
                  fontSize: fontsize,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: Width / 0.9,
                height: Height / 15,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 155, 157),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {
                    navigateTo(context: context, widget: loginScreen());
                  },
                  child: Text(
                    'دخول',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

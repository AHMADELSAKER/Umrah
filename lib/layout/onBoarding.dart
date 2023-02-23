import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:umrah_app/layout/LoginPageWIthPhone.dart';
import 'package:umrah_app/layout/firstScreen.dart';
// import '../../assets/images/firstScreen.dart';
import 'package:umrah_app/layout/loginScreen.dart';
import 'package:umrah_app/shared/component/Constants.dart';

import '../shared/component/components.dart';

var boardcontroller = PageController();
bool islast = false;

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<boardingmodel> boarding = [
    boardingmodel(
        image: 'assets/images/onboard.png',
        title: ' اهلا وسهلا',
        body: 'مرحبا بكم '),
    boardingmodel(
        image: 'assets/images/onboard1.png',
        title: 'بسم الله الرحمن الرحيم',
        body: 'الحمدالله رب العالمين'),
    boardingmodel(
        image: 'assets/images/onboard2.png',
        title: 'السلام عليكم ',
        body: 'صل الله على سيدنا محمد ')
  ];
  // void submit() {
  //   print('onboardingscreeen');
  //   cachehelper.Savedata(key: 'onboarding', value: true).then((value) {
  //     if (value) {
  //       navigatoandremove(context: context, widget: Shoplogin());
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            // TextButton(
            //   child: Text(
            //     'SKIP',
            //   ),
            //   onPressed: () {
            //     // submit();
            //   },
            // ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: PageView.builder(
                  // physics: BouncingScrollPhysics(),
                  controller: boardcontroller,
                  itemBuilder: ((context, index) =>
                      buildboarding(boarding[index])),
                  itemCount: boarding.length,
                  onPageChanged: (int index) {
                    if (index == boarding.length - 1) {
                      print('last');
                      setState(() {
                        islast = true;
                      });
                    } else {
                      setState(() {
                        islast = false;
                      });
                      print('not last');
                    }
                  },
                ),
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: boardcontroller,
                  count: boarding.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 4,
                    dotWidth: 5,
                    offset: 19,
                    expansionFactor: 4,
                    activeDotColor: Color.fromARGB(255, 0, 155, 157),
                    dotColor: Color.fromARGB(255, 196, 228, 229),
                  ),
                ),
              ),
              SizedBox(
                height: Height / 15,
              ),
              ButtonContainer(
                  context: context,
                  NextScreen: firstScreen(),
                  width: Width,
                  height: Height,
                  text: "التالي"),
              Container(
                width: 500,
                child: ElevatedButton(
                  child: Text('تخطي '),
                  style: raisedButtonStyle1,
                  onPressed: () {
                    navigateTo(context: context, widget: loginPageWithPhone());
                  },
                ),
              ),
            ],
          ),
        ));
  }
}

Widget buildboarding(boardingmodel model) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image(
              image: AssetImage(
                model.image.toString(),
              ),
              fit: BoxFit.fitWidth,
            ),
          ),
          Center(
            child: Text(
              '${model.title.toString()}',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              '${model.body.toString()}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ]);

final ButtonStyle raisedButtonStyle1 = ElevatedButton.styleFrom(
  elevation: 0,
  onPrimary: Color.fromARGB(255, 0, 0, 0),
  primary: Colors.white,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

class boardingmodel {
  final String? image;
  final String? title;
  final String? body;
  boardingmodel({this.image, this.body, this.title});
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:umrah_app/layout/LoginPageWIthPhone.dart';
// import '../../assets/images/firstScreen.dart';
import 'package:umrah_app/layout/loginScreen.dart';
import 'package:umrah_app/layout/onBoarding.dart';
import 'package:umrah_app/shared/network/style/Colors.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:umrah_app/layout/loginScreen.dart';

import '../shared/component/components.dart';

class Test extends StatefulWidget {
  int selectedpage = 0;
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List menuList = [
    _MenuItem(Icons.verified_user, 'العمرة'),
    _MenuItem(Icons.autorenew, 'الحج'),
    _MenuItem(Icons.ac_unit, 'عمرة البدل'),
    _MenuItem(Icons.center_focus_strong, 'حج البدل'),
    _MenuItem(Icons.question_answer, 'الفنادق'),
    _MenuItem(Icons.phone, 'النقل'),
    _MenuItem(Icons.phone, 'الخدمات الأرضية'),
    _MenuItem(Icons.phone, 'التأشيرة'),
    _MenuItem(Icons.phone, 'التأمين'),
    _MenuItem(Icons.phone, 'عقيقة_قربان'),
    _MenuItem(Icons.phone, 'التبرع'),
    _MenuItem(Icons.phone, 'الحجوزات'),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(Height.toString()),
        ),
        backgroundColor: Colors.grey[500],
        bottomNavigationBar: Container(
          height: 80,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(250),
              topRight: Radius.circular(250),
            ),
          ),
          child: MoltenBottomNavigationBar(
            barHeight: 40,
            domeHeight: 40,
            domeWidth: 200,
            domeCircleSize: 50,
            borderRaduis: BorderRadius.only(
              topLeft: Radius.circular(190),
              topRight: Radius.circular(150),
            ),
            domeCircleColor: Colors.white,
            selectedIndex: selectedIndex,
            onTabChange: (clickedIndex) {
              setState(() {
                selectedIndex = clickedIndex;
              });
            },
            tabs: [
              MoltenTab(
                  icon: Icon(Icons.search),
                  selectedColor: Defaultcolor,
                  title: Text('data')),
              MoltenTab(
                icon: Icon(Icons.home),
                selectedColor: Defaultcolor,
                title: Text('data'),
              ),
              MoltenTab(
                icon: Icon(Icons.person),
                title: Text('data'),
                selectedColor: Defaultcolor,
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            height: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: boardcontroller,
                    itemBuilder: ((context, index) => Container(
                          decoration: BoxDecoration(
                            color: Colors.cyan[100],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text('الخدمات'),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.cyan[100],
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  height: 300,
                                  width: double.infinity,
                                  child: GridView.builder(
                                    padding: EdgeInsets.all(0),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 4),
                                    itemBuilder: (context, position) {
                                      return GestureDetector(
                                          onTap: () {},
                                          child: Center(
                                            child: Column(
                                              children: [
                                                Center(
                                                  child: Container(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              2.0),
                                                      child: Icon(
                                                        menuList[position].icon,
                                                        size: 28,
                                                        color: Defaultcolor,
                                                      ),
                                                    ),
                                                    width: 55,
                                                    height: 55,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors
                                                              .grey.shade400),
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 20,
                                                  width: 100,
                                                  padding: EdgeInsets.all(0),
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Text(
                                                    menuList[position].title,
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        TextStyle(fontSize: 14),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ));
                                    },
                                    itemCount: menuList.length,
                                  ),
                                ),
                              ]),
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: SmoothPageIndicator(
                    controller: boardcontroller,
                    count: 2,
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
              ],
            ),
          ),
        ));
  }
}

class _MenuItem {
  final IconData icon;
  final String title;

  _MenuItem(this.icon, this.title);
}


// bottomNavigationBar: Container(
//       height: 80,
//       decoration: BoxDecoration(
//         color: Color.fromARGB(255, 255, 255, 255),
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(250),
//           topRight: Radius.circular(250),
//         ),
//       ),
//       child: MoltenBottomNavigationBar(
//         barHeight: 40,
//         domeHeight: 40,
//         domeWidth: 200,
//         domeCircleSize: 30,
//         borderRaduis: BorderRadius.only(
//           topLeft: Radius.circular(190),
//           topRight: Radius.circular(150),
//         ),
//         domeCircleColor: Colors.white,
//         selectedIndex: selectedIndex,
//         onTabChange: (clickedIndex) {
//           setState(() {
//             selectedIndex = clickedIndex;
//           });
//         },
//         tabs: [
//           MoltenTab(
//               icon: Icon(Icons.view_cozy_rounded),
//               selectedColor: Defaultcolor,
//               title: Text('data')),
//           MoltenTab(
//               icon: Icon(Icons.search),
//               selectedColor: Defaultcolor,
//               title: Text('data')),
//           MoltenTab(
//               icon: Icon(Icons.search),
//               selectedColor: Defaultcolor,
//               title: Text('data')),
//           MoltenTab(
//             icon: Icon(Icons.home),
//             selectedColor: Defaultcolor,
//             title: Text('data'),
//           ),
//           MoltenTab(
//             icon: Icon(Icons.storefront_outlined),
//             selectedColor: Defaultcolor,
//             title: Text('data'),
//           ),
//         ],
//       ),
//     ),

// ConvexAppBar _convexAppBar() {

//     return ConvexAppBar.badge(
//       _badges ? listOfBadges : {},
//       style: _tabstyle,
//       height: _height,
//       top: _top,
//       curveSize: _curveSize,
//       items: _fiveItems ? _fiveTabItems : _threeTabItems,
//       initialActiveIndex: _fiveItems ? 2 : 1,
//       onTap: (int i) {
//         setState(() {
//           _tabbedTab =
//               (_fiveItems ? _fiveTabItems[i].title! : _threeTabItems[i].title!);
//           _showButtonPressDialog(context, _tabbedTab);
//         });
//       },
//       gradient: LinearGradient(
//         begin: Alignment.topLeft,
//         end: Alignment.bottomRight,
//         colors: _rainbowGradient
//             ? [
//                 Color(0xFF9400D3),
//                 Color(0xFF4B0082),
//                 Color(0xFF0000FF),
//                 Color(0xFF00FF00),
//                 Color(0xFFFFFF00),
//                 Color(0xFFFF7F00),
//                 Color(0xFFFF0000)
//               ]
//             : [Color(0xFF0763e5), Color(0xFF0993f3)],
//       ),
//     );
//   }

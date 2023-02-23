import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:umrah_app/layout/LoginPageWIthPhone.dart';
import 'package:umrah_app/layout/TestScreen.dart';
import 'package:umrah_app/layout/loginScreen.dart';
import 'package:umrah_app/shared/component/Constants.dart';
import 'package:umrah_app/shared/component/components.dart';
import 'package:umrah_app/shared/component/default_formfield.dart';
import 'package:umrah_app/shared/network/style/Colors.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

int selectedIndex = 0;

class firstScreen extends StatefulWidget {
  @override
  State<firstScreen> createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  var boardcontroller = PageController();
  List menuList = [
    _MenuItem('assets/images/omrah.png', 'العمرة'),
    _MenuItem('assets/images/kaaba.png', 'الحج'),
    _MenuItem('assets/images/umrah.png', 'عمرة البدل'),
    _MenuItem('assets/images/Group 58885.png', 'حج البدل'),
    _MenuItem('assets/images/hotel-3.png', 'الفنادق'),
    _MenuItem('assets/images/vehicles.png', 'النقل'),
    _MenuItem('assets/images/hajj-3.png', 'الخدمات الأرضية'),
    _MenuItem('assets/images/passport-2.png', 'التأشيرة'),
    _MenuItem('assets/images/insurance.png', 'التأمين'),
    _MenuItem('assets/images/goat.png', 'عقيقة_قربان'),
    _MenuItem('assets/images/donation-2.png', 'التبرع'),
    _MenuItem('assets/images/tickets.png', 'الحجوزات'),
  ];

  List<dynamic> prayTime = [
    PrayItem('5:00', 'الفجر'),
    PrayItem('5:00', 'الضهر'),
    PrayItem('5:00', 'العصر'),
    PrayItem('5:00', 'المغرب'),
    PrayItem('5:00', 'العشاء'),
  ];
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFAFAFA),
        body: Stack(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: Height / 2.9,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/backround.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                      // color: Defaultcolor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      )),
                  child: Stack(clipBehavior: Clip.none, children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white30),
                                  child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      navigateTo(
                                          context: context,
                                          widget: loginPageWithPhone());
                                    },
                                    icon: Icon(
                                      Icons.notifications,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white30,
                                ),
                                child: IconButton(
                                  color: Colors.white,
                                  onPressed: () {},
                                  icon: SvgPicture.asset(
                                    'assets/images/1.svg',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Column(
                            children: [
                              SvgPicture.asset('assets/images/mosqu.svg'),
                              Text(
                                'الصلاة القادمة',
                                style: TextStyle(color: Colors.grey.shade400),
                              ),
                              Text(
                                '5:05 AM',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'صلاة العصر',
                                style: TextStyle(color: Colors.grey.shade400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      left: Width / 12,
                      top: Height / 4,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        height: Height / 6.4,
                        width: Width / 1.19,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 4,
                            left: 4,
                            right: 4,
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('مواقيت الصلاة'),
                                      Spacer(),
                                      Text('5:30 توقيت مكة'),
                                    ],
                                  ),
                                ),
                                // pray time and
                                Expanded(
                                  child: Container(
                                    child: GridView.builder(
                                      padding: EdgeInsets.all(0),
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 5),
                                      itemBuilder: (context, position) {
                                        return Center(
                                          child: Column(
                                            children: [
                                              Center(
                                                child: Container(
                                                  child: Center(
                                                    child: Text(
                                                      prayTime[position].time,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                  width: 35,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF69D5E3),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                  prayTime[position].title,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                      itemCount: prayTime.length,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    )
                  ]),
                ),
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    height: Height / 2.1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: PageView.builder(
                            controller: boardcontroller,
                            itemBuilder: ((context, index) => Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 15.0),
                                          child: Text('الخدمات'),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                255, 230, 243, 244),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          height: Height / 2.5,
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
                                                                    const EdgeInsets
                                                                            .all(
                                                                        2.0),
                                                                child: Image.asset(
                                                                    menuList[
                                                                            position]
                                                                        .image!)),
                                                            width: 55,
                                                            height: 55,
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border.all(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          230,
                                                                          244,
                                                                          244),
                                                                  width: 3),
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      255),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 30,
                                                          width: 100,
                                                          padding:
                                                              EdgeInsets.all(0),
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Text(
                                                            menuList[position]
                                                                .title,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                fontSize: 14),
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
                              dotHeight: 8,
                              dotWidth: 4,
                              offset: 20,
                              expansionFactor: 4,
                              activeDotColor: Color.fromARGB(255, 0, 155, 157),
                              dotColor: Color.fromARGB(255, 196, 228, 229),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
        bottomNavigationBar: Container(
          height: 63,
          child: MoltenBottomNavigationBar(
            barHeight: 65,
            domeHeight: 10,
            domeWidth: 0,
            domeCircleSize: 50,
            margin: EdgeInsets.only(bottom: 0, top: 0),
            borderRaduis: BorderRadius.only(
              topLeft: Radius.circular(45),
              topRight: Radius.circular(45),
            ),
            domeCircleColor: Colors.white,
            selectedIndex: selectedIndex,
            onTabChange: (clickedIndex) {
              setState(() {
                selectedIndex = clickedIndex;
                print(clickedIndex);
              });
            },
            tabs: [
              MoltenTab(
                icon: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (selectedIndex == 0)
                        SvgPicture.asset(
                          'assets/images/1.svg',
                          color: Defaultcolor,
                        ),
                      if (selectedIndex != 0)
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/images/1.svg',
                            ),
                            Text('المزيد',
                                style: TextStyle(
                                    color: Colors.grey[400], fontSize: 14))
                          ],
                        )
                    ]),
                title: selectedIndex == 0
                    ? Column(children: [
                        SizedBox(
                          height: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(4)),
                            width: 25,
                            height: 7,
                          ),
                        ),
                      ])
                    : Container(),
                selectedColor: Defaultcolor,
              ),
              MoltenTab(
                icon: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (selectedIndex == 1)
                        SvgPicture.asset(
                          'assets/images/i2.svg',
                          color: Defaultcolor,
                        ),
                      if (selectedIndex != 1)
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/images/i2.svg',
                            ),
                            Text('الذكر ',
                                style: TextStyle(
                                    color: Colors.grey[400], fontSize: 14))
                          ],
                        )
                    ]),
                title: selectedIndex == 1
                    ? Column(children: [
                        SizedBox(
                          height: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(4)),
                            width: 25,
                            height: 7,
                          ),
                        ),
                      ])
                    : Container(),
                selectedColor: Defaultcolor,
              ),
              MoltenTab(
                icon: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (selectedIndex == 2) Icon(Icons.home_filled),
                      if (selectedIndex != 2)
                        Column(
                          children: [
                            Icon(Icons.home_filled),
                            Text('القائمة',
                                style: TextStyle(
                                    color: Colors.grey[400], fontSize: 14))
                          ],
                        )
                    ]),
                title: selectedIndex == 2
                    ? Column(children: [
                        SizedBox(
                          height: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(4)),
                            width: 25,
                            height: 7,
                          ),
                        ),
                      ])
                    : Container(),
                selectedColor: Defaultcolor,
              ),
              MoltenTab(
                icon: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (selectedIndex == 3)
                        SvgPicture.asset(
                          'assets/images/6.svg',
                          color: Defaultcolor,
                        ),
                      if (selectedIndex != 3)
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/images/6.svg',
                              width: 26,
                            ),
                            Text('الرحلات',
                                style: TextStyle(
                                    color: Colors.grey[400], fontSize: 14))
                          ],
                        )
                    ]),
                title: selectedIndex == 3
                    ? Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(4)),
                            width: 25,
                            height: 7,
                          ),
                        ),
                      ])
                    : Container(),
                selectedColor: Defaultcolor,
              ),
              MoltenTab(
                icon: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (selectedIndex == 4)
                        SvgPicture.asset(
                          'assets/images/Layer 2.svg',
                          color: Defaultcolor,
                        ),
                      if (selectedIndex != 4)
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/images/Layer 2.svg',
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text('المتجر',
                                style: TextStyle(
                                    color: Colors.grey[400], fontSize: 14))
                          ],
                        )
                    ]),
                title: selectedIndex == 4
                    ? Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(4)),
                            width: 25,
                            height: 7,
                          ),
                        ),
                      ])
                    : Container(),
                selectedColor: Defaultcolor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuItem {
  final String? image;
  final String title;

  _MenuItem(
    this.image,
    this.title,
  );
}

class PrayItem {
  final String time;
  final String title;

  PrayItem(
    this.time,
    this.title,
  );
}

Widget? MlotenICon({String? Svg, String? text}) {
  Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
    if (selectedIndex == 2)
      SvgPicture.asset(
        Svg!,
        color: Defaultcolor,
      ),
    if (selectedIndex != 2)
      Column(
        children: [
          SvgPicture.asset(
            Svg!,
          ),
          Text('القائمة',
              style: TextStyle(color: Colors.grey[400], fontSize: 14))
        ],
      )
  ]);
}

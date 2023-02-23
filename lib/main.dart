import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:umrah_app/layout/LoginPageWIthPhone.dart';
import 'package:umrah_app/layout/loginScreen.dart';
import 'package:umrah_app/layout/onBoarding.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_language_fonts/google_language_fonts.dart';

// flutter build apk --release

void main(context) {
  runApp(new MaterialApp(
      theme: ThemeData(
          fontFamily: 'Cairo',
          // textTheme: CyrillicFonts.robotoCondensedTextTheme(
          //   Theme.of(context).textTheme,
          // ),
          appBarTheme: AppBarTheme(
            backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                statusBarIconBrightness: Brightness.dark),
          )),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'),
        // Locale('en'), // English
      ],
      home: new MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image(
        image: AssetImage('assets/images/Logo.png'),
        fit: BoxFit.fill,
      ),
      backgroundImage: AssetImage('assets/images/1.png'),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loaderColor: Colors.yellow,
      navigator: OnBoardingScreen(),
      durationInSeconds: 5,
    );
  }
}
  // Widget build(BuildContext context) {
  //      Locale? myLocale ;
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     debugShowCheckedModeBanner: false,
  //      localeResolutionCallback: (deviceLocale, supportedLocales) {
  //     myLocale = deviceLocale ; // here you make your app language similar to device language , but you should check whether the localization is supported by your app

  //     },
  //     localizationsDelegates: [

  //       GlobalMaterialLocalizations.delegate,
  //       GlobalWidgetsLocalizations.delegate,
  //     ],
  //     supportedLocales: [
  //       Locale('es' 'ES'),
  //     ],
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     home: OnBoardingScreen(),
  //   );
  // }




//  MaterialApp(
//       title: 'Title',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: loginScreen(),
//       localeResolutionCallback: (deviceLocale, supportedLocales) {
//         myLocale =
//             deviceLocale!; // here you make your app language similar to device language , but you should check whether the localization is supported by your app
//         print(myLocale.countryCode);
//         print(myLocale.languageCode);
//       },
//       localizationsDelegates!: [
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//       ],
      
//       supportedLocales: [
//         Locale('es' 'ES'),
//       ],
//     );
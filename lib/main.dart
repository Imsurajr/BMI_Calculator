import 'package:flutter/material.dart';
 // import 'color_define.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // defining a new theme
      // MaterialApp(
      //   title: appName,
      //   theme: ThemeData(
      //     // Define the default brightness and colors.
      //     brightness: Brightness.dark,
      //     primaryColor: Colors.lightBlue[800],
      //
      //     // Define the default font family.
      //     fontFamily: 'Georgia',
      //
      //     // Define the default `TextTheme`. Use this to specify the default
      //     // text styling for headlines, titles, bodies of text, and more.
      //     textTheme: const TextTheme(
      //       headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      //       headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      //       bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      //     ),
      //   ),
      //   home: const MyHomePage(
      //     title: appName,
      //   ),
      // // );

      // theme: ThemeData(
      //   // format - #090C22 write this as 0xFF #090C22
      //   // primaryColor: Color(0xFF090C22),
      //   scaffoldBackgroundColor: Color(0xFF090C22),
      //   accentColor: Colors.purple,
      //   textTheme: TextTheme(
      //     bodyText2: TextStyle(
      //       color: Colors.cyan,
      //     ),
      //   ),
      //   // iska notes lena ye hat gya hai
      //   // 23 jan 12 39 photo
      // ),
      // upr wale ki jgh niche wala likhna>

      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF090C22),
        // iska notes lena ye hat gya hai
        // 23 jan 12 39 photo
       ),

      //in case krna hi hai primary se to erse krna vrna define isko akele akele k liye
      // theme: ThemeData(primarySwatch: Palette.customColor,
      // backgroundColor: Palette.customColor,
      // ),
      home: InputPage(),
    );
  }
}



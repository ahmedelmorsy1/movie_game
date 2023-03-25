
// import 'package:shared_preferences/shared_preferences.dart';

// class DarkThemePref {
//   static const THEME_STATUS = "THEMESTATUS";

//   setDarkTheme(bool value) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setBool(THEME_STATUS, value);
//   }

//   Future<Object> getTheme() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs.get(THEME_STATUS) ?? true;
//   }
//   // Future<bool> getTheme() async {
//   //   SharedPreferences prefs = await SharedPreferences.getInstance();
//   //   return prefs.get(THEME_STATUS) ?? true;
//   // }
// }




///////////////////////dark theme
///
// final ThemeData darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     primaryColor: Colors.black,
//     primarySwatch:Colors.yellow,
//     textTheme:  const TextTheme(
//       displayLarge: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
//       displayMedium: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
//       bodySmall: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),
//     ).apply(
//       bodyColor: Colors.black54,
//       displayColor: Colors.white,
//     ),
    
//     iconTheme: const IconThemeData(color: Colors.white),
//     buttonTheme: const ButtonThemeData(
//       buttonColor: Colors.white,
//       disabledColor: Colors.grey,
//     ));

// var lightTheme = ThemeData(
//     brightness: Brightness.light,
//     primaryColor: Colors.white,
//     // primarySwatch:Colors.lime,
//     colorScheme: ColorScheme.fromSwatch().copyWith(
//       primary:  Colors.white,
//       secondary: Colors.green,
//     ),
//     textTheme:  const TextTheme(
//       displayLarge: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),
//       displayMedium: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),
//       bodySmall: TextStyle(color: Colors.black54,fontSize: 14,fontWeight: FontWeight.bold),
//     ).apply(
//       bodyColor: Colors.white,
//       displayColor: Colors.black54, ),
//       iconTheme: const IconThemeData(color: Colors.black),
//     buttonTheme: const ButtonThemeData(
//       buttonColor: Colors.white,
//       disabledColor: Colors.grey,
//     ));


import 'package:movie_game/barallel_file.dart';

ThemeData appTheme(){
  return ThemeData(
    primaryColor:AppColors.primary,
    hintColor:AppColors.hint,
    brightness:Brightness.light,
    scaffoldBackgroundColor: const Color.fromARGB(255, 35, 65, 111),
    fontFamily: AppStrings.fontFamily,
    appBarTheme: const AppBarTheme(centerTitle: true,
    color: Color.fromARGB(255, 3, 39, 57),
    elevation: 1.0,
      titleTextStyle: TextStyle(
        color:Colors.white,fontSize:20,
        fontWeight: FontWeight.w500,
     ),),
    textTheme:   const TextTheme(
      bodyMedium: TextStyle(
            height:1.5,
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
      labelLarge: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      )
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.black,
      disabledColor: Colors.grey[400],
    ),
  );
}
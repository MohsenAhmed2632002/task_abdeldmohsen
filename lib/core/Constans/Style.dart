import 'package:flutter/material.dart';
import 'package:task_abdeldmohsen/core/Constans/Font.dart';
import 'package:task_abdeldmohsen/core/Constans/color_schemes.g.dart';

ThemeData getAppTheme() {
  return ThemeData(
    // darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),

    //////////////////
    useMaterial3: true, colorScheme: lightColorScheme,

    ////////////////
    cardTheme: CardTheme(
      color: lightColorScheme.onPrimary,
      elevation: Fontsize.s8,
    ),
/////////////////
    appBarTheme: AppBarTheme(
      color: lightColorScheme.primary,
      elevation: Fontsize.s22,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: getBoldTextStyle(
        color: lightColorScheme.onPrimary,
      ),
    ),
    ////////////////////
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegulerTextStyle(
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
      ),
    ),
    ////////////////////
    textTheme: TextTheme(
        titleMedium: getMediumTextStyle(
          color: Colors.grey,
        ),
        displayLarge: getBoldTextStyle(
          color: Colors.grey,
        )),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(
        12,
      ),
      hintStyle: getRegulerTextStyle(
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      labelStyle: getRegulerTextStyle(
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      errorStyle: getMediumTextStyle(
        color: Colors.red,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(),
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(),
        borderRadius: BorderRadius.circular(
          0,
        ),
      ),
    ),
  );
}

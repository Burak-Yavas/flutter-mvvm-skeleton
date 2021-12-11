import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../constants/app/app_constants.dart';
import 'dark/dark_theme_interface.dart';
import 'app_theme.dart';

class AppThemeDark extends AppTheme with IDarkTheme {
  static AppThemeDark? _instance;
  static AppThemeDark get instance {
    return _instance ??= AppThemeDark._init();
  }

  AppThemeDark._init();

  @override
  ThemeData get theme => ThemeData(
        fontFamily: ApplicationConstants.FONT_FAMILY,
        colorScheme: _appColorScheme,
        textTheme: textTheme(),
        appBarTheme: ThemeData.dark().appBarTheme.copyWith(
            color: Colors.transparent,
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.black87, size: 21),
            systemOverlayStyle: SystemUiOverlayStyle.dark),
        inputDecorationTheme: const InputDecorationTheme(
            focusColor: Colors.black12,
            labelStyle: TextStyle(),
            fillColor: Colors.white,
            contentPadding: EdgeInsets.zero,
            filled: true,
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(width: 0.3)),
            // border: OutlineInputBorder(borderSide: BorderSide(width: 0.3)),
            focusedBorder: OutlineInputBorder()),
        scaffoldBackgroundColor: const Color(0xfff1f3f8),
        floatingActionButtonTheme:
            ThemeData.dark().floatingActionButtonTheme.copyWith(),
        buttonTheme: ThemeData.dark().buttonTheme.copyWith(
              colorScheme: const ColorScheme.dark(
                onError: Color(0xffFF2D55),
              ),
            ),
        tabBarTheme: tabBarTheme,
      );

  TabBarTheme get tabBarTheme {
    return TabBarTheme(
      labelPadding: insets.lowPaddingAll,
      labelColor: _appColorScheme.onSecondary,
      labelStyle: textThemeDark!.headline6,
      unselectedLabelColor: _appColorScheme.onSecondary.withOpacity(0.2),
      // unselectedLabelStyle: textThemedark.headline4.copyWith(color: colorSchemedark.red),
    );
  }

  TextTheme textTheme() {
    return ThemeData.dark().textTheme.copyWith(
        headline1: textThemeDark!.headline1,
        headline2: textThemeDark!.headline2,
        overline: textThemeDark!.headline3);
  }

  ColorScheme get _appColorScheme {
    return ColorScheme(
        primary: colorSchemeDark!.black,
        primaryVariant: Colors.white, //xx
        secondary: Colors.green,
        secondaryVariant: Colors.yellow,
        surface: Colors.blue, //xx
        background: const Color(0xfff6f9fc), //xx
        error: Colors.red[900]!,
        onPrimary: Colors.greenAccent,
        onSecondary: Colors.black, //x
        onSurface: Colors.purple.shade300,
        onBackground: Colors.black12,
        onError: const Color(0xFFF9B916), //xx
        brightness: Brightness.dark);
  }
}

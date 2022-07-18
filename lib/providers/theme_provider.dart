import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../widgets/style.dart';

class ThemeProvider with ChangeNotifier {
  final Color _primary = const Color(0xFF6360FF);

  final Color _base1 = const Color(0xFFFCFCFF);

  final Color _surface = const Color(0xFFFF8181);

  final Color _txtGray = const Color(0xFF91919F);

  bool isDark = false;
  //-----------------------------text style-----

  TextTheme myBaseTextTheme = TextTheme(
    headline1: myHeadline1,
    headline2: myHeadline2,
    subtitle1: mySubtitle1,
    subtitle2: mySubtitle2,
    bodyText1: myBodytext1,
    bodyText2: myBodytext2,
    caption: myCaption,
    button: myButton,
  );
  ThemeData get _themeDataLight {
    /// Create a TextTheme and ColorScheme, that we can use to generate ThemeData
    ColorScheme colorScheme = ColorScheme(
        // Decide how you want to apply your own custom them, to the MaterialApp
        brightness: isDark ? Brightness.dark : Brightness.light,
        primary: _primary,
        secondary: const Color(0xFFF1F1FA),
        background: _base1,
        surface: _surface,
        primaryContainer: const Color(0xFFFFECDC),
        tertiaryContainer: const Color(0xFFE9E3F6),
        onBackground: Colors.black,
        onSurface: Colors.black,
        onError: Colors.black,
        onPrimary: Colors.white,
        onSecondary: _txtGray,
        error: const Color(0xFF212325));

    /// Now that we have ColorScheme and TextTheme, we can create the ThemeData
    var t = ThemeData.from(textTheme: myBaseTextTheme, colorScheme: colorScheme)
        .copyWith(scaffoldBackgroundColor: _primary, dividerColor: _txtGray);

    /// Return the themeData which MaterialApp can now use
    return t;
  }

  ThemeData get _themeDataDark {
    /// Create a TextTheme and ColorScheme, that we can use to generate ThemeData
    TextTheme txtTheme = (isDark ? ThemeData.dark() : ThemeData.light()).textTheme;
    ColorScheme colorScheme = ColorScheme(
        // Decide how you want to apply your own custom them, to the MaterialApp
        brightness: isDark ? Brightness.dark : Brightness.light,
        primary: const Color(0xFF212325),
        secondary: const Color(0xFF212325),
        background: const Color(0xFF161719),
        surface: _surface,
        onBackground: Colors.white,
        onSurface: Colors.black,
        onError: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        error: Colors.red.shade400);

    /// Now that we have ColorScheme and TextTheme, we can create the ThemeData
    var t = ThemeData.from(textTheme: txtTheme, colorScheme: colorScheme).copyWith(
      scaffoldBackgroundColor: const Color(0xFF212325),
    );

    /// Return the themeData which MaterialApp can now use
    return t;
  }

  ThemeData get themeData {
    return isDark ? _themeDataDark : _themeDataLight;
  }

  void switchMode() {
    isDark = !isDark;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:gc_clone/Views/HomeView/home_view.dart';
import 'package:gc_clone/constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
      theme: ThemeData(
        listTileTheme: ListTileThemeData(
          textColor: Colors.grey,
          iconColor: Colors.white,
          titleTextStyle: GoogleFonts.poppins(
            textStyle: const TextStyle(fontSize: 15),
          ),
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: kPrimaryColor,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: kPrimaryColor,
        ),
        drawerTheme: const DrawerThemeData(backgroundColor: kPrimaryColor),
        scaffoldBackgroundColor: kPrimaryColor,
        appBarTheme: const AppBarTheme(
          color: kPrimaryColor,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        textTheme: GoogleFonts.poppinsTextTheme().apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      themeMode: ThemeMode.dark,
    );
  }
}

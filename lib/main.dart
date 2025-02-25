import 'package:flutter/material.dart';
import 'package:providerpractice/provider/count_providor.dart';
import 'package:providerpractice/provider/example_one_providor.dart';
import 'package:providerpractice/provider/favourite_provider.dart';
import 'package:providerpractice/provider/theme_provider.dart';
// import 'package:providerpractice/homescreen.dart';
import 'package:providerpractice/screens/countexample.dart';
import 'package:provider/provider.dart';
import 'package:providerpractice/screens/dark_theme.dart';
import 'package:providerpractice/screens/example_one.dart';
import 'package:providerpractice/screens/favourite_screen.dart';
import 'package:providerpractice/screens/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CountProvidor(),
        ),
        ChangeNotifierProvider(
          create: (_) => ExampleOneProvidor(),
        ),
        ChangeNotifierProvider(
          create: (_) => FavouriteItem(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeChanger(),
        ),
      ],
      child: Builder(builder: (BuildContext context) {
        final themeChanger = Provider.of<ThemeChanger>(context);
        return MaterialApp(
          title: 'Flutter Demo',
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.blue,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark   
          ),
          home: const Loginscreen(),
        );
      }),
    );
  }
}

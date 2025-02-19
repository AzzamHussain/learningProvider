import 'package:flutter/material.dart';
import 'package:providerpractice/provider/count_providor.dart';
import 'package:providerpractice/provider/example_one_providor.dart';
// import 'package:providerpractice/homescreen.dart';
import 'package:providerpractice/screens/countexample.dart';
import 'package:provider/provider.dart';
import 'package:providerpractice/screens/example_one.dart';

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
        ChangeNotifierProvider(create: (_) => CountProvidor(),),
                ChangeNotifierProvider(create: (_) => ExampleOneProvidor(),),

      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: const ExampleOne(),
      ),
    );
  }
}

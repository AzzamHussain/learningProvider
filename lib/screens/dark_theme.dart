import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Make sure you import provider
import 'package:providerpractice/provider/theme_provider.dart';

class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({super.key});

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context,listen: false); 

    return Scaffold(
      appBar: AppBar(
        title: Text("Implementing Theme"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text("Light mode"),
            value: ThemeMode.light,
            groupValue: themeChanger.themeMode, 
            onChanged: themeChanger.setTheme, 
          ),
              RadioListTile<ThemeMode>(
            title: Text("Dark mode"),
            value: ThemeMode.dark,
            groupValue: themeChanger.themeMode, 
            onChanged:  themeChanger.setTheme, 
          ),
              RadioListTile<ThemeMode>(
            title: Text("System mode"),
            value: ThemeMode.system,
            groupValue: themeChanger.themeMode, 
            onChanged:  themeChanger.setTheme, 
          ),
        ],
      ),
    );
  }
}

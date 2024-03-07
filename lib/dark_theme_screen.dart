import 'package:dark_and_light_mode_provider/provider/theme_chnager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({Key? key}) : super(key: key);

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text('Light Theme'),
            value: ThemeMode.light,
            groupValue: themeChanger.themeMode,
            onChanged: (ThemeMode? value) {
              themeChanger.setTheme(value!);
            },
          ),
          RadioListTile<ThemeMode>(
            title: Text('Dark Theme'),
            value: ThemeMode.dark,
            groupValue: themeChanger.themeMode,
            onChanged: (ThemeMode? value) {
              themeChanger.setTheme(value!);
            },
          ),
          RadioListTile<ThemeMode>(
            title: Text('System Theme'),
            value: ThemeMode.system,
            groupValue: themeChanger.themeMode,
            onChanged: (ThemeMode? value) {
              themeChanger.setTheme(value!);
            },
          ),
        ],
      ),
    );
  }
}

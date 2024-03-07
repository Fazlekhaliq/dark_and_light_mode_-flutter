import 'package:dark_and_light_mode_provider/dark_theme_screen.dart';
import 'package:dark_and_light_mode_provider/provider/theme_chnager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
    ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeChanger(),),
      ],
      child: Builder(
        builder: (context) {
          final themeChanger=Provider.of<ThemeChanger>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: themeChanger.themeMode,
            theme: ThemeData(

              appBarTheme: AppBarTheme(
                backgroundColor: Colors.blue
              ),
              useMaterial3: true,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
            ),
            home: DarkThemeScreen()
          );
        }
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:shorebird_flavor_app/app_environment.dart';

import 'config.dart';
import 'my_home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  const String env = String.fromEnvironment('ENV', defaultValue: mode);
  AppEnvironment.getConfig(env);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shorebird Flavor App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlue,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'HOME'),
    );
  }
}

import 'package:app_geolocation/src/pages/pages.dart';
import 'package:app_geolocation/src/ui/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      title: 'App_Geolocation',
      home: const GpsPage(),
    );
  }
}

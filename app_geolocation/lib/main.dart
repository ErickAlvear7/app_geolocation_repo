import 'package:app_geolocation/src/app/di/di.dart';
import 'package:app_geolocation/src/packages/core/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'src/packages/features/gps_permissions/gps_permissions.dart';
import 'src/pages/pages.dart';

void main() async {
  await init();
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
      home: BlocProvider(
        create: (context) => sl<GpsPermissionsBloc>(),
        child: const LoadingPage(),
      ),
    );
  }
}

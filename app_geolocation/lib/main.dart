import 'package:app_geolocation/src/packages/core/ui/ui.dart';
import 'package:app_geolocation/src/packages/data/device/aplication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'src/packages/features/gps_permissions/gps_permissions.dart';

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
      home: BlocProvider(
        create: (context) => GpsPermissionsBloc(
          const GpsInitialStatus(),
          const GpsStatus(),
          const AskGpsAccess(),
          const OpenAppSettins(),
          const CheckPermissionGranted(),
        ),
        child: const GpsPage(),
      ),
    );
  }
}

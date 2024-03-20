
import 'package:app_geolocation/src/packages/features/gps_permissions/gps_permissions.dart';
import 'package:app_geolocation/src/pages/map_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GpsPermissionsBloc, GpsPermissionsState>(
        builder: (context, state) {
          return state.isAllGranted ? const MapPage() : const GpsPage();
        },
      )
    );
  }
}
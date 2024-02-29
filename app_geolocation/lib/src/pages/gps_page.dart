import 'package:app_geolocation/src/ui/ui.dart';
import 'package:flutter/material.dart';

class GpsPage extends StatelessWidget {
  const GpsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: EnableGps(),
      ),
    );
  }
}


class EnableGps extends StatelessWidget {
  const EnableGps({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.getImageGps(),
        ),
        const Text('Ubicacion'),
        const Text('Necesitamos acceder a tu ubicacion debes activar tu GPS'),
        ElevatedButton(
          onPressed: (){}, 
          child: const Text('Activar Gps'),
        ),

      ],
    );
  }
}
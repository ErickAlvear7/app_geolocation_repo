import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Page'),
      ),
      body: const GoogleMap(initialCameraPosition: CameraPosition(
        target: LatLng(-0.2298500, -78.5249500),
        zoom: 16
        )),
    );
  }
}

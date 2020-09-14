import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  Completer<GoogleMapController> _controller = Completer();

  static final _cityPosition = CameraPosition(
    target: LatLng(53.5511, 9.9937),
    zoom: 12.0
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
            'assets/images/app_bar.png',
            fit: BoxFit.cover,
            height: 45.0,
        ),
        centerTitle: true,
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _cityPosition,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      )
    );
  }
}

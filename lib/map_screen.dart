import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  List<Marker> markers=[
    Marker(markerId: MarkerId("1"),position: LatLng(32.22492985366455, 35.228276142632716)),
    Marker(markerId: MarkerId("2"),position: LatLng(32.2240103464632, 35.23316271712723)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GoogleMap(
        mapType: MapType.hybrid,
        onTap: (argument){
          markers.add(Marker(markerId: MarkerId("3"),position: LatLng(argument.latitude, argument.longitude)));
          setState(() {

          });
        },
        initialCameraPosition: CameraPosition(target: LatLng(32.218273, 35.263581),
        zoom: 20
      ),
      myLocationEnabled: true,
        myLocationButtonEnabled: true,
        markers: markers.toSet(),
      ),
    );
  }
}

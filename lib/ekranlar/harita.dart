import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HaritaSayfasi extends StatelessWidget {
  const HaritaSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                "Google Haritalar",
                speed: const Duration(milliseconds: 200),
              )
            ],
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(target: LatLng(41.019297, 28.9478024), zoom: 13),
        scrollGesturesEnabled: true,
        tiltGesturesEnabled: true,
      ),
    );
  }
}

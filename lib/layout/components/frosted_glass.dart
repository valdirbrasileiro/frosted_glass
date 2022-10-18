import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedGlass extends StatefulWidget {
  const FrostedGlass({
    Key? key,
  }) : super(key: key);

  @override
  State<FrostedGlass> createState() => _FrostedGlassState();
}

class _FrostedGlassState extends State<FrostedGlass> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(children: [
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 7,
              sigmaY: 7,
            ),
          ),
          Container(
            height: 230,
            width: 360,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                  )
                ],
                border: Border.all(
                    color: Colors.white.withOpacity(0.4), width: 1.0),
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.3),
                    Colors.white.withOpacity(0.1)
                  ],
                  stops: const [0, 1],
                ),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(),
            ),
          ),
        ]),
      ),
    );
  }
}

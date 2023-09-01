import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import 'grid_image.dart';

class MainImageGrid extends StatelessWidget {
  const MainImageGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GridImage(
          imagePath: Assets.images.human1.path,
          height: 158,
          width: 122,
          radius: BorderRadius.circular(12),
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(left: 16, top: 13)
        ),
        GridImage(
          imagePath: Assets.images.human2.path,
          height: 158,
          width: 122,
          radius: BorderRadius.circular(12),
          alignment: Alignment.bottomCenter,
          margin: const EdgeInsets.only(bottom: 10)
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridImage(
          imagePath: Assets.images.human4.path,
          height: 158,
          width: 122,
          radius: BorderRadius.circular(12),
          alignment: Alignment.topRight,
          margin: const EdgeInsets.fromLTRB(12, 38, 0, 0),
        ),
      ),

       GridImage(
          imagePath: Assets.images.human5.path,
          height: 158,
          width: 8,
          radius: BorderRadius.circular(4),
          alignment: Alignment.bottomRight,
      ),
    GridImage(
          imagePath: Assets.images.human6.path,
          height: 150,
          width: 8,
          radius: BorderRadius.circular(4),
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(top: 20),
        ),
    ]);
  }
}
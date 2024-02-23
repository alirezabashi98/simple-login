import 'dart:math';

import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';

class BlobRandom extends StatelessWidget {
  final double? size;

  const BlobRandom({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return Blob.animatedRandom(
      size: size ?? 300,
      edgesCount: Random().nextInt(10)+1,
      minGrowth: Random().nextInt(10)+1,
      loop: true,
      duration: const Duration(milliseconds: 2500),
      styles: BlobStyles(
          gradient: const LinearGradient(
        colors: [Color(0xfffd5e3d),Color(0xffc43990),],
      ).createShader(
        const Rect.fromLTRB(0, 0, 300, 300),
      )),
    );
  }
}

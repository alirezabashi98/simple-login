import 'dart:ui';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double? width;
  final Function() onTap;

  const CustomButton({
    super.key,
    required this.text,
    this.width,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: onTap,
          child: Container(
            height: size.width / 8,
            width: width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.05),
                borderRadius: BorderRadius.circular(15)),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white.withOpacity(.8),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

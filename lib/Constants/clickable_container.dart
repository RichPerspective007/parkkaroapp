import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyClickableContainer extends StatelessWidget {
  final String text;
  final String customIconAsset;
  final VoidCallback? onTap;

  MyClickableContainer({
    required this.text,
    required this.customIconAsset,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap, // Use the onTap callback provided
      child: Container(
        width: scrWidth - 30,
        height: 80,
        decoration: ShapeDecoration(
          color: Color(0xFF3392EA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              customIconAsset,
              color: Colors.white,
              width: 24,  // Adjust the width of the SVG icon as needed
              height: 24,  // Adjust the height of the SVG icon as needed
            ),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

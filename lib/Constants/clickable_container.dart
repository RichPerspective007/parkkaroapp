import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parkeaseapp/main.dart';

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

/*class CustomizedClickableContainer extends MyClickableContainer {
  final Color customContainerColor;
  final double customContainerHeight;

  CustomizedClickableContainer({
    required String text,
    required String customIconAsset,
    required VoidCallback onTap,
    required this.customContainerColor,
    required this.customContainerHeight,
  }) : super(text: text, customIconAsset: customIconAsset, onTap: onTap);

  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: scrWidth - 30,
        height: customContainerHeight,
        decoration: ShapeDecoration(
          color: customContainerColor,
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
              width: 24,
              height: 24,
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
}*/

class CustomizedClickableContainer extends MyClickableContainer {
  final Color customContainerColor;
  final double customContainerHeight;
  final double? customContainerWidth;
  final dynamic customIcon;
  final dynamic customAlign;
  final dynamic customBorder;

  CustomizedClickableContainer.asset({
    this.customAlign,
    required String text,
    required String customIconAsset,
    required VoidCallback onTap,
    required this.customContainerColor,
    required this.customContainerHeight,
    this.customContainerWidth,
    this.customBorder
  })  : customIcon = customIconAsset,
        super(text: text, customIconAsset: customIconAsset, onTap: onTap);

  CustomizedClickableContainer.icon({
    this.customAlign,
    required String text,
    required IconData customIconData,
    required VoidCallback onTap,
    required this.customContainerColor,
    required this.customContainerHeight,
    this.customContainerWidth,
    this.customBorder
  })  : customIcon = customIconData,
        super(text: text, customIconAsset: '', onTap: onTap);

  @override
  Widget build(BuildContext context) {
    double scrWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: customContainerWidth ?? scrWidth - 30,
        height: customContainerHeight,
        decoration: BoxDecoration(
          border: customBorder ?? Border.all(color: context.isDarkMode ? Color.fromARGB(198, 237, 138, 25): Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(26), // Adding black border
        ),
        child: Container(
          decoration: ShapeDecoration(
            color: context.isDarkMode ? Color(0xFF353535): customContainerColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          child: Row(
            mainAxisAlignment: customAlign ?? MainAxisAlignment.center,
            children: [
              if (customAlign!=null)
                SizedBox(width:10), 
              if (customIcon is String)
                SvgPicture.asset(
                  customIcon,
                  color: context.isDarkMode ? Color.fromARGB(198, 237, 138, 25): Colors.black,
                  width: 24,
                  height: 24,
                ),
              if (customIcon is IconData)
                Icon(
                  customIcon,
                  color: context.isDarkMode ? Color.fromARGB(198, 237, 138, 25): Colors.black,
                  size: 24,
                ),

              SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                  color: context.isDarkMode ? Colors.white: Color(0xFF505050),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutterprofile/widgets/svg_loader.dart';

Widget NavigationMenu(icon, {isSelected = false, height, width, onClick}) {
  return InkWell(
    splashFactory: NoSplash.splashFactory,
    onTap: onClick,
    child: Container(
      padding: EdgeInsets.all(5),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: svgLoader(icon,
              height: height, width: width, isSelected: isSelected)),
    ),
  );
}

import 'package:flutter/material.dart';

Widget addVerticalSpace(double height) {
  return SizedBox(height: height,);
}

Widget addHorizontalSpace(double width) {
  return SizedBox(width: width,);
}

double adjustHeightWithScreenSize(BuildContext context, double screenPercentage){
  return MediaQuery.of(context).size.height * screenPercentage;
}

double adjustWidthWithScreenSize(BuildContext context, double screenPercentage){
  return MediaQuery.of(context).size.width * screenPercentage;
}
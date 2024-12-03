import 'package:flutter/material.dart';

class Utils {

  static TextStyle getInformationTextStyle() {
    return const TextStyle(fontFamily: 'Roboto');
  }

  static double getHeightByDevice(BuildContext context, double number) => MediaQuery.of(context).size.height * number;

  static double getWidthByDevice(BuildContext context, double number) => MediaQuery.of(context).size.width * number;

  static Widget getSizeBoxAsMarginX(BuildContext context, double number) => SizedBox(
    width:getWidthByDevice(context, number),
  );

  static Widget getSizeBoxAsMarginY(BuildContext context, double number) => SizedBox(
    height: getHeightByDevice(context, number),
  );
}
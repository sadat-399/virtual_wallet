import 'package:flutter/material.dart';

class SizeUtils {
  static double _devicePixelRatio = 0.0;
  static double _deviceWidth = 0.0;
  static double _deviceHeight = 0.0;

  static void init(BuildContext context) {
    _devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;
  }

  /// Returns:
  ///   The device pixel ratio as a double value.
  static double getDevicePixelRatio() => _devicePixelRatio;

  /// Returns a [double] value representing the device width.
  static double getDeviceWidth() => _deviceWidth;

  /// Returns the height of the device.
  static double getDeviceHeight() => _deviceHeight;
}

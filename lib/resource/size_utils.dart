import 'package:flutter/material.dart';

const double FIGMA_DESIGN_MOBILE_WIDTH = 360;
const double FIGMA_DESIGN_MOBILE_HEIGHT = 640;
const double FIGMA_DESIGN_TABLET_WIDTH = 768;
const double FIGMA_DESIGN_TABLET_HEIGHT = 1024;
const double FIGMA_DESIGN_WEB_WIDTH = 1440;
const double FIGMA_DESIGN_WEB_HEIGHT = 1024;

typedef ResponsiveBuild = Widget Function(
  BuildContext context,
  Orientation orientation,
  DeviceType deviceType,
);

class Sizer extends StatelessWidget {
  const Sizer({
    Key? key,
    required this.builder,
  }) : super(key: key);

  final ResponsiveBuild builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeUtils.setScreenSize(constraints, orientation);
            return builder(context, orientation, SizeUtils.deviceType);
          },
        );
      },
    );
  }
}

class SizeUtils {
  static late BoxConstraints boxConstraints;
  static late Orientation orientation;
  static late DeviceType deviceType;
  static late double height;
  static late double width;

  static void setScreenSize(
    BoxConstraints constraints,
    Orientation currentOrientation,
  ) {
    boxConstraints = constraints;
    orientation = currentOrientation;

    if (orientation == Orientation.portrait) {
      width = boxConstraints.maxWidth;
      height = boxConstraints.maxHeight;
    } else {
      width = boxConstraints.maxHeight;
      height = boxConstraints.maxWidth;
    }

    // Determine device type based on width
    if (width >= 1200) {
      deviceType = DeviceType.desktop;
    } else if (width >= 768) {
      deviceType = DeviceType.tablet;
    } else {
      deviceType = DeviceType.mobile;
    }
  }
}

extension ResponsiveExtension on num {
  double get _width => SizeUtils.width;
  double get _height => SizeUtils.height;

  double get h {
    double figmaWidth = FIGMA_DESIGN_MOBILE_WIDTH;
    if (SizeUtils.deviceType == DeviceType.tablet) {
      figmaWidth = FIGMA_DESIGN_TABLET_WIDTH;
    } else if (SizeUtils.deviceType == DeviceType.desktop) {
      figmaWidth = FIGMA_DESIGN_WEB_WIDTH;
    }
    return ((this * _width) / figmaWidth);
  }

  double get v {
    double figmaHeight = FIGMA_DESIGN_MOBILE_HEIGHT;
    if (SizeUtils.deviceType == DeviceType.tablet) {
      figmaHeight = FIGMA_DESIGN_TABLET_HEIGHT;
    } else if (SizeUtils.deviceType == DeviceType.desktop) {
      figmaHeight = FIGMA_DESIGN_WEB_HEIGHT;
    }
    return (this * _height) / figmaHeight;
  }

  double get adaptSize {
    var height = v;
    var width = h;
    return height < width ? height.toDoubleValue() : width.toDoubleValue();
  }

  double get fSize => adaptSize;
}

extension FormatExtension on double {
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(this.toStringAsFixed(fractionDigits));
  }

  double isNonZero({num defaultValue = 0.0}) {
    return this > 0 ? this : defaultValue.toDouble();
  }
}

enum DeviceType { mobile, tablet, desktop }

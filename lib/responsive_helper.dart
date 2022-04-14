import 'package:flutter/material.dart';

// Step 06: create a separate widget which hold several layouts
// and simplify the code.
class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;

  const ResponsiveWidget({
    Key? key,
    required this.mobile,
    required this.tablet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 640) {
        // mobile phone
        return mobile;
      } else {
        return tablet;
      }
    });
  }
}

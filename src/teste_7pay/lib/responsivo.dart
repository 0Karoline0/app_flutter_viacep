import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'mobile_widgets/mobileSize.dart';

class Responsivo extends StatelessWidget {
  final Widget mobile;
  final Widget web;

  Responsivo({required this.mobile, required this.web});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth <= mobileWidth || constraints.maxHeight <= mobileHeight) {
        return mobile;
      } else {
        return web;
      }
    }));
  }
}

import 'package:flutter/widgets.dart';

extension Sizes on BuildContext {
  double get getWidth {
    double width = MediaQuery.of(this).size.width;
    return width;
  }

  double get getHeight {
    double width = MediaQuery.of(this).size.height;
    return width;
  }
}

import 'package:flutter/material.dart';

class NavigateTo {
  NavigateTo(BuildContext context, Type webViewScreen);

  static void navigateTo(BuildContext context, widget) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ),
      );
}

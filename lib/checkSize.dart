import 'package:flutter/material.dart';

String getSize(context) {
  double width = MediaQuery.of(context).size.width;
  if (width <= 480)
    return 'xs';
  else {
    if (width <= 768) {
      return 's';
    } else {
      if (width <= 1024)
        return 'm';
      else if (width <= 1200)
        return 'l';
      else
        return 'xl';
    }
  }
}

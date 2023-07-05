import 'dart:math';
import 'package:flutter/material.dart';
import '../constants/constants.dart';

extension SizedBoxPadding on num {
  SizedBox get ph => SizedBox(height: toDouble());
  SizedBox get pw => SizedBox(width: toDouble());
}

extension ZoomLG on num {
  double get zoomLG =>
      Const.lgZoomScale / pow(2, this); // Formula to match zoom of GMap with LG
}
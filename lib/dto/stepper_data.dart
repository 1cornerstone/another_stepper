import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepperData {
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final Widget? iconWidget;

  const StepperData({this.iconWidget, this.title, this.subtitle, this.trailing,});
}

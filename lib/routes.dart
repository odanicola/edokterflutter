import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:edokter/screens/splashscreen/splashscreen_index.dart';
import 'package:edokter/screens/loginscreen/loginscreen_index.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder> {
  "/": (BuildContext context) => Splashscreen(),
  "/login": (BuildContext context) => Loginscreen()
};
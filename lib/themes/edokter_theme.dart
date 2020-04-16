import 'package:flutter/material.dart';

const iColorAccent = const Color(0xFFce731d);
const iColorPrimary = const Color(0xFF028452);
const iColorPrimaryDark = const Color(0xFF1b5e20);
const iColorPrimaryText = const Color(0xFF212121);
const iColorSecondaryText = const Color(0xFF757575);
const iColorBtnFacebook = const Color(0xFF4267B2);

// menu
const iColorMenuRegistrasi = const Color(0xFFeaa144);
const iColorMenuAntrean = const Color(0xFF7476f1);
const iColorMenuBpjs = const Color(0xFF00b06a);
const iColorMenuMedrec = const Color(0xFF974ac5);
const iColorMenuArtikel = const Color(0xFF51bce6);
const iColorMenuKonsultasi = const Color(0xFFfe4157);
const iColorWelcome = const Color(0xFF5e9cea);

final ThemeData infokesTheme = _buildInfokesTheme();

ThemeData _buildInfokesTheme(){
  final ThemeData base = ThemeData.light();
  
  return base.copyWith(
    accentColor: iColorAccent,
    primaryColor: iColorPrimary,
    primaryColorDark: iColorPrimaryDark,
    scaffoldBackgroundColor: Colors.white,
  //  primaryColorDark: iColorPrimaryDark,
  );
}
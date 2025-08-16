import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Color containerColor = Color(0XFFF0F5F0);
Color tealColor = Color(0XFF618A61);

String popularLocationImage = 'assets/popular_location_image.png';

Text titleText(String text) {
  return Text(
    text,
    style: GoogleFonts.plusJakartaSans(
      fontSize: 22,
      fontWeight: FontWeight.w700,
    ),
  );
}

abstract class AssetConstants {
  static String popularLocationImage = 'assets/popular_location_image.png';
  static String manAvatar = 'assets/home/man.png';
  static String womenAvatar = 'assets/home/women.png';
}

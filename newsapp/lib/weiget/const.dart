import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

String baseUrl = "https://newsapi.org/v2/everything?";
String tokenUrl = "d4f25ffd61c54b98ba1b2420cf4e5065";

myStyle(double size, Color clr, [FontWeight? fw]) {
  return GoogleFonts.roboto(fontSize: size, fontWeight: fw, color: clr);
}

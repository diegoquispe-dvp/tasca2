import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  //estilos de texto
  static const TextStyle styleBigTitle = TextStyle(
    fontSize: 40,
    color: Colors.black45,
  );

  static const TextStyle styleMediumTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black45,
  );

  static const TextStyle styleBaseText = TextStyle(
    fontSize: 14,
  );

  static const TextStyle styleTypeActivity = TextStyle(
    fontSize: 18,
  );

  static const TextStyle styleDistance = TextStyle(
    fontSize: 24,
  );

  static const TextStyle stylePercent = TextStyle(
    fontSize: 25,
    color: Colors.black45,
  );

  //Colores

  static const Color colorForegroundAppbar = Colors.white;
  static const Color colorBackgroundAppbar = Color(0xFFF896D8);
  static const Color colorTextMoreDetails = Color(0xFF3407DA);
  static const Color colorIconCard = Color(0xFFBF63F8);
  static const Color colorGraphProgress = Color(0xFF3407DA);

  //fuentes Profile Scree
  static const TextStyle styleTimeText = TextStyle(
    fontSize: 18,
  );
  static const TextStyle styleKmText = TextStyle(
    fontSize: 18,
  );
  static const TextStyle styleActivitiesText = TextStyle(
    fontSize: 18,
  );
  static const TextStyle styleNumberText = TextStyle(
    fontSize: 21,
  );
  //Colores Profile Screen
  static const Color colorProfileCard = Color(0xFFBF63F8);

  //Temas
  static ThemeData generalTheme = ThemeData(
    fontFamily: GoogleFonts.montserrat().fontFamily,
  );
}

class AppResources {
  //Imagenes
  static const String userAntonia =
      'https://randomuser.me/api/portraits/women/44.jpg';
}

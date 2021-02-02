import 'package:flutter/material.dart';
import 'package:olimpia_food/config/constantes.dart';
import 'package:olimpia_food/views/pages/login_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: corPrimaria,
      accentColor: corPrimaria,
      cursorColor: corPrimaria,
    ),
    home: Login(),
  ));
}

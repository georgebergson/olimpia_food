import 'package:flutter/material.dart';
import 'package:olimpia_food/views/widget/login/botaoacessar_widget.dart';
import 'package:olimpia_food/views/widget/login/box_widget.dart';
import 'package:olimpia_food/views/widget/login/fundo_widget.dart';
import 'package:olimpia_food/views/widget/login/input_widget.dart';
import 'package:olimpia_food/views/widget/login/logo_widget.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          FundoLogin(),
          BoxLogin(),
          LogoLogin(),
          BotaoAcessar(),
          InputLogin(),
        ],
      ),
    ));
  }
}

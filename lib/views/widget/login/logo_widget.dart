import 'package:flutter/material.dart';

class LogoLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    final logoTamanho = altura < largura ? altura / 1.2 : largura / 1.1;
    final logoMargin = altura < largura ? altura / 12 : altura / 7;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: logoMargin),
          child: Image.asset(
            'lib/views/img/logoolimpia.png',
            width: logoTamanho,
          ),
        ),
      ],
    );
  }
}

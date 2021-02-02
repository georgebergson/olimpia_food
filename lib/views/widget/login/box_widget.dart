import 'package:flutter/material.dart';

class BoxLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    final boxLoginLargura = altura < largura ? largura / 1.2 : largura / 1.2;
    final boxLoginAltura = altura < largura ? altura / 1.6 : altura / 2.5;
    return Container(
      margin: EdgeInsets.fromLTRB(
          (largura - (largura / 1.2)) / 2, altura / 3, 0, 0),
      width: boxLoginLargura,
      height: boxLoginAltura,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.black54, blurRadius: 10, offset: Offset(1, 5))
        ],
      ),
    );
  }
}

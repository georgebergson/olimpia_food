import 'package:flutter/material.dart';
import 'package:olimpia_food/config/constantes.dart';

class FundoLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    double fundoX = altura < largura ? 5 : 2;
    double fundoY = altura < largura ? 2.5 : 1;
    return ClipPath(
      clipper: CustomClipPath(x: fundoX, y: fundoY),
      child: Container(
        width: largura,
        height: altura,
        decoration: BoxDecoration(gradient: coPrimariaGradiente),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  double x;
  double y;
  CustomClipPath({this.x, this.y});
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.width / y);
    path.lineTo(size.height * x, 0);
    path.lineTo(size.height, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

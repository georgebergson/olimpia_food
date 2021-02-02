import 'package:flutter/material.dart';
import 'package:olimpia_food/config/constantes.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;

    bool larguraltura = largura < altura;

    final logoTamanho = altura < largura ? altura / 1.2 : largura / 1.1;
    final logoMargin = altura < largura ? altura / 12 : altura / 7;

    final boxLoginLargura = altura < largura ? largura / 1.2 : largura / 1.2;
    final boxLoginAltura = altura < largura ? altura / 1.6 : altura / 2.5;

    final botaoAltura =
        altura < largura ? boxLoginAltura / 0.75 : boxLoginAltura / 0.48;

    final inputLogin =
        altura < largura ? boxLoginAltura / 1.65 : boxLoginAltura;

    final botaoConfig = altura < largura ? 0.0 : botaoAltura / 25;

    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              width: largura,
              height: altura,
              decoration: BoxDecoration(gradient: coPrimariaGradiente),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                (largura - (largura / 1.2)) / 2, altura / 3, 0, 0),
            width: boxLoginLargura,
            height: boxLoginAltura,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black54, blurRadius: 10, offset: Offset(1, 5))
              ],
            ),
          ),
          Row(
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
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                larguraltura == true
                    ? (largura - (largura / 1.2)) / 2
                    : (largura - (largura / 1.7)) / 2,
                botaoAltura,
                larguraltura == true
                    ? (largura - (largura / 1.2)) / 2
                    : (largura - (largura / 1.7)) / 2,
                0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ButtonTheme(
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'ACESSAR',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color: corPrimaria,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                (largura - (largura / 1.2)) / 1.4, inputLogin, 2, 2),
            child: Column(
              children: [
                Container(
                  width: boxLoginLargura / 1.1,
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Color(0xFFebebeb),
                        labelText: 'Usuario:',
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: boxLoginLargura / 1.1,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Color(0xFFebebeb),
                        labelText: 'Senha:',
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Container(
                  width: boxLoginLargura / 1.1,
                  child: Row(
                    children: [
                      Switch(
                        value: false,
                        activeColor: corPrimaria,
                        onChanged: (bool) {},
                      ),
                      Text('Lembrar - me')
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: botaoConfig),
                    width: boxLoginLargura / 1.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.settings,
                            size: 40,
                          ),
                          onPressed: () {},
                          color: Colors.black54,
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.width);
    path.lineTo(size.height * 2, 0);
    path.lineTo(size.height, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

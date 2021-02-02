import 'package:flutter/material.dart';
import 'package:olimpia_food/config/constantes.dart';

class BotaoAcessar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    bool larguraltura = largura < altura;

    return Padding(
      padding: EdgeInsets.fromLTRB(
          (larguraltura == true ? largura / 12 : largura / 5),
          altura / 1.22,
          larguraltura == true ? largura / 12 : largura / 5,
          0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ButtonTheme(
            height: 60,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:olimpia_food/config/constantes.dart';

class InputLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    final inputLogin = altura < largura ? altura / 1.65 : altura;
    bool larguraltura = largura < altura;
    return Padding(
      padding: EdgeInsets.fromLTRB(
          (larguraltura == true ? largura / 7 : largura / 7),
          (larguraltura == true ? altura / 2.6 : altura / 2.6),
          0.0,
          0.0),
      child: Column(
        children: [
          Container(
            width: largura / 1.4,
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
            width: largura / 1.4,
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
          SizedBox(
            height: larguraltura ? 20 : 0,
          ),
          Container(
            width: largura / 1.4,
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
              padding: EdgeInsets.only(top: 0),
              width: largura / 1.4,
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
    );
  }
}

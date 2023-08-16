import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Coisa extends StatefulWidget {
  const Coisa({Key? key}) : super(key: key);

  @override
  State<Coisa> createState() => _CoisaState();
}

class _CoisaState extends State<Coisa> {
  double ibge = 100, bairro = 100, cep = 100;
  double logradouro = 150, complemento = 150;
  double localidade = 80, opcoes = 80, uf = 80;

  @override
  Widget build(BuildContext context) {
    double cardHeight = MediaQuery.of(context).size.height * 0.4;
    double cardWidth = MediaQuery.of(context).size.width * 0.8;

    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(40),
          child: Stack(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, top: 12, bottom: 12, right: 10),
                  child: Column(children: [
                    //============HEADER
                    header(),
                    //============RESULTADO
                    resultado('12345-220', 'Rua 2', 'n°12', 'Setor Oeste',
                        'GOIÂNIA', 'GO', '12321321', 'teste'),
                    resultado('12345-220', 'Rua 2', 'n°12', 'Setor Oeste',
                        'GOIÂNIA', 'GO', '12321321', 'teste'),
                    resultado('12345-220', 'Rua 2', 'n°12', 'Setor Oeste',
                        'GOIÂNIA', 'GO', '12321321', 'teste'),
                    resultado('12345-220', 'Rua 2', 'n°12', 'Setor Oeste',
                        'GOIÂNIA', 'GO', '12321321', 'teste'),
                    resultado('12345-220', 'Rua 2', 'n°12', 'Setor Oeste',
                        'GOIÂNIA', 'GO', '12321321', 'teste'),
                    resultado('12345-220', 'Rua 2', 'n°12', 'Setor Oeste',
                        'GOIÂNIA', 'GO', '12321321', 'teste'),
                    //resultado(),
                  ]),
                ),
              ),
              Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black))),
            ],
          )),
    );
  }

  Widget header() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            celulas('CEP', cep, true),
            celulas('Logradouro', logradouro, true),
            celulas('Complemento', complemento, true),
            celulas('Bairro', bairro, true),
            celulas('Localidade', localidade, true),
            celulas('UF', uf, true),
            celulas('IBGE', ibge, true),
            celulas('Opções', opcoes, true),
          ],
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }

  Widget resultado(
      String resultCEP,
      String resultLog,
      String resultComp,
      String resultBairro,
      String resultLocal,
      String resultUF,
      String resultIBGE,
      String resultOpcoes) {
    return Column(
      children: [
        const SizedBox(
          height: 9,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            celulas('$resultCEP', cep, false),
            celulas('$resultLog', logradouro, false),
            celulas('$resultComp', complemento, false),
            celulas('$resultBairro', bairro, false),
            celulas('$resultLocal', localidade, false),
            celulas('$resultUF', uf, false),
            celulas('$resultIBGE', ibge, false),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: opcoes,
                  child: const Icon(Icons.list),
                ),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}

Widget celulas(String informacao, double largura, bool bold) {
  Widget negrito;

  if (bold == true) {
    negrito = Text(
      informacao,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  } else {
    negrito = Text(
      informacao,
    );
  }

  return Row(
    children: [
      Container(
        alignment: Alignment.center,
        width: largura,
        child: negrito,
      ),
      const SizedBox(
        width: 30,
      ),
    ],
  );
}

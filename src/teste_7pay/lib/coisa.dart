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
  @override
  Widget build(BuildContext context) {

    double cardHeight = MediaQuery.of(context).size.height*0.4;
    double cardWidth = MediaQuery.of(context).size.width*0.8;

    double ibge = 100;
    double bairro = 100;
    double cep = 100;
    double logradouro = 150;
    double complemento = 200;
    double localidade, opcoes = 80;
    double uf = 50;


    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(40),
          child: Stack(
            children: [
              Container(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, top: 12, bottom: 12, right: 10),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: cep,
                            color: Colors.amber,
                            child: const Text(
                              'CEP',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: logradouro,
                            color: Colors.amber,
                            child: const Text(
                              'Logradouro',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: complemento,
                            color: Colors.amber,
                            child: const Text(
                              'Complemento',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: bairro,
                            color: Colors.amber,
                            child: const Text(
                              'Bairro',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: localidade,
                            color: Colors.amber,
                            child: const Text(
                              'Localidade',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: uf,
                            color: Colors.amber,
                            child: const Text(
                              'UF',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: ibge,
                            color: Colors.amber,
                            child: const Text(
                              'IBGE',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: opcoes,
                            color: Colors.amber,
                            child: const Text(
                              'Opções',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            width: cep,
                              alignment: Alignment.center,
                              child: Text('testesssssss')
                          ),
                        ],
                      )
                    ]),
                  ),
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
}

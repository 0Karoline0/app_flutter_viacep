import 'package:flutter/material.dart';
import 'package:teste_7pay/pesquisa.dart';
import 'package:teste_7pay/web_widgets/rowsController.dart';

Widget barraPesquisa(double width, double height) {
  //final Pesquisa pesquisa;

  final logController = TextEditingController();
  final ufController = TextEditingController();
  final cidadeController = TextEditingController();

  return Column(
    children: [
      const SizedBox(
        height: 15,
      ),
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            child: Container(
              height: 160,
              width: width * 0.9,
              padding: const EdgeInsets.all(40),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(55),
            child: Row(children: [
              Container(
                width: width * 0.2,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    )),
                child: TextField(
                    controller: logController,
                    decoration: const InputDecoration(
                        hintText: 'Logradouro',
                        icon: Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Icon(Icons.search),
                        ),
                        border: InputBorder.none)),
              ),
              const SizedBox(width: 20),
              Container(
                width: width * 0.1,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    )),
                child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'UF',
                        icon: Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Icon(Icons.search)),
                        border: InputBorder.none)),
              ),
              SizedBox(
                width: width * 0.2,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey[850],
                      fixedSize: Size(120, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: const Text(
                    'FILTRAR',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                width: 15,
              ),
              ElevatedButton(
                onPressed: () async {
                  List teste =
                      await Pesquisa.fetch("RS", "Porto Alegre", "Domingos");
                  Map coisa = teste.last;
                  linha(
                      coisa['cep'],
                      coisa['logradouro'],
                      coisa['complemento'],
                      coisa['bairro'],
                      coisa['localidade'],
                      coisa['uf'],
                      coisa['ibge']);
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[850],
                    fixedSize: Size(110, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  'PESQUISAR',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(160, 40),
                      primary: Colors.grey[850],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(
                    'CADASTRAR',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(width: 50),
              const Icon(Icons.file_download_outlined, size: 35),
            ]),
          ),
        ],
      ),
      //COLOCAR AQUI!
    ],
  );
}
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:teste_7pay/pesquisa.dart';

class EnderecosWeb extends StatefulWidget {
  const EnderecosWeb({Key? key}) : super(key: key);

  @override
  State<EnderecosWeb> createState() => _EnderecosWebState();
}

class _EnderecosWebState extends State<EnderecosWeb> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double tamanhoIcone = 25;
    String cep = "",
        logradouro = "",
        complemento = "",
        bairro = "",
        localidade = "",
        uf = "";
    int ibge = 0;

    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  menuLateral(screenWidth, screenHeight, tamanhoIcone),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: screenWidth * 0.9,
                    height: screenHeight,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            header(screenWidth, screenHeight),
                            voltar(screenWidth, screenHeight),
                            barraPesquisa(screenWidth, screenHeight),
                            table(screenWidth),
                            // Builder(
                            //   builder: (context) {
                            //     return teste();
                            //   },
                            // ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget teste() {
  return Container(
    height: 500,
    width: 500,
    color: Colors.amber,
    child: const Text('teste'),
  );
}

Widget table(double sizeW) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
            width: sizeW * 0.85,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15)),
            child: DataTable(
              columns: const [
                DataColumn(
                    label: Text(
                  'CEP',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text(
                  'Logradouro',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text(
                  'Complemento',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text(
                  'Bairro',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text(
                  'Localidade',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text(
                  'UF',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text(
                  'IBGE',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                DataColumn(
                    label: Text(
                  'Opções',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ],
              rows: [
                
              ],
            )),
      ),
    ],
  );
}


DataRow linha(String cep, String logradouro, String complemento,
    String bairro, String localidade, String uf, String ibge) {
  return DataRow(cells: [
    DataCell(Text('$cep')),
    DataCell(Text('$logradouro')),
    DataCell(Text('$complemento')),
    DataCell(Text('$bairro')),
    DataCell(Text('$localidade')),
    DataCell(Text('$uf')),
    DataCell(Text('$ibge')),
    DataCell(Container(
      child: Icon(Icons.list),
    )),
  ]);
}

Widget voltar(double width, double height) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.only(left: 50, top: 40),
        child: const Align(
            alignment: AlignmentDirectional.centerStart,
            child: Icon(
              Icons.arrow_back_ios,
              size: 35,
            )),
      ),
      Container(
        padding: const EdgeInsets.only(left: 50, top: 40),
        alignment: AlignmentDirectional.topStart,
        child: const Text(
          'Endereços',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 30),
        ),
      ),
    ],
  );
}

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

Widget header(double width, double height) {
  return Container(
    width: width * 0.9,
    height: height * 0.15,
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Olá, João', style: TextStyle(fontSize: 30)),
          SizedBox(
            height: 20,
          ),
          Text('SEJA BEM VINDO AO PORTAL 7PAY'),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Icon(
                Icons.chat,
                size: 30,
              ),
              const SizedBox(
                width: 15,
              ),
              const Icon(Icons.notifications_on, size: 30),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 40,
                width: 40,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: ClipOval(
                    child: Image.asset('assets/images/joao2.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    ]),
  );
}

Widget menuLateral(double width, double height, double tamanhoIcone) {
  return Container(
    width: width * 0.1,
    height: height,
    color: Colors.grey[800],
    child: Row(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              //================HEADER
              Column(
                children: [
                  Image.asset(
                    'assets/images/joao2.jpg',
                    scale: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              //================BODY
              Column(
                children: [
                  Icon(
                    Icons.dehaze,
                    color: Colors.orange,
                    size: tamanhoIcone,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Icon(
                    Icons.home_outlined,
                    color: Colors.orange,
                    size: tamanhoIcone,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.credit_card,
                    color: Colors.orange,
                    size: tamanhoIcone,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.attach_money,
                    color: Colors.orange,
                    size: tamanhoIcone,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.attach_email,
                    size: tamanhoIcone,
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.attach_email,
                    size: tamanhoIcone,
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.attach_email,
                    size: tamanhoIcone,
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.attach_email,
                    size: tamanhoIcone,
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.attach_email,
                    size: tamanhoIcone,
                    color: Colors.orange,
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              //================FOOTER
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            Icons.info_outline_rounded,
                            color: Colors.orange,
                          )),
                      const Text(
                        'Ajuda',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            Icons.settings_outlined,
                            color: Colors.orange,
                            size: 30,
                          )),
                      const Text(
                        'Configurações',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

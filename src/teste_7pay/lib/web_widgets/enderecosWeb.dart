import 'package:flutter/material.dart';
import 'package:teste_7pay/pesquisa/pesquisa.dart';
import 'package:teste_7pay/web_widgets/header.dart';
import 'package:teste_7pay/web_widgets/menuLateral.dart';
import 'package:teste_7pay/web_widgets/return.dart';

class EnderecosWeb extends StatefulWidget {
  const EnderecosWeb({Key? key}) : super(key: key);

  @override
  State<EnderecosWeb> createState() => _EnderecosWebState();
}

class _EnderecosWebState extends State<EnderecosWeb> {
  List<DataRow> dataRows = [];
  var lista = [];

  @override
  Widget build(BuildContext context) {
    final logController = TextEditingController();
    final ufController = TextEditingController();
    final cidadeController = TextEditingController();

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double tamanhoIcone = 25;

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
                          children: [
                            header(screenWidth, screenHeight),
                            Container(
                              width: screenWidth * 0.9,
                              height: 0.2,
                              color: Colors.black,
                            ),
                            voltar(screenWidth, screenHeight),
                            //=======================BARRA DE PESQUISA
                            Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 120,
                                      width: screenWidth * 0.9,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 40),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(55),
                                      child: Row(children: [
                                        Container(
                                          width: screenWidth * 0.15,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.black),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(20),
                                              )),
                                          child: TextField(
                                              controller: cidadeController,
                                              decoration: const InputDecoration(
                                                  hintText: 'Cidade',
                                                  icon: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 12),
                                                    child: Icon(Icons.search),
                                                  ),
                                                  border: InputBorder.none)),
                                        ),
                                        const SizedBox(width: 20),
                                        Container(
                                          width: screenWidth * 0.15,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.black),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(20),
                                              )),
                                          child: TextField(
                                              controller: logController,
                                              decoration: const InputDecoration(
                                                  hintText: 'Logradouro',
                                                  icon: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 12),
                                                    child: Icon(Icons.search),
                                                  ),
                                                  border: InputBorder.none)),
                                        ),
                                        const SizedBox(width: 20),
                                        Container(
                                          width: screenWidth * 0.1,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.black),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(20),
                                              )),
                                          child: TextField(
                                              controller: ufController,
                                              decoration: const InputDecoration(
                                                  hintText: 'UF',
                                                  icon: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 12),
                                                      child:
                                                          Icon(Icons.search)),
                                                  border: InputBorder.none)),
                                        ),
                                        SizedBox(
                                          width: screenWidth * 0.05,
                                        ),
                                        ElevatedButton(
                                          onPressed: () async {
                                            var uf = ufController.text;
                                            var cidade = cidadeController.text;
                                            var logradouro = logController.text;

                                            if (!(uf == "" ||
                                                cidade == "" ||
                                                logradouro == "")) {
                                              await pesquisar(
                                                  uf, cidade, logradouro);
                                              if (lista.isEmpty) {
                                                showDialog(
                                                    context: context,
                                                    builder: (context) =>
                                                        const AlertDialog(
                                                          title: Center(
                                                              child: Text(
                                                                  'ALERTA')),
                                                          content: Text(
                                                              'Não foram encontrados resultados para sua busca'),
                                                        ));
                                              } else {
                                                loadRows();
                                              }
                                            } else {
                                              showDialog(
                                                  context: context,
                                                  builder: ((context) =>
                                                      const AlertDialog(
                                                        content: Text(
                                                            'Todos os campos precisam ser preenchidos!'),
                                                        title: Center(
                                                            child:
                                                                Text('ERRO')),
                                                      )));
                                            }
                                          },
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.grey[850],
                                              fixedSize: const Size(120, 40),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          child: const Text(
                                            'PESQUISAR',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.grey[850],
                                                fixedSize: const Size(120, 40),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                )),
                                            child: const Text(
                                              'FILTRAR',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                fixedSize: const Size(150, 40),
                                                primary: Colors.grey[850],
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10))),
                                            child: const Text(
                                              'CADASTRAR',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        const SizedBox(width: 50),
                                        const Icon(Icons.file_download_outlined,
                                            size: 35),
                                      ]),
                                    ),
                                  ],
                                ),
                                //========================TABLE
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Container(
                                          height: screenHeight * 0.45,
                                          width: screenWidth * 0.85,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black),
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: ListView(children: [
                                            DataTable(
                                              columns: [
                                                DataColumn(
                                                    label: GestureDetector(
                                                  onTap: () {
                                                    lista.sort((a, b) =>
                                                        a['cep'].compareTo(
                                                            b['cep']));
                                                    loadRows();
                                                  },
                                                  child: const Text(
                                                    'CEP',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                )),
                                                DataColumn(
                                                  label: GestureDetector(
                                                    onTap: () {
                                                      lista.sort(((a, b) => a[
                                                              'logradouro']
                                                          .compareTo(b[
                                                              'logradouro'])));
                                                      loadRows();
                                                    },
                                                    child: const Text(
                                                      'Logradouro',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                                DataColumn(
                                                    label: GestureDetector(
                                                  onTap: () {
                                                    lista.sort(((a, b) => a[
                                                            'complemento']
                                                        .compareTo(
                                                            b['complemento'])));
                                                    loadRows();
                                                  },
                                                  child: const Text(
                                                    'Complemento',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                )),
                                                DataColumn(
                                                    label: GestureDetector(
                                                  onTap: () {
                                                    lista.sort(
                                                      (a, b) => a['bairro']
                                                          .compareTo(
                                                              b['bairro']),
                                                    );
                                                    loadRows();
                                                  },
                                                  child: const Text(
                                                    'Bairro',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                )),
                                                DataColumn(
                                                    label: GestureDetector(
                                                  onTap: () {
                                                    lista.sort(((a, b) => a[
                                                            'localidade']
                                                        .compareTo(
                                                            b['localidade'])));
                                                    loadRows();
                                                  },
                                                  child: const Text(
                                                    'Localidade',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                )),
                                                DataColumn(
                                                    label: GestureDetector(
                                                  onTap: () {
                                                    lista.sort(((a, b) =>
                                                        a['uf'].compareTo(
                                                            b['uf'])));
                                                    loadRows();
                                                  },
                                                  child: const Text(
                                                    'UF',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                )),
                                                DataColumn(
                                                    label: Text(
                                                  'IBGE',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                                DataColumn(
                                                    label: Text(
                                                  'Opções',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                              ],
                                              rows: dataRows,
                                            ),
                                          ])),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                  height: 40,
                                  width: 120,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(primary: Colors.grey.shade800),
                                    onPressed: () {},
                                    child: Row(
                                      children: const [
                                        Icon(Icons.arrow_back),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'VOLTAR',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
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

  Future<void> loadRows() async {
    await createRows();
    setState(() {});
  }

  Future pesquisar(String uf, String cidade, String logradouro) async {
    try {
      lista = await Pesquisa.fetch(uf, cidade, logradouro);
    } catch (xmlError) {
      lista = [];
    }
  }

  Future createRows() async {
    dataRows.clear();

    for (int i = 0; i < lista.length; i++) {
      var cep = lista[i]['cep'];
      var logradouro = lista[i]['logradouro'];
      var complemento = lista[i]['complemento'];
      var bairro = lista[i]['bairro'];
      var localidade = lista[i]['localidade'];
      var uf = lista[i]['uf'];
      var ibge = lista[i]['ibge'];
      dataRows.add(
          rows(cep, logradouro, complemento, bairro, localidade, uf, ibge));
    }
  }
}

DataRow rows(String cep, String logradouro, String complemento, String bairro,
    String localidade, String uf, String ibge) {
  return DataRow(cells: [
    DataCell(Text(cep)),
    DataCell(Text(logradouro)),
    DataCell(Text(complemento)),
    DataCell(Text(bairro)),
    DataCell(Text(localidade)),
    DataCell(Text(uf)),
    DataCell(Text(ibge)),
    const DataCell(Icon(Icons.list)),
  ]);
}

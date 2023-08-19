import 'package:flutter/material.dart';
import 'package:teste_7pay/pesquisa/pesquisa.dart';
import 'package:teste_7pay/web_widgets/barra_pesquisa.dart';
import 'package:teste_7pay/web_widgets/header.dart';
import 'package:teste_7pay/web_widgets/menuLateral.dart';
import 'package:teste_7pay/web_widgets/resultados2.dart';
import 'package:teste_7pay/web_widgets/return.dart';
import 'package:teste_7pay/web_widgets/table.dart';

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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            header(screenWidth, screenHeight),
                            voltar(screenWidth, screenHeight),
                            //=======================BARRA DE PESQUISA
                            Column(
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 160,
                                      width: screenWidth * 0.9,
                                      padding: const EdgeInsets.all(40),
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
                                            
                                            pesquisar('GO', 'Goiânia', 'Rua 20');
                                            loadRows();
                                            
                                            // if (!(uf == "" || cidade == "" || logradouro == "")){
                                            //   await pesquisar(uf, cidade, logradouro);
                                            //   loadRows();
                                            // }else{
                                            //   showDialog(context: context, builder: ((context) => AlertDialog(content: Text('Todos os campos precisam ser preenchidos!'), title: Center(child: Text('ERRO')),)));
                                            // }
                                          
                                          
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
                                        height: screenHeight * 0.4,
                                          width: screenWidth * 0.85,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black),
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: ListView(
                                            children: [DataTable(
                                              columns: const [
                                                DataColumn(
                                                    label: Text(
                                                  'CEP',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                                DataColumn(
                                                    label: Text(
                                                  'Logradouro',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                                DataColumn(
                                                    label: Text(
                                                  'Complemento',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                                DataColumn(
                                                    label: Text(
                                                  'Bairro',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                                DataColumn(
                                                    label: Text(
                                                  'Localidade',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                                DataColumn(
                                                    label: Text(
                                                  'UF',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
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
                            )
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
    setState(() {
    });
  }

  Future pesquisar(String uf, String cidade, String logradouro) async {
    lista = await Pesquisa.fetch(uf, cidade, logradouro);
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
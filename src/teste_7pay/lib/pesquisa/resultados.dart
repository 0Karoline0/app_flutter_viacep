import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:teste_7pay/pesquisa/pesquisa.dart';

class Resultados extends StatefulWidget {
  const Resultados({Key? key}) : super(key: key);

  @override
  State<Resultados> createState() => ResultadosState();
}

class ResultadosState extends State<Resultados> {
  List<DataRow> dataRows = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DataTable(
              columns: const [
                DataColumn(label: Text('CEP')),
                DataColumn(label: Text('Logradouro')),
                DataColumn(label: Text('Complemento')),
                DataColumn(label: Text('Bairro')),
                DataColumn(label: Text('Localidade')),
                DataColumn(label: Text('UF')),
                DataColumn(label: Text('IBGE')),
              ],
              rows: dataRows,
            ),
            ElevatedButton(
                onPressed: () async {
                  loadRows();
                },
                child: const Text('Pesquisar'))
          ],
        ),
      ),
    );
  }

  Future<void> loadRows() async {
    await createRows();
    setState(() {});
  }

  Future createRows() async {


    dataRows.clear();

    var teste = await Pesquisa.fetch("RS", "Porto Alegre", "Domingos");

    for (int i = 0; i < teste.length; i++) {
      var cep = teste[i]['cep'];
      var logradouro = teste[i]['logradouro'];
      var complemento = teste[i]['complemento'];
      var bairro = teste[i]['bairro'];
      var localidade = teste[i]['localidade'];
      var uf = teste[i]['uf'];
      var ibge = teste[i]['ibge'];
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
  ]);
}

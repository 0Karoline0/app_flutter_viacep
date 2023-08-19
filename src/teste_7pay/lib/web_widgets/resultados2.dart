import 'package:flutter/material.dart';
import 'package:teste_7pay/pesquisa/pesquisa.dart';

class Resultados2 {

  List<DataRow> dataRows = [];

  Future<void> loadRows() async {
    await createRows();
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
}


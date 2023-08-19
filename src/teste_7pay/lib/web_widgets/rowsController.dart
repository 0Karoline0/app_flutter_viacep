import 'package:flutter/material.dart';

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
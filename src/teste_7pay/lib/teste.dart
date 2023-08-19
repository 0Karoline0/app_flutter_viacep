import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TableTeste extends StatefulWidget {
  const TableTeste({Key? key}) : super(key: key);

  @override
  State<TableTeste> createState() => _TableTesteState();
}

class _TableTesteState extends State<TableTeste> {
  List<DataRow> dataRows = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: DataTable(columns: const [
              DataColumn(label: Text('Comida')),
              DataColumn(label: Text('Avaliação')),
              DataColumn(label: Text('Valor')),
            ], rows:
              dataRows,
            ),
          ),
          ElevatedButton(onPressed: () {setState(() {
            createRows();
            print('1');
          });}, child: const Text('Pesquisar Tudo'))
        ],
      ),
    );
  }

void createRows() {

  dataRows.clear();

  dataRows.add(rows('Hamburguer', '5/5', '15.00'));
  dataRows.add(rows('Lasanha', '5/5', '25.00'));
}

}



DataRow rows(String comida, String avaliacao, String valor) {
  return DataRow(cells: [
    DataCell(Text(comida)),
    DataCell(Text(avaliacao)),
    DataCell(Text(valor)),
  ]);
}

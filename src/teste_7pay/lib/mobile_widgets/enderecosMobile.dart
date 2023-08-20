import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:teste_7pay/pesquisa/pesquisa.dart';

class EnderecosMob extends StatefulWidget {
  const EnderecosMob({Key? key}) : super(key: key);

  @override
  State<EnderecosMob> createState() => _EnderecosMobState();
}

class _EnderecosMobState extends State<EnderecosMob> {
  final logController = TextEditingController();
  final ufController = TextEditingController();
  final cidadeController = TextEditingController();
  double tamanhoFonte = 15;
  List<DataRow> dataRows = [];
  var lista = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Icon(
            Icons.chat,
            size: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Icon(
              Icons.notifications_on,
              size: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8, right: 10),
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipOval(
                child:
                    Image.asset('assets/images/joao2.jpg', fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
          child: Column(
        children: [
          Container(
            height: 100,
            child: DrawerHeader(
              child: Image.asset(
                'assets/images/7pay-logo.png',
                scale: 1.2,
              ),
            ),
          ),
          const Divider(
            color: Colors.white,
            indent: 25,
            endIndent: 25,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(
                  title: Text(
                    'Início',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: tamanhoFonte,
                        fontWeight: FontWeight.normal),
                  ),
                  leading: const Icon(
                    Icons.home,
                    size: 30,
                    color: Colors.orange,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Cartão de Crédito',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: tamanhoFonte,
                        fontWeight: FontWeight.normal),
                  ),
                  leading: const Icon(
                    Icons.credit_card,
                    size: 30,
                    color: Colors.orange,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Saldo',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: tamanhoFonte,
                        fontWeight: FontWeight.normal),
                  ),
                  leading: const Icon(
                    Icons.attach_money,
                    size: 30,
                    color: Colors.orange,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Pagamentos',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: tamanhoFonte,
                        fontWeight: FontWeight.normal),
                  ),
                  leading: const Icon(
                    Icons.payments_sharp,
                    size: 30,
                    color: Colors.orange,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Notas Fiscais',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: tamanhoFonte,
                        fontWeight: FontWeight.normal),
                  ),
                  leading: const Icon(
                    Icons.note_sharp,
                    size: 30,
                    color: Colors.orange,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Estatísticas de uso',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: tamanhoFonte,
                        fontWeight: FontWeight.normal),
                  ),
                  leading: const Icon(
                    Icons.stacked_bar_chart_sharp,
                    size: 30,
                    color: Colors.orange,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Estatísticas Financeiras',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: tamanhoFonte,
                        fontWeight: FontWeight.normal),
                  ),
                  leading: const Icon(
                    Icons.pie_chart,
                    size: 30,
                    color: Colors.orange,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Outros',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: tamanhoFonte,
                        fontWeight: FontWeight.normal),
                  ),
                  leading: const Icon(
                    Icons.widgets,
                    size: 30,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.white,
            endIndent: 35,
            indent: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
            child: Column(
              children: [
                Row(children: const [
                  Icon(
                    Icons.info,
                    color: Colors.orange,
                    size: 27,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'Ajuda',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 17,
                ),
                Row(children: const [
                  Icon(
                    Icons.settings_outlined,
                    color: Colors.orange,
                    size: 27,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'Configurações',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ],
      )),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  'Endereços',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: TextField(
                controller: cidadeController,
                decoration: const InputDecoration(hintText: 'Cidade'),
              ),
            ),
            TextField(
              controller: logController,
              decoration: const InputDecoration(hintText: 'Logradouro'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: TextField(
                controller: ufController,
                decoration: const InputDecoration(hintText: 'UF'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 17),
              child: Container(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () async {
                      var uf = ufController.text;
                      var cidade = cidadeController.text;
                      var logradouro = logController.text;

                      if (!(uf == "" || cidade == "" || logradouro == "")) {
                        await pesquisar(uf, cidade, logradouro);
                        if (lista.isEmpty) {
                          showDialog(
                              context: context,
                              builder: (context) => const AlertDialog(
                                    title: Center(child: Text('ALERTA')),
                                    content: Text(
                                        'Não foram encontrados resultados para sua busca'),
                                  ));
                        } else {
                          loadRows();
                        }
                      } else {
                        showDialog(
                            context: context,
                            builder: ((context) => const AlertDialog(
                                  content: Text(
                                      'Todos os campos precisam ser preenchidos!'),
                                  title: Center(child: Text('ERRO')),
                                )));
                      }
                    },
                    child: Text(
                      'Pesquisar',
                      style: TextStyle(fontSize: 20),
                    ),
                    style:
                        ElevatedButton.styleFrom(primary: Colors.grey.shade800),
                  )),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              child: Align(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(15)),
                    columns: [
                      DataColumn(
                          label: GestureDetector(
                        onTap: () {
                          lista.sort((a, b) => a['cep'].compareTo(b['cep']));
                          loadRows();
                        },
                        child: const Text(
                          'CEP',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )),
                      DataColumn(
                        label: GestureDetector(
                          onTap: () {
                            lista.sort(((a, b) =>
                                a['logradouro'].compareTo(b['logradouro'])));
                            loadRows();
                          },
                          child: const Text(
                            'Logradouro',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      DataColumn(
                          label: GestureDetector(
                        onTap: () {
                          lista.sort(((a, b) =>
                              a['complemento'].compareTo(b['complemento'])));
                          loadRows();
                        },
                        child: const Text(
                          'Complemento',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )),
                      DataColumn(
                          label: GestureDetector(
                        onTap: () {
                          lista.sort(
                            (a, b) => a['bairro'].compareTo(b['bairro']),
                          );
                          loadRows();
                        },
                        child: const Text(
                          'Bairro',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )),
                      DataColumn(
                          label: GestureDetector(
                        onTap: () {
                          lista.sort(((a, b) =>
                              a['localidade'].compareTo(b['localidade'])));
                          loadRows();
                        },
                        child: const Text(
                          'Localidade',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )),
                      DataColumn(
                          label: GestureDetector(
                        onTap: () {
                          lista.sort(((a, b) => a['uf'].compareTo(b['uf'])));
                          loadRows();
                        },
                        child: const Text(
                          'UF',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
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
                    rows: dataRows,
                  ),
                ),
                              ),
              ),
            ),
          ],
        ),
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

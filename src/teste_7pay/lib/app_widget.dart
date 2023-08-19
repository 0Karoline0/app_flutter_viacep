import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:teste_7pay/web_widgets/enderecosWeb.dart';
import 'package:teste_7pay/mobile_widgets/enderecosMobile.dart';
import 'package:teste_7pay/pesquisa/resultados.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      home: EnderecosWeb(),
    );
  }
}
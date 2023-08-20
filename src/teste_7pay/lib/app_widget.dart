import 'package:flutter/material.dart';
import 'package:teste_7pay/responsivo.dart';
import 'package:teste_7pay/web_widgets/enderecosWeb.dart';
import 'package:teste_7pay/mobile_widgets/enderecosMobile.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.grey.shade800), drawerTheme: DrawerThemeData(backgroundColor: Colors.grey.shade800)),
      home: Responsivo(mobile: EnderecosMob(), web: EnderecosWeb(),),
    );
  }
}
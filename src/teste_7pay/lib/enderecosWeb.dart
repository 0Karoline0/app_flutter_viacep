import 'package:flutter/material.dart';
import 'package:teste_7pay/web_widgets/barra_pesquisa.dart';
import 'package:teste_7pay/web_widgets/header.dart';
import 'package:teste_7pay/web_widgets/menuLateral.dart';
import 'package:teste_7pay/web_widgets/return.dart';
import 'package:teste_7pay/web_widgets/table.dart';

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
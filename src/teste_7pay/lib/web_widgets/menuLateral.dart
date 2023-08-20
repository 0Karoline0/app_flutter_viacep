import 'package:flutter/material.dart';

Widget menuLateral(double width, double height, double tamanhoIcone) {
  return Container(
    width: width * 0.1,
    height: height,
    color: Colors.grey[800],
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //================HEADER
          Column(
            children: [
              Container(
                height: 100,
                child: Image.asset(
                  'assets/images/7pay-logo.png',
                  scale: 1.3,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          //================BODY
          Column(
            children: [
              Icon(
                Icons.dehaze,
                color: Colors.orange,
                size: tamanhoIcone,
              ),
              const SizedBox(
                height: 40,
              ),
              Icon(
                Icons.home_outlined,
                color: Colors.orange,
                size: tamanhoIcone,
              ),
              const SizedBox(
                height: 20,
              ),
              Icon(
                Icons.credit_card,
                color: Colors.orange,
                size: tamanhoIcone,
              ),
              const SizedBox(
                height: 20,
              ),
              Icon(
                Icons.attach_money,
                color: Colors.orange,
                size: tamanhoIcone,
              ),
              const SizedBox(
                height: 20,
              ),
              Icon(
                Icons.payments_sharp,
                size: tamanhoIcone,
                color: Colors.orange,
              ),
              const SizedBox(
                height: 20,
              ),
              Icon(
                Icons.note_sharp,
                size: tamanhoIcone,
                color: Colors.orange,
              ),
              const SizedBox(
                height: 20,
              ),
              Icon(
                Icons.stacked_bar_chart_sharp,
                size: tamanhoIcone,
                color: Colors.orange,
              ),
              const SizedBox(
                height: 20,
              ),
              Icon(
                Icons.pie_chart,
                size: tamanhoIcone,
                color: Colors.orange,
              ),
              const SizedBox(
                height: 20,
              ),
              Icon(
                Icons.widgets,
                size: tamanhoIcone,
                color: Colors.orange,
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          //================FOOTER
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: const EdgeInsets.only(right: 10, left: 5),
                      child: const Icon(
                        Icons.info_outline_rounded,
                        color: Colors.orange,
                      )),
                  const Text(
                    'Ajuda',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      margin: const EdgeInsets.only(right: 10, left: 5),
                      child: const Icon(
                        Icons.settings_outlined,
                        color: Colors.orange,
                        size: 30,
                      )),
                  const Text(
                    'Configurações',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

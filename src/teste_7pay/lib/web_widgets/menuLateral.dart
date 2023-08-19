import 'package:flutter/material.dart';

Widget menuLateral(double width, double height, double tamanhoIcone) {
  return Container(
    width: width * 0.1,
    height: height,
    color: Colors.grey[800],
    child: Row(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              //================HEADER
              Column(
                children: [
                  Image.asset(
                    'assets/images/joao2.jpg',
                    scale: 30,
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
                    Icons.attach_email,
                    size: tamanhoIcone,
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.attach_email,
                    size: tamanhoIcone,
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.attach_email,
                    size: tamanhoIcone,
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.attach_email,
                    size: tamanhoIcone,
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.attach_email,
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
                          margin: const EdgeInsets.only(right: 10),
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
                          margin: const EdgeInsets.only(right: 10),
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
      ],
    ),
  );
}

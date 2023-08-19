import 'package:flutter/material.dart';

Widget voltar(double width, double height) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.only(left: 35,),
        child: const Text(
          'Endereços',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 30),
        ),
      ),
    ],
  );
}
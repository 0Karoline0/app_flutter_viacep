import 'package:flutter/material.dart';

Widget voltar(double width, double height) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.only(top: 30),
        child: const Text(
          'Endereços',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 30),
        ),
      ),
    ],
  );
}
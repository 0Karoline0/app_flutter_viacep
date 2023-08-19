import 'package:flutter/material.dart';

Widget voltar(double width, double height) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.only(left: 50, top: 40),
        child: const Align(
            alignment: AlignmentDirectional.centerStart,
            child: Icon(
              Icons.arrow_back_ios,
              size: 35,
            )),
      ),
      Container(
        padding: const EdgeInsets.only(left: 50, top: 40),
        alignment: AlignmentDirectional.topStart,
        child: const Text(
          'Endereços',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 30),
        ),
      ),
    ],
  );
}
import 'package:flutter/material.dart';

Widget header(double width, double height) {
  return Container(
    width: width * 0.9,
    height: height * 0.15,
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Olá, João', style: TextStyle(fontSize: 30)),
          SizedBox(
            height: 20,
          ),
          Text('SEJA BEM VINDO AO PORTAL 7PAY'),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Icon(
                Icons.chat,
                size: 30,
              ),
              const SizedBox(
                width: 15,
              ),
              const Icon(Icons.notifications_on, size: 30),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 40,
                width: 40,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: ClipOval(
                    child: Image.asset('assets/images/joao2.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    ]),
  );
}
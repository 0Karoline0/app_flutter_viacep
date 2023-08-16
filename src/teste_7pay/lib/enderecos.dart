import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Enderecos extends StatefulWidget {
  const Enderecos({Key? key}) : super(key: key);

  @override
  State<Enderecos> createState() => _EnderecosState();
}

class _EnderecosState extends State<Enderecos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(child: Text('teste')),
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.12,
          backgroundColor: Colors.white,
          actions: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(right: 50)),
                Icon(Icons.chat),
                SizedBox(
                  width: 10,
                ),
                const Icon(Icons.notifications_on),
                const SizedBox(
                  width: 10,
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
            )
          ],
          title: const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text('Olá, João!'),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              Row(children: [Text('Endereços', style: TextStyle(fontSize: 35,),)],),
              SizedBox(height: 25,),
              Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      child: Container(
                        height: 160,
                        padding: const EdgeInsets.all(40),
                        child: Container(
                          decoration:
                              BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(20),),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(55),
                      child: Row(children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.black),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              )),
                          child: const TextField(
                              decoration: InputDecoration(
                                  hintText: 'Bairro',
                                  icon: Padding(
                                    padding: EdgeInsets.only(left: 12),
                                    child: Icon(Icons.search),
                                  ),
                                  border: InputBorder.none)),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.1,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.black),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              )),
                          child: const TextField(
                              decoration: InputDecoration(
                                  hintText: 'UF',
                                  icon: Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Icon(Icons.search)),
                                  border: InputBorder.none)),
                        ),
                        const SizedBox(
                          width: 480,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'FILTRAR',
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.grey[850],
                                fixedSize: Size(120, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ))),
                        const SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'ATUALIZAR',
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey[850],
                              fixedSize: Size(110, 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(160, 40),
                                primary: Colors.grey[850],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: const Text(
                              'CADASTRAR',
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            )),
                        const SizedBox(width: 50),
                        const Icon(Icons.file_download_outlined, size: 35),
                      ]),
                    ),
                  ],
                ),
              ),
              //COLOCAR AQUI!
            ],
          ),
        ));
  }
}

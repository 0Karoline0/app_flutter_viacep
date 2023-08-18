import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EnderecosMob extends StatefulWidget {
  const EnderecosMob({Key? key}) : super(key: key);

  @override
  State<EnderecosMob> createState() => _EnderecosMobState();
}

class _EnderecosMobState extends State<EnderecosMob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('teste')),
      body: Container(),
    );
  }
}
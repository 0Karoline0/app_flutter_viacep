import 'dart:convert';
import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;

class Pesquisa{

  // late String cep;
  // late String logradouro;
  // late String complemento;
  // late String bairro;
  // late String localidade;
  // late String uf;
  // late int ibge;

  //Pesquisa({required this.cep, required this.logradouro, required this.complemento, required this.bairro, required this.localidade, required this.uf, required this.ibge});

  static Future<List<dynamic>> fetch(String uf, String cidade, String logradouro) async{
    var url = Uri.parse('https://viacep.com.br/ws/$uf/$cidade/$logradouro/json/');
    var response = await http.get(url);
    var json = jsonDecode(response.body);
    return json;
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;

class Pesquisa{

  // late String ufP;
  // late String cidadeP;
  // late String logradouroP;

  late String cep;
  late String logradouro;
  late String complemento;
  late String bairro;
  late String localidade;
  late String uf;
  late int ibge;

  //Pesquisa({required this.ufP, required this.cidadeP, required this.logradouroP});
  Pesquisa({required this.cep, required this.logradouro, required this.complemento, required this.bairro, required this.localidade, required this.uf, required this.ibge});

  factory Pesquisa.fromJson(Map json){
    return Pesquisa(
      cep: json['cep'],
      logradouro: json['logradouro'],
      complemento: json['complemento'],
      bairro: json['bairro'],
      localidade: json['localidade'],
      uf: json['uf'],
      ibge: json['ibge'],
    );
  }

  static Future<List<dynamic>> fetch(String uf, String cidade, String logradouro) async{
    var url = Uri.parse('https://viacep.com.br/ws/$uf/$cidade/$logradouro/json/');
    var response = await http.get(url);
    var json = jsonDecode(response.body);
    return json;
  }

  //final result = await fetch('RS', 'Porto Alegre', 'Domingos');
  //print(result);

}

//UF
//CIDADE
//LOGRADOURO
import 'package:http/http.dart' as http;
import 'package:super_bbva/models/rappy.dart';
import 'dart:async';
import 'dart:io';

Future<List<Credential>> getAllCredential() async {
  final response = await http.get(Uri.parse("https://my-json-server.typicode.com/dammug/demo/credentials"));
  print(response.body);
  return allCredentialFromJson(response.body);
}

Future<Credential> getCredential() async{
  final response = await http.get(Uri.parse("https://my-json-server.typicode.com/dammug/demo/credentials"));
  return credentialFromJson(response.body);
}

Future<http.Response> createCredential(Credential post) async{
  final response = await http.post(Uri.parse("https://my-json-server.typicode.com/dammug/demo/credentials"),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.authorizationHeader : ''
      },
      body: credentialToJson(post)
  );
  return response;
}
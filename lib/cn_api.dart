// https://api.ipify.org
import 'models/classcn.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

const stringUrl = "https://api.chucknorris.io/jokes/random?category=$categoria";
const categoria = "animal";

Future<ChuckNorrisFact> getNorris() async {
  final url = Uri.parse(stringUrl);
  final res = await http.get(url);
  final Map<String, dynamic> data = json.decode(res.body);
  final esp = ChuckNorrisFact(
      id: data["id"],
      createdAt: data["created_at"],
      category:
          categoria, //category: data["categories"] funziona 1su20 restituendo 19volte un arrey vuoto
      fact: data["value"]);

  return esp;
}

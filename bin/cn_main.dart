import 'package:chucknorris/cn_api.dart' as cn;

void main(List<String> arguments) async {
  final quote = await cn.getNorris();
  print(quote);
}

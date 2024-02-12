import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  final String baseUrl = DotEnv().env['BASEURL'].toString();
  final String baseUrlImage = DotEnv().env['BASEURL_IMG'].toString();
}
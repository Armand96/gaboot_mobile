import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  final String baseUrl = dotenv.env['BASEURL'].toString();
  final String baseUrlImage = dotenv.env['BASEURL_IMG'].toString();
}
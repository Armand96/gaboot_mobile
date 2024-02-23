import 'package:intl/intl.dart';

class FormatText {
  
  numFormat(double amount, String currency, int digit){
    final currencyFormat = NumberFormat.currency(locale: 'id_ID', symbol: currency, decimalDigits: digit);
    return currencyFormat.format(amount);
  }
}
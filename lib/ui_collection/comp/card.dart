import 'package:flutter/material.dart';
import 'package:gaboot_mobile/func_collection/format_text.dart';

class CardProduct extends StatelessWidget {
  final String title;
  final double price;
  const CardProduct({super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    String priceTxt = FormatText().numFormat(price, "Rp ", 0);

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Container(
              height: 200,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('asset/images/noimage.png'),
                  // image: NetworkImage(Config().baseUrlImage + categoryModel.link),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, textAlign: TextAlign.start),
                  Text(
                    priceTxt,
                    textAlign: TextAlign.start,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.star, color: Colors.yellow[800]),
                      Icon(Icons.star, color: Colors.yellow[800]),
                      Icon(Icons.star, color: Colors.yellow[800]),
                      Icon(Icons.star, color: Colors.yellow[800]),
                      Icon(Icons.star, color: Colors.yellow[800]),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

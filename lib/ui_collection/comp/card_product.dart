import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gaboot_mobile/func_collection/format_text.dart';
import 'package:gaboot_mobile/product/product_model.dart';
import 'package:gaboot_mobile/services/config.dart';

class CardProduct extends StatelessWidget {
  final Product product;
  final String thumbnailImgPath = 'asset/images/noimage.png';
  const CardProduct(
      {super.key,
      required this.product});

  @override
  Widget build(BuildContext context) {
    String priceTxt = FormatText().numFormat(product.price, "Rp ", 0);

    return buildCard(context, priceTxt);
  }


  Widget buildCard(BuildContext context, String priceTxt) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
      margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[350],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: [
        InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Image.network(Config().baseUrlImage + product.images![0].thumbnailPath),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 8),
          alignment: Alignment.centerLeft,
          child: Text(
            product.name,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            priceTxt,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(2, 5, 13, 5),
          child: starRating(),
        )
      ]),
    );
  }

  Widget starRating() {
    return RatingBar.builder(
      allowHalfRating: true,
      ignoreGestures: true,
      itemSize: 24,
      initialRating: 4.5,
      minRating: 0,
      maxRating: 5,
      direction: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.yellow[800],
      ),
      onRatingUpdate: (rating) {},
    );
  }
}

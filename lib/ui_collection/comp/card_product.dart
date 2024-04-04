import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gaboot_mobile/func_collection/format_text.dart';

class CardProduct extends StatelessWidget {
  final String title;
  final double price;
  final double rating;
  final String thumbnailImgPath = 'asset/images/noimage.png';
  const CardProduct(
      {super.key,
      required this.title,
      required this.price,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    String priceTxt = FormatText().numFormat(price, "Rp ", 0);

    return Card(
      // elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(thumbnailImgPath),
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
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [starRating()],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget starRating() {
    return RatingBar.builder(
      allowHalfRating: true,
      ignoreGestures: true,
      itemSize: 24,
      initialRating: rating,
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

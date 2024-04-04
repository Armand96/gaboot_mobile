import 'package:flutter/material.dart';
import 'package:gaboot_mobile/product/product_model.dart';
import 'package:gaboot_mobile/ui_collection/comp/card_product.dart';

class ListProdPilihanComponent extends StatelessWidget {
  final List<Product> products;
  const ListProdPilihanComponent({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    const String thumbnailImgPath = 'asset/images/noimage.png';
    return SizedBox(
      height: MediaQuery.of(context).size.height * .8,
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(products.length, (index) {
          return Center(
              child: GestureDetector(
            onTap: () {
              print('test click');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CardProduct(
                price: products[index].price,
                rating: 4.5,
                title: products[index].name,
              ),
            ),
          ));
        }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gaboot_mobile/product/product_model.dart';
import 'package:gaboot_mobile/ui_collection/comp/card_product.dart';

class ListProdPilihanComponent extends StatelessWidget {
  final List<Product> products;
  const ListProdPilihanComponent({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .78,
      child: GridView.count(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        crossAxisCount: 2,
        children: List.generate(products.length, (index) {
          return Center(
              child: GestureDetector(
            onTap: () {
              print('test click');
            },
            child: CardProduct(
              price: products[index].price,
              rating: 4.5,
              title: products[index].name,
            ),
          ));
        }),
      ),
    );
  }
}

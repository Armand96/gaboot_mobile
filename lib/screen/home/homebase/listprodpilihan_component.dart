import 'package:flutter/material.dart';
import 'package:gaboot_mobile/product/product_model.dart';

class ListProdPilihanComponent extends StatelessWidget {
  final List<Product> products;
  const ListProdPilihanComponent({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
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
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('asset/images/noimage.png'),
                        // image: NetworkImage(Config().baseUrlImage + categoryModel.link),
                      ),
                    ),
                  ),
                  Text(
                    products[index].name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

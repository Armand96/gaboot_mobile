import 'package:flutter/material.dart';
import 'package:gaboot_mobile/category/category_model.dart';

class HomebaseCategoryComponent extends StatelessWidget {
  final List<Category> categories;
  const HomebaseCategoryComponent({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    // const String thumbnailImgPath = 'asset/images/noimage.png';
    // return gridView(context);
    return lvRow(context);
  }

  lvRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: List.generate(categories.length, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  print(categories[index].toJson());
                },
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
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
                      categories[index].name,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
  
}

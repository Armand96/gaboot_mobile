import 'package:flutter/material.dart';

class ListProdPilihanComponent extends StatelessWidget {
  const ListProdPilihanComponent({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    return SizedBox(
      height: MediaQuery.of(context).size.height * .8,
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(data.length, (index) {
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
                  const Text("Test"),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gaboot_mobile/ui_collection/button/button.dart';

class HomeBaseScreen extends StatefulWidget {
  const HomeBaseScreen({super.key});

  @override
  State<HomeBaseScreen> createState() => _HomeBaseScreenState();
}

class _HomeBaseScreenState extends State<HomeBaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 2),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          topBanner(),
          Flexible(child: filter(), flex: 0),
          Flexible(child: listProduct()),
        ],
      ),
    );
  }

  filter() {
    const String textFilter = "Filter";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Text(
            textFilter,
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Button(
              enabled: true,
              fullWidth: false,
              text: "Harga",
              isOutline: false,
              funcs: () {},
            ),
            Button(
              enabled: true,
              fullWidth: false,
              text: "Lokasi",
              isOutline: false,
              funcs: () {},
            ),
            Button(
              enabled: true,
              fullWidth: false,
              text: "Lainnya",
              isOutline: false,
              funcs: () {},
            ),
          ],
        )
      ],
    );
  }

  listProduct() {
    List<int> data = [1, 2, 3, 4, 5];
    return GridView.count(
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
    );
  }

  topBanner() {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('asset/images/noimage.png'),
          // image: NetworkImage(Config().baseUrlImage + categoryModel.link),
        ),
      ),
    );
  }
}

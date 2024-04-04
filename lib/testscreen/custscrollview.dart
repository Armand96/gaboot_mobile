import 'package:flutter/material.dart';
import 'package:gaboot_mobile/ui_collection/button/button.dart';
import 'package:gaboot_mobile/ui_collection/color_system.dart';
// import 'package:gaboot_mobile/ui_collection/gradien_appbar.dart';

class CustScrollView extends StatefulWidget {
  const CustScrollView({super.key});

  @override
  State<CustScrollView> createState() => _CustScrollViewState();
}

class _CustScrollViewState extends State<CustScrollView> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  Future<void> _refresh() async {
    // Simulate a network request or any async operation
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      print("updated");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: _refresh,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              flexibleSpace: appBar(),
              expandedHeight: 70,
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  topBanner(),
                  filter(),
                  listProduct()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /*  */
  filter() {
    const String textFilter = "Filter";
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Column(
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
      ),
    );
  }

  listProduct() {
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

  /* APP BAR */
  PreferredSizeWidget? appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight + 40),
      child: Container(
        // padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: AppBar(
          title: TextField(
            style: const TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: const InputDecoration(
              hintText: 'Cari barang yang kamu inginkan...',
              hintStyle: TextStyle(color: Colors.white54),
              border: InputBorder.none,
            ),
            onChanged: (value) {},
          ),
          backgroundColor: ColSys().primary,
        ),
      ),
    );
  }
}

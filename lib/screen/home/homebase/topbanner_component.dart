import 'package:flutter/material.dart';

class TopBannerComponent extends StatelessWidget {
  const TopBannerComponent({super.key, required this.imgPath});
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('asset/images/banner.jpg'),
          // image: NetworkImage(Config().baseUrlImage + categoryModel.link),
        ),
      ),
    );
  }
}

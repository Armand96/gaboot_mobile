import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gaboot_mobile/banner/banner_model.dart';
import 'package:gaboot_mobile/services/config.dart';

class TopBannerComponent extends StatelessWidget {
  const TopBannerComponent({super.key, required this.banners});
  // final String imgPath;
  final List<BannerM> banners;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: banners.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          height: MediaQuery.of(context).size.height / 5,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage(Config().baseUrlImage +
                  banners.elementAt(index).imagePath!),
            ),
          ),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 10),
        enlargeCenterPage: true,
        viewportFraction: .84,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
        aspectRatio: 2.0,
        initialPage: 0,
      ),
    );
  }
}

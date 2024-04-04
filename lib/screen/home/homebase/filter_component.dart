import 'package:flutter/material.dart';
import 'package:gaboot_mobile/ui_collection/button/button.dart';

class FilterComponent extends StatelessWidget {
  const FilterComponent({super.key});
  final String textFilter = "Filter";

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text(
              textFilter,
              textAlign: TextAlign.left,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
}
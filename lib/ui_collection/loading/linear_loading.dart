import 'package:flutter/material.dart';
import 'package:gaboot_mobile/ui_collection/color_system.dart';

class LinearLoading extends StatefulWidget {
  final AnimationController ctrl;
  final double ?height;
  const LinearLoading({super.key, required this.ctrl, this.height});

  @override
  // ignore: no_logic_in_create_state
  State<LinearLoading> createState() => _LinearLoadingState(controller: ctrl);
}

class _LinearLoadingState extends State<LinearLoading>
    with TickerProviderStateMixin {
  late AnimationController controller;

  _LinearLoadingState({required this.controller});

  // @override
  // void initState() {
  //   controller = AnimationController(
  //     /// [AnimationController]s can be created with `vsync: this` because of
  //     /// [TickerProviderStateMixin].
  //     vsync: this,
  //     duration: const Duration(seconds: 5),
  //   )..addListener(() {
  //       setState(() {});
  //     });
  //   controller.repeat(reverse: false);
  //   super.initState();
  // }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          LinearProgressIndicator(
            value: controller.value,
            semanticsLabel: 'Linear progress indicator',
            color: ColSys().primary,
            minHeight: widget.height != null ? widget.height : 10,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ],
      ),
    );
  }
}

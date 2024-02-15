import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String? btnColor;
  final String text;
  final bool enabled;
  final bool fullWidth;
  final bool isOutline;
  final Function() funcs;
  const Button(
      {super.key,
      this.btnColor,
      required this.enabled,
      required this.fullWidth,
      required this.text,
      required this.isOutline,
      required this.funcs});

  Color? appBtnColor() {
    if (enabled) {
      switch (btnColor) {
        case "primary":
          return Colors.purple;
        case "success":
          return Colors.green;
        case "info":
          return Colors.blue;
        case "warning":
          return Colors.yellow;
        case "danger":
          return Colors.red;
        case "dark":
          return Colors.black87;
        default:
          return Colors.purple;
      }
    } else {
      switch (btnColor) {
        case "primary":
          return Colors.purple[100];
        case "success":
          return Colors.green[100];
        case "info":
          return Colors.blue[100];
        case "warning":
          return Colors.yellow[100];
        case "danger":
          return Colors.red[100];
        case "dark":
          return Colors.black26;
        default:
          return Colors.purple[100];
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Color? colors = appBtnColor();
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: isOutline ? null : colors,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: !isOutline ? null : Border.all(color: colors!, width: 2)
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: fullWidth ? const Size.fromHeight(50) : null,
              foregroundColor: isOutline ? colors : Colors.white,
              padding: const EdgeInsets.all(16.0),
              textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            onPressed: enabled ? funcs : null,
            child: Text(text),
          ),
        ],
      ),
    );
  }
}

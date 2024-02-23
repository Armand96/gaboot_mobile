import 'package:flutter/material.dart';
import 'package:gaboot_mobile/ui_collection/color_system.dart';

class Button extends StatelessWidget {
  final String? btnColor;
  final String text;
  final bool enabled;
  final bool fullWidth;
  final bool isOutline;
  final Function() funcs;
  final ColSys colsys = ColSys();

  Button(
      {super.key,
      this.btnColor,
      required this.enabled,
      required this.fullWidth,
      required this.text,
      required this.isOutline,
      required this.funcs});

  Color? appBtnColor(BuildContext context) {
    if (enabled) {
      switch (btnColor) {
        case "primary":
          return colsys.primary;
        case "success":
          return colsys.success;
        case "info":
          return colsys.info;
        case "warning":
          return colsys.warning;
        case "danger":
          return colsys.danger;
        case "dark":
          return Colors.black87;
        default:
          return colsys.primary;
      }
    } else {
      switch (btnColor) {
        case "primary":
          return colsys.primaryDisabled;
        case "success":
          return colsys.successDisabled;
        case "info":
          return colsys.infoDisabled;
        case "warning":
          return colsys.warningDisabled;
        case "danger":
          return colsys.dangerDisabled;
        case "dark":
          return Colors.black26;
        default:
          return colsys.primaryDisabled;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Color? colors = appBtnColor(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                  color: isOutline ? null : colors,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border:
                      !isOutline ? null : Border.all(color: colors!, width: 2)),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: fullWidth ? const Size.fromHeight(50) : null,
              foregroundColor: isOutline ? colors : Colors.white,
              padding: const EdgeInsets.all(16.0),
              textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            onPressed: enabled ? funcs : null,
            child: Text(text),
          ),
        ],
      ),
    );
  }
}

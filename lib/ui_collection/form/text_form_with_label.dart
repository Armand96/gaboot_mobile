import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  final Function(String) ?func;
  final TextEditingController txtCtrl;
  final String hintText;
  final bool? isFormField;
  final Icon? iconPrefix;
  final Icon? iconSuffix;
  final bool? obscureText;
  const InputForm(
      {super.key,
      required this.hintText,
      required this.isFormField,
      this.func,
      required this.txtCtrl,
      this.iconPrefix,
      this.iconSuffix,
      this.obscureText});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  bool isObscure = false;

  @override
  void initState(){
    isObscure = widget.obscureText == null ? false : true;
    super.initState();
  }

  @override
  void dispose() {
    widget.txtCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: widget.isFormField! ? txtFrmField() : txtField(),
    );
  }

  Widget txtFrmField() {
    return TextFormField(
      controller: widget.txtCtrl,
      obscureText: isObscure,
      // validator: widget.func,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: widget.iconPrefix,
        suffixIcon: widget.iconSuffix,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: widget.hintText,
      ),
    );
  }

  Widget txtField() {
    return TextField(
      controller: widget.txtCtrl,
      obscureText: isObscure,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: widget.iconPrefix,
        suffixIcon: widget.iconSuffix,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: widget.hintText,
      ),
    );
  }
}

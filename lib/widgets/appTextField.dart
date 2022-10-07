import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String)? onChange;
  final Function()? onTap;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final String? hintLabel;

  AppTextField(
      {Key? key,
      required this.controller,
      this.onChange,
      this.onTap,
      this.textInputAction = TextInputAction.done,
      this.textInputType = TextInputType.text, this.hintLabel = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: textInputType,
      onChanged: onChange,
      onTap: onTap,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: hintLabel,
        hintStyle: TextStyle(
          color: Colors.black
        )
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

TextFormField CostumeTextField(
    String hintText, TextEditingController controller) {
  return TextFormField(
    style: TextStyle(fontSize: 15),
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(fontSize: 15),
      contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      alignLabelWithHint: true,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 3, color: kprimaryColor),
        borderRadius: BorderRadius.circular(textFieldsBorderRadius),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: kgreyColor),
        borderRadius: BorderRadius.circular(textFieldsBorderRadius),
      ),
    ),
    controller: controller,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return "Field cannot be empty";
      }
      //you can add more strictements for the username and Bio
      return null;
    },
  );
}

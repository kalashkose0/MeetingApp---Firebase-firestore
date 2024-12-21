import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextField(
    TextEditingController controller,
    TextInputType keyboardtype,
    bool tohide,
    String hintext,
    IconData icon,
  ) {
    return Container(
      height: 67,
      width: 353,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: const Color(0XFFF3F2F2)),
      child: Center(
        child: TextField(
          controller: controller,
          keyboardType: keyboardtype,
          obscureText: tohide,
          obscuringCharacter: "*",
          decoration: InputDecoration(
              hintText: hintext,
              hintStyle:
                  const TextStyle(fontSize: 12, color: Color(0XFF181725)),
              prefixIcon: Icon(
                icon,
                color: const Color(0XFF181725),
              ),
              border: InputBorder.none),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:paploshita/Constants/Constants.dart';
class CustomTextField extends StatelessWidget {
  String hint;
  Widget prefixIcon;
  CustomTextField({Key key,@required this.hint,this.prefixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: prefixIcon,
        contentPadding: EdgeInsets.symmetric(vertical: 7),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide(color: mainColor)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide(color: mainColor)
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide(color: mainColor)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide(color: mainColor)
        ),

      ),
    );
  }
}

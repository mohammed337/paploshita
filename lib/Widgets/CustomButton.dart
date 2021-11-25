import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  Color borderColor,buttonColor,textColor;
  String text;
  double width,height;
  CustomButton({Key key,@required this.borderColor,@required this.buttonColor,@required this.textColor,@required this.text,@required this.height,@required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: borderColor),
        color: buttonColor
      ),
      alignment: Alignment.center,
      child: Text(text,style: TextStyle(color: textColor,fontSize: 17),),
    );
  }
}

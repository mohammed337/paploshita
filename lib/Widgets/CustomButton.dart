import 'package:flutter/material.dart';
import 'package:paploshita/Constants/Constants.dart';
class CustomButton extends StatelessWidget {
  Color borderColor,buttonColor,textColor;
  String text;
  double width,height;
  CustomButton({Key key,@required this.borderColor,@required this.buttonColor,@required this.textColor,@required this.text,@required this.height,@required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: mainColor,
      padding: EdgeInsets.symmetric(horizontal: 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
      onPressed: (){

      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: borderColor),
          color: buttonColor
        ),
        alignment: Alignment.center,
        child: Text(text,style: TextStyle(color: textColor,fontSize: 17),),
      ),
    );
  }
}

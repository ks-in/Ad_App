import 'package:adamskaya_app/style/colors.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  //TextStyle textStyle;
  //textStyle = defaultTextStyle();

  const TextWidget(
      {Key? key,
        required this.text,
        this.fontSize = 16,
        this.color = AppColors.mainTextColor,
        this.fontWeight = FontWeight.normal
       // required this.textStyle = textStyle
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: fontSize, color: color, fontFamily: 'Acumin',fontWeight: fontWeight));
    //return Text(text, style: textStyle);
  }
}

TextStyle defaultTextStyle ({double fontSize = 16, Color color = AppColors.mainTextColor, String fontFamily='Acumin', FontWeight fontWeight = FontWeight.normal}){
  return TextStyle(fontSize: fontSize, color: color, fontFamily: 'Acumin',fontWeight: fontWeight);
}

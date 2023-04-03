import 'package:flutter/material.dart';

import '../../style/colors.dart';
import 'default_text.dart';

class DefaultButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback function;

  const DefaultButtonWidget({
    Key? key,
    required this.text,
    this.color = AppColors.mainColor,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //double w = MediaQuery.of(context).size.width;
    //double h = MediaQuery.of(context).size.height;

    return Container(
      //alignment: Alignment.bottomCenter,
      //transformAlignment: AlignmentGeometry.,
      margin: EdgeInsets.only(left: 20, right: 20),
      padding: const EdgeInsets.all(8),
      //width: w * 0.4,
      //height: h * 0.06,
      //padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        // AppColors.mainColor,//Color(0xFFf7418c)
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(),
      ),

      child: Center(
          child: MaterialButton(onPressed: function,
          //color: Colors.black,
          child:  TextWidget(
            text: text,
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),)
         ),
    );
  }
}

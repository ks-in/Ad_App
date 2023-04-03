import 'package:adamskaya_app/style/colors.dart';
import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  final String hintText;

  final IconData prefixIcon;
  //final Color colorPrefixIcon;
  //final Color sizePrefixIcon;

  final IconData? suffixIcon;
  //final Color colorSuffixIcon;
  //final Color sizeSuffixIcon;

  final Color fillColor;

  //final TextInputType keyboardType;

  const InputFieldWidget(
      {Key? key,
      required this.hintText,
      required this.prefixIcon,
      this.suffixIcon,
      this.fillColor =
          const Color.fromARGB(255, 124, 137, 159) //Colors.deepPurple//,
      //this.keyboardType = TextInputType.number
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultIconSize = 17;
    String defaultFontFamily = 'Acumin';
    double defaultFontSize = 16;

    TextStyle defaultTextStyle = TextStyle(
      color: AppColors.mainSignatureColor,
      fontFamily: defaultFontFamily,
      fontSize: defaultFontSize,
     // fontWeight: FontWeight.w600,
    );

    return TextField(
      showCursor: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        /*focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: AppColors.mainColor, width: 3)),*/
        filled: true,
        prefixIcon: Icon(
          prefixIcon,
          color: AppColors.mainSignatureColor,
          //size: defaultIconSize,
        ),
        suffixIcon: Icon(
          suffixIcon,
          color: AppColors.mainSignatureColor,
          //size: defaultIconSize,
        ),
        fillColor: AppColors.softGreyColor,
        hintStyle: defaultTextStyle,
        hintText: hintText,
        //labelText: hintText,
       // floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );

    /* Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 7,
                offset: Offset(1, 1),
                color: Colors.grey.withOpacity(0.2)
            )
          ]),
      child: TextField(
          //keyboardType: keyboardType,
          decoration: InputDecoration(
            //fillColor: Colors.deepPurple.shade100,
            //filled: true,

              hintText: hintText,
              hintStyle: TextStyle(color: color),
              labelStyle: TextStyle(color: color),
              prefixIcon: Icon(
                prefixIcon,
                color: color,
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.white, width: 1)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.white, width: 1)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)))),
    )*/

    ;
  }
}

class InputFieldWidget0 extends StatelessWidget {
  final String hintText;

  final IconData prefixIcon;
  //final Color colorPrefixIcon;
  //final Color sizePrefixIcon;

  final IconData? suffixIcon;
  //final Color colorSuffixIcon;
  //final Color sizeSuffixIcon;

  final Color color;

  //final TextInputType keyboardType;

  const InputFieldWidget0(
      {Key? key,
        required this.hintText,
        required this.prefixIcon,
        this.suffixIcon,
        this.color =
        const Color.fromARGB(255, 124, 137, 159) //Colors.deepPurple//,
        //this.keyboardType = TextInputType.number
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 7,
                offset: Offset(1, 1),
                color: Colors.grey.withOpacity(0.2))
          ]),
      child: TextField(
          decoration: InputDecoration(
              hintText: 'Password',
              labelStyle: TextStyle(color: Colors.deepPurple.withOpacity(0.9)),
              prefixIcon: Icon(
                Icons.lock_outlined,
                color: Colors.deepPurple,
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.white, width: 1)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.white, width: 1)),
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30)))),
    );
  }
}

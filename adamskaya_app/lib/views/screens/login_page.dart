//import 'dart:ui';

import 'package:adamskaya_app/style/colors.dart';
import 'package:adamskaya_app/views/screens/otp_verification_page.dart';
import 'package:adamskaya_app/views/screens/signup_page.dart';
import 'package:adamskaya_app/views/screens/switcher_page.dart';
import 'package:adamskaya_app/views/widgets/default_button.dart';
import 'package:adamskaya_app/views/widgets/default_text_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/default_text.dart';
import '../widgets/input_field.dart';
import '../widgets/logo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    //Colors.deepPurpleAccent
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      //Colors.grey.shade50//Colors.white,
      body:
          //Container(
          // child:
          //SafeArea(
          //Center(
          // child:
          SingleChildScrollView(
        // physics: const BouncingScrollPhysics(),
        //scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            // Text('data'),
            Container(
              alignment: Alignment.bottomCenter,
              //transformAlignment: AlignmentGeometry.,
              margin: EdgeInsets.only(left: 20, top: h * 0.15, right: 20),
              //width: w,
              //height: h * 0.25,
              child: Center(child: LogoWidget()),
              decoration: BoxDecoration(
                  //border: Border.all(),
                  /*image: DecorationImage(
                        //colorFilter: ColorFilter.,
                          alignment: Alignment.bottomCenter,
                          //fit: BoxFit.contain,
                          image: AssetImage('assets/images/logo.png')
                          ),*/
                  ),
            ),

            SizedBox(
              height: 70,
            ),
            Container(
              //width: w,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextWidget(
                    text: 'Войдите в профиль',
                    color: AppColors.mainSignatureColor,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InputFieldWidget(
                    hintText: 'Электронная почта',
                    prefixIcon: Icons.person_outline,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InputFieldWidget(
                    hintText: 'Пароль',
                    prefixIcon: Icons.lock_outline,
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      DefaultTextButtonWidget(
                          function: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => OTPVerificationPage()));
                          },
                          text: TextWidget(
                              text: 'Забыли пароль?',
                              color: AppColors.mainSignatureColor)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),

            DefaultButtonWidget(text: 'Войти',function: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SwitcherPage())),),

            SizedBox(
              height: 10,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'Нет профиля?',
                  style: TextStyle(
                      color: AppColors.mainSignatureColor, fontSize: 16),
                  children: [
                    TextSpan(
                      text: ' Зарегистрироваться',
                      style: TextStyle(
                          color: AppColors.blueTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage())),
                      mouseCursor: SystemMouseCursors.precise,
                    )
                  ]),
            ),
          ],
        ),
      ),
      // )//,
      //),
    );
  }
}

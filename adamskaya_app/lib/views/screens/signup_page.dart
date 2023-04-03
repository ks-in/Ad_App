import 'package:adamskaya_app/views/screens/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../widgets/default_button.dart';
import '../widgets/default_text.dart';
import '../widgets/input_field.dart';
import '../widgets/logo.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.bottomCenter,
            //transformAlignment: AlignmentGeometry.,
            margin: EdgeInsets.only(left: 20, top: h * 0.1, right: 20),
            //width: w,
            //height: h * 0.25,
            child: Center(child: LogoWidget()),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              //width: w,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextWidget(
                      text: 'Зарегистрироваться',
                      color: AppColors.mainSignatureColor),
                  SizedBox(
                    height: 5,
                  ),
                  InputFieldWidget(
                    hintText: 'Фамилия',
                    prefixIcon: Icons.person_outline,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InputFieldWidget(
                    hintText: 'Имя',
                    prefixIcon: Icons.person_outline,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InputFieldWidget(
                    hintText: 'Электронная почта',
                    prefixIcon: Icons.email,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InputFieldWidget(
                    hintText: 'Номер телефона',
                    prefixIcon: Icons.phone,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InputFieldWidget(
                    hintText: 'Пароль',
                    prefixIcon: Icons.lock_outline,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InputFieldWidget(
                    hintText: 'Подтверждение пароля',
                    prefixIcon: Icons.lock_outline,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  DefaultButtonWidget(text: 'Зарегистрироваться',function: (){},),

                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'Уже есть профиль?',
                        style: TextStyle(
                            color: AppColors.mainSignatureColor, fontSize: 16),
                        children: [
                          TextSpan(
                            text: ' Войдите здесь',
                            style: TextStyle(
                                color: AppColors.blueTextColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage())),
                            mouseCursor: SystemMouseCursors.precise,
                          )
                        ]),

                  ),
                ],
              ))
        ],
      )),
    );
  }
}

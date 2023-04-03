import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../style/colors.dart';
import '../widgets/default_button.dart';
import '../widgets/default_text.dart';

class OTPVerificationPage extends StatelessWidget {
  const OTPVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: <Widget>[
                    TextWidget(
                      text: 'Восстановление пароля',
                      fontSize: 28,
                    ),
                    SizedBox(height: 20,),
                    TextWidget(
                      text: 'Укажите адресс электронной почты, которую Вы использовали для входа',
                      color: AppColors.mainSignatureColor,
                    ),
                    SizedBox(height: 20,),
                    PinCodeTextField(
                        appContext: (context),
                        length: 4,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderWidth: 1.5,
                          borderRadius: BorderRadius.circular(8),
                          fieldHeight: 70,
                          fieldWidth: 70,
                          activeColor: AppColors.mainColor,
                          inactiveColor: AppColors.mainSignatureColor,
                          //inactiveFillColor: Colors.green,
                          //activeFillColor:  Colors.red,
                        ),
                        onChanged: (value){}),
                    SizedBox(
                      height: 20,
                    ),
                    DefaultButtonWidget(text: 'Отправить',function: (){},),


                  ],
                )),
          ],
        ),
      ),
    );
  }
}

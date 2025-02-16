import 'package:chatbot/common/app_text_styles.dart';
import 'package:chatbot/features/siginin/widgets/password_input_widget.dart';
import 'package:chatbot/features/siginin/widgets/text_input_field_widget.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 42.0),
        child: ListView(
          children: [
            Text(
              "Conecte-se com nosso chatbot!",
              style: AppTextStyles.bigText,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
            ),
            Form(child: Column(
              children: [
                TextFormFieldWidget(
                  hintText: "John Doe", 
                  labelText: "Username",
                  capitalization: TextCapitalization.words,
                  textInputType: TextInputType.name,
                ),
                TextFormFieldWidget(
                  hintText: "example@example.com", 
                  labelText: "E-mail",
                  textInputType: TextInputType.emailAddress,
                ),
                PasswordInputWidget(
                  hintText: "*******",
                  labelText: "PASSWORD",
                  textInputType: TextInputType.visiblePassword,
                  suffixIcon: Icon(Icons.visibility),
                )
              ],
            ))
          ],
        ),
      )
    );
  }
}

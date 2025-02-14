import 'package:chatbot/features/siginin/widgets/text_input_field_widget.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            "Conecte-se com nosso chatbot!"
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
              )
            ],
          ))
        ],
      )
    );
  }
}

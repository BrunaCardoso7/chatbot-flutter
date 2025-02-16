
import 'package:chatbot/features/siginin/widgets/text_input_field_widget.dart';
import 'package:flutter/material.dart';

class PasswordInputWidget extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final TextCapitalization? capitalization;
  final TextInputType? textInputType;
  final Widget? suffixIcon;
  final bool? obscureText;
  const PasswordInputWidget({
    super.key, 
    this.padding, 
    this.labelText, 
    this.hintText, 
    this.controller, 
    this.capitalization, 
    this.textInputType, 
    this.suffixIcon, 
    this.obscureText,
  });

  @override
  State<PasswordInputWidget> createState() => _PasswordInputWidgetState();
}

class _PasswordInputWidgetState extends State<PasswordInputWidget> {
  final defaultBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: Color(0XFF490BEF))
  );

  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFormFieldWidget(
      obscureText: isHidden,
      controller: widget.controller,
      hintText: widget.hintText,
      labelText: widget.labelText,
      padding: widget.padding,
      textInputType: widget.textInputType,
      capitalization: widget.capitalization,
      suffixIcon: InkWell(
        borderRadius: BorderRadius.circular(23.0),
        onTap: () {
          setState(() {
            isHidden = !isHidden;
          });
        },
        child: Icon(
          isHidden ? Icons.visibility : Icons.visibility_off
        ),
      ),
    );
  }
}
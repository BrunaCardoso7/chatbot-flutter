import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final TextCapitalization? capitalization;
  final TextInputType? textInputType;
  final Widget? suffixIcon;
  final bool? obscureText;
  final String? Function(String?)? validator;
  const TextFormFieldWidget({
    super.key, 
    this.padding, 
    this.labelText, 
    this.hintText, 
    this.controller, 
    this.capitalization, 
    this.textInputType, 
    this.suffixIcon, 
    this.obscureText, 
    this.validator,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  final defaultBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: Color(0XFF490BEF))
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.all(32.0),
      child: TextFormField(
          textCapitalization: widget.capitalization ?? TextCapitalization.none,
          keyboardType: widget.textInputType ?? TextInputType.none,
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hintText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: widget.labelText?.toUpperCase(),
            border: defaultBorder,
            focusedBorder: defaultBorder,
            disabledBorder: defaultBorder,
            enabledBorder: defaultBorder,
            errorBorder: defaultBorder, 
            suffixIcon: widget.suffixIcon,
            
          ),
          obscureText: widget.obscureText ?? false,
          validator: widget.validator,
      ),
    );
  }
}
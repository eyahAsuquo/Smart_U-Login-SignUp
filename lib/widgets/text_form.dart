import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  const TextForm({
    super.key,
    this.focus = 'Email',
    this.icon = Icons.email_rounded,
    this.keyboardType = TextInputType.name,
  });

  final String? focus;
  final IconData? icon;
  final TextInputType? keyboardType;

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  InputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: const BorderSide(
      color: Color(0xffC4C4C4),
      width: 1.5,
      style: BorderStyle.solid,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          hintText: widget.focus,
          hintStyle: TextStyle(
            color: Colors.red.withOpacity(0.3),
          ),
          prefixIcon: Icon(
            widget.icon,
          ),
          prefixIconColor: Colors.red.withOpacity(0.3),
          border: border,
          enabledBorder: border,
          focusedBorder: border,
        ),
      ),
    );
  }
}

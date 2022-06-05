import 'package:crlo/view/widgets/text_field_container.dart';
import 'package:flutter/material.dart';


class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Color(0xfff3766f),
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color:Color(0xfff3766f),
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Color(0xfff3766f),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:praktikum_pember/shared/theme.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final String hint;
  final int? maxLines;
  final String? Function(String?)? validator;

  final TextEditingController controller;

  const CustomInput({
    super.key,
    required this.label,
    required this.hint,
    this.maxLines = 1,
    this.validator,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: blackTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
        ),
        SizedBox(height: 8),
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: TextFormField(
            maxLines: maxLines,
            controller: controller,
            validator: validator,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
              hintStyle: greyTextStyle,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: kPrimaryColor),
                borderRadius: BorderRadius.circular(8),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.red),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:praktikum_pember/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final String? url;
  final Color? backgroundColor;
  final Color? textColor;
  final bool underline;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.title,
    this.url = "",
    this.backgroundColor,
    this.textColor,
    this.underline = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12, bottom: 10),
      decoration: BoxDecoration(
        color: backgroundColor ?? kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 48,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            title,
            style:
                (textColor == null
                    ? whiteTextStyle.copyWith(
                      fontWeight: bold,
                      decoration: underline ? TextDecoration.underline : null,
                      decorationColor: kPrimaryColor,
                    )
                    : TextStyle(
                      color: textColor,
                      fontWeight: bold,
                      decoration: underline ? TextDecoration.underline : null,
                      decorationColor: kPrimaryColor,
                    )),
          ),
        ),
      ),
    );
  }
}

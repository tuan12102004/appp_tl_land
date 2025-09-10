import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthEndText extends StatelessWidget {
  const AuthEndText({
    super.key,
    required this.onPressed,
    required this.firstText,
    required this.secondText,
  });
  final VoidCallback onPressed;
  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
          color: TextColors.textButtonPlain,
        ),
        children: [
          TextSpan(text: firstText),
          TextSpan(
            text: secondText,
            recognizer: TapGestureRecognizer()..onTap = onPressed,
          ),
        ],
      ),
    );
  }
}

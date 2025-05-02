import 'package:flutter/material.dart';

import '../theme/text_styles.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String buttonText;
  final void Function()? onPressed;
  const SectionHeader({
    super.key,
    required this.title,
    required this.buttonText,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyles.font14WhiteBoldPoppins),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: TextStyles.font10LimePastelRegularNunitoSans,
          ),
        ),
      ],
    );
  }
}

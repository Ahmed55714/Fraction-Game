import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class TextWithDot extends StatelessWidget {
  final String text;

  const TextWithDot({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 4,
          height: 4,
          color: AppColors.primary,
          margin: const EdgeInsets.only(top: 6),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}

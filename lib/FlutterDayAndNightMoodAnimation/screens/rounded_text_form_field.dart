import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedTextFormField extends StatelessWidget {
  const RoundedTextFormField({
    super.key,
    required this.title,
    required this.initialValue,
    required this.hintText,
  });

  final String title;
  final String initialValue;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        const VerticalSpacing(of: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: TextFormField(
            controller: TextEditingController(text: initialValue),
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              isDense: true,
              contentPadding: EdgeInsets.all(15),
            ),
          ),
        ),
      ],
    );
  }
}

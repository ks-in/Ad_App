import 'package:flutter/material.dart';

import 'default_text.dart';

class DefaultTextButtonWidget extends StatelessWidget {

  final VoidCallback function;
  final TextWidget text;

  const DefaultTextButtonWidget({
    Key? key,
    required this.function,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: function,
        child: text
    );
  }
}

import 'package:flutter/material.dart';

class BlogEditor extends StatelessWidget {
  final TextEditingController textControlller;
  final String hintText;
  const BlogEditor(
      {super.key, required this.textControlller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textControlller,
      decoration: InputDecoration(hintText: hintText),
      maxLines: null,
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText is messing';
        }
        return null;
      },
    );
  }
}

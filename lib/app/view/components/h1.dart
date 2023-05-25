import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class h1 extends StatelessWidget {
  const h1(this.text, this.color, {Key? key}) : super(key: key);
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
    text,
    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: color,
),);
  }
}

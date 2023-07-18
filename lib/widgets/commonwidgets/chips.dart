import 'package:biz_mobile/util/bizcolor.dart';
import 'package:flutter/material.dart';

class Chips extends StatelessWidget {
  const Chips({super.key});
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Chip(
      label: Text(
        'Review pending',
        style: textTheme.bodySmall?.copyWith(color: BizColor.second_col),
        
      ),
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 4),
      backgroundColor: BizColor.primary_cont,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
    );
  }
}

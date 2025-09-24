
import 'package:flutter/material.dart';

class CostumeDivider extends StatelessWidget {
  late double width;
  CostumeDivider({super.key,required this.width});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width, // العرض اللي انتي عايزاه
        child: Divider(
          color: Colors.grey,
          thickness: 1,
        ),
      ),
    );
  }
}


import 'package:flutter/cupertino.dart';

class CostumeList<T> extends StatelessWidget {
  final List<T> list;
  final Widget Function(T item) itemBuilder;
  final double spacing;

  const CostumeList({
    super.key,
    required this.list,
    required this.itemBuilder,
    required this.spacing,
  });
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: list.length,
      itemBuilder: (context, index) => itemBuilder(list[index]),
      separatorBuilder: (context, index) => SizedBox(width: spacing),
    );
  }
}

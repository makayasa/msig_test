import 'package:flutter/material.dart';

class PersistentDelegate extends SliverPersistentHeaderDelegate {
  const PersistentDelegate({
    required this.child,
    required this.maxHeight,
    required this.minHeight,
  });
  final Widget child;

  final double maxHeight;
  final double minHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(
      child: child,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => maxHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
import 'package:flutter/material.dart';

class DelegateClass extends SliverPersistentHeaderDelegate {
final Widget child;
bool isSize = false;
DelegateClass({required this.child});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
      isSize = 0 == shrinkOffset ;
      if(isSize) {
        return child;
      }
      else{
        return Column(
          children: [
            Container(
              height: MediaQuery.of(context).padding.top,
              color: Colors.red.shade800,
            ),
            child,
          ],
        );
      }
  }

  @override
  double get maxExtent => isSize ? 90 : 130;

  @override
  double get minExtent => isSize ? 90 : 130;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
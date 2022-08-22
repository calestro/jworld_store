import 'package:flutter/material.dart';

class DelegateClass extends SliverPersistentHeaderDelegate {
final Widget child;
final Widget childPinned;
bool isSize = false;
DelegateClass({required this.child, required this.childPinned});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
      isSize = 0 == shrinkOffset ;
      if(isSize) {
        return Container(
          color: Colors.red,
          child: Column(
            children: [
              childPinned,
              Container(
                alignment: Alignment.center,
                color: Colors.white,
                  child: child
              ),
            ],
          ),
        );
      }
      else{
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: MediaQuery.of(context).padding.top,
              color: Colors.red.shade800,
            ),
            childPinned,
          ],
        );
      }
  }

  @override
  double get maxExtent =>160;

  @override
  double get minExtent =>130;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
import 'package:flutter/material.dart';

class BreadCrumbs extends StatelessWidget {
  final Color first;
  final Color second;
   final Color third;
  const BreadCrumbs({required this.first,required this.second,required this.third, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 106,
      height: 10,
      child: Row(
        children: [
          Container(
            width: 30,
            height: 10,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: first,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.85),
              ),
            ),
          ),
          Spacer(),
          Container(
            width: 30,
            height: 10,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: second,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.85),
              ),
            ),
          ),
          Spacer(),
          Container(
            width: 30,
            height: 10,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: third,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.85),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

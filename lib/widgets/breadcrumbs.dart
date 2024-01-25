import 'package:flutter/material.dart';

class BreadCrumbs extends StatelessWidget {
  const BreadCrumbs({super.key});

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
          color: Color.fromARGB(255, 23, 130, 110),
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
          color: Color(0xFFC5FFFA),
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
          color: Color(0xFFC5FFFA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.85),
          ),
        ),
      ),
      
    ],
  ),
)
;
  }
}
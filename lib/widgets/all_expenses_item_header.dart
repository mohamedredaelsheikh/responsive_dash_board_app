import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.imageIcon});
  final String imageIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       Container(
        height: 60,
        width: 60,
        decoration: ShapeDecoration(
         color: Color(0xffFAFAFA),
         shape: OvalBorder()
        ),
        child: Center(child: SvgPicture.asset(imageIcon))),
        Expanded(child: SizedBox()),
       Transform.rotate(
            angle: 1.57079633+1.57079633,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: const Color(0xFF064060),
            ),
          ),

      
    ]);
  }
}
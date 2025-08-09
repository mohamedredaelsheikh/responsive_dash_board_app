import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.imageIcon,
    this.imageBackground,
    this.imageColor,
  });
  final String imageIcon;
  final Color? imageBackground, imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            color: imageBackground ?? Color(0xffFAFAFA),
            shape: OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
              imageIcon,
              colorFilter: ColorFilter.mode(
                imageColor ?? Color(0xFF4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        Transform.rotate(
          angle: 1.57079633 + 1.57079633,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color:
                imageBackground == null
                    ? const Color(0xFF064060)
                    : Colors.white,
          ),
        ),
      ],
    );
  }
}

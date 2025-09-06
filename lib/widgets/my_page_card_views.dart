import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/widgets/my_card.dart';

class MyPageCardViews extends StatelessWidget {
  const MyPageCardViews({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,

      children: List.generate(3, (index) => MyCard()),
    );
  }
}



 




// i want to make the hight of the page view equal to the height of its child so i use expandable page view
// PageView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: 3,
//       itemBuilder: (context, index) {
//         return MyCard();
//       },
//     )
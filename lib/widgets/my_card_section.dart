import 'package:flutter/material.dart';
import 'package:responsive_dash_board_app/utils/app_styles.dart';
import 'package:responsive_dash_board_app/widgets/dots_indicators.dart';
import 'package:responsive_dash_board_app/widgets/my_page_card_views.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 420,

          child: Text("My Cards", style: AppStyles.styleSemiBold20(context)),
        ),
        SizedBox(height: 20),
        MyPageCardViews(pageController: pageController),
        SizedBox(height: 20),
        DotsIndicators(currentPage: currentPageIndex),
      ],
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:software_lab_assignment_flutter/res/color.dart';
import 'package:software_lab_assignment_flutter/res/common_components/wa_button.dart';
import 'package:software_lab_assignment_flutter/res/common_components/watext.dart';
import 'package:software_lab_assignment_flutter/utils/routes/routes_name.dart';

class OnBoard {
  final String image, title, description;
  final Color color;
  final int pageIndex;

  OnBoard({
    required this.image,
    required this.title,
    required this.description,
    required this.color,
    required this.pageIndex,
  });
}

// OnBoarding content list
final List<OnBoard> demoData = [
  OnBoard(
    image: "assets/images/onbording1.png",
    title: "Quality",
    color: AppColors.darkgreen,
    description:
        "Sell your farm fresh products directly to consumers, cutting out the middleman and reducing emissions of the global supply chain. ",
    pageIndex: 0,
  ),
  OnBoard(
    image: "assets/images/onbording2.png",
    title: "Convenient",
    color: AppColors.brown,
    pageIndex: 1,
    description:
        "Our team of delivery drivers will make sure your orders are picked up on time and promptly delivered to your customers.",
  ),
  OnBoard(
    image: "assets/images/onbording3.png",
    title: "Local",
    color: AppColors.yellow,
    pageIndex: 2,
    description: "We love the earth and know you do too! Join us in reducing our local carbon footprint one order at a time. ",
  ),
];

// OnBoardingScreen
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // Variables
  late PageController _pageController;
  int _pageIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Initialize page controller
    _pageController = PageController(initialPage: 0);
    // Automatic scroll behaviour
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_pageIndex < 2) {
        _pageIndex++;
      } else {
        _pageIndex = 0;
      }

      _pageController.animateToPage(
        _pageIndex,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    // Dispose everything
    _pageController.dispose();
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _pageIndex = index;
                });
              },
              itemCount: demoData.length,
              controller: _pageController,
              itemBuilder: (context, index) => OnBoardContent(
                color: demoData[index].color,
                title: demoData[index].title,
                description: demoData[index].description,
                image: demoData[index].image,
                pageindex: demoData[index].pageIndex,
              ),
            ),
          ),

          // Indicator area
        ],
      ),
    );
  }
}

// OnBoarding area widget
class OnBoardContent extends StatelessWidget {
  OnBoardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.color,
    required this.pageindex,
  });

  String image;
  String title;
  String description;
  Color color;
  int pageindex;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        children: [
          Image.asset(
            image,
            height: MediaQuery.of(context).size.height * 0.5,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  // Radius.circular(20),
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: Column(
                children: [
                  WaText(
                    title,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  WaText(
                    description,
                    textAlign: TextAlign.center,
                    fontsize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        demoData.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: DotIndicator(
                            isActive: index == pageindex,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  WAButton(
                    'Join the movement',
                    width: 50.w,
                    borderRadius: 50,
                    buttonColor: color,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesName.login);
                    },
                    child: const WaText(
                      "Login",
                      fontsize: 14,
                      underline: true,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Dot indicator widget
class DotIndicator extends StatelessWidget {
  const DotIndicator({
    this.isActive = false,
    super.key,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 24 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.white,
        border: isActive ? null : Border.all(color: Colors.blue),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}

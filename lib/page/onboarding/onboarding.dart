import 'package:flutter/material.dart';
import 'package:my_thesis/app_styles.dart';
import 'package:my_thesis/page/Auth/Login/login_screen.dart';
import 'package:my_thesis/size_config.dart';
import 'package:my_thesis/widgets/onboarding_nav_button.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:my_thesis/main.dart';
import '../../model/OnBoarding.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 8),
      duration: const Duration(milliseconds: 400),
      height: 8,
      width: currentPage == index ? 24 : 8,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : kDarkWhiteColor,
          borderRadius: BorderRadius.circular(8),
          shape: BoxShape.rectangle),
    );
  }

  Future setSeenOnboarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    seenOnboard = await prefs.setBool('seenOnboard', true);
  }

  @override
  void initState() {
    super.initState();
    setSeenOnboarding();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeVertical = SizeConfig.blockScreenVertical!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 9,
            child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onboardingContents.length,
                itemBuilder: (context, index) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                OnboardingNavButton(
                                    name: 'Skip',
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginScreen()));
                                    },
                                    buttonColor: kPrimaryColor)
                              ]),
                        ),
                        SizedBox(
                          height: sizeVertical * 50,
                          child: Image.asset(
                            onboardingContents[index].image,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          height: sizeVertical * 2,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              onboardingContents[index].title,
                              style: kTitleOnboarding,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: sizeVertical * 3,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              textAlign: TextAlign.justify,
                              onboardingContents[index].subtitle,
                              style: kSubtitleOnboarding.copyWith(
                                  overflow: TextOverflow.ellipsis),
                              maxLines: 4,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: sizeVertical * 5,
                        )
                      ],
                    )),
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  currentPage == onboardingContents.length - 1
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: List.generate(
                                onboardingContents.length,
                                (index) => AnimatedContainer(
                                  margin: const EdgeInsets.only(right: 8),
                                  duration: const Duration(milliseconds: 400),
                                  width: index == onboardingContents.length - 1
                                      ? 24
                                      : 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: kYellowColor,
                                      borderRadius: BorderRadius.circular(8),
                                      shape: BoxShape.rectangle),
                                ),
                              ),
                            ),
                            OnboardingNavButton(
                                name: 'Get started',
                                onPressed: () {
                                  Navigator.of(context).pushReplacementNamed(
                                      LoginScreen.routeName);
                                },
                                buttonColor: kYellowColor),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: List.generate(onboardingContents.length,
                                  (index) => dotIndicator(index)),
                            ),
                            OnboardingNavButton(
                                name: 'Next',
                                onPressed: () {
                                  _pageController.nextPage(
                                    duration: const Duration(milliseconds: 400),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                buttonColor: kPrimaryColor)
                          ],
                        )
                ]),
              )),
        ],
      )),
    );
  }
}

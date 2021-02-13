import 'package:eCommerceApp/models/onboarding_screen_data.dart';
import 'package:eCommerceApp/widgets/default_button.dart';
import 'package:eCommerceApp/widgets/onboarding_screen_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) {
                  return splachContent(
                    title: splashData[index]["title"],
                    subtitle: splashData[index]['subtitle'],
                    image: splashData[index]['image'],
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 2),
                    defaultButton(text: "Continue", press: () {}),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      margin: EdgeInsets.only(right: 5.0),
      height: 6.0,
      width: currentPage == index ? 20.0 : 6.0,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.orange : Colors.grey,
        borderRadius: BorderRadius.circular(3.0),
      ),
    );
  }
}

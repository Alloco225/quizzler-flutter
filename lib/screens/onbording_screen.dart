import 'package:flutter/material.dart';
import 'package:quizzler/routes.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    //

    PageController pvController = PageController(
      initialPage: currentPageIndex,
    );
    //
    void gotoWelcomeScreen() {
      Navigator.of(context).pushReplacementNamed(Routes.welcome);
    }

    //
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: PageView(
                controller: pvController,
                // pageSnapping: ,
                onPageChanged: (newIndex) {
                  setState(() {
                    currentPageIndex = newIndex;
                  });
                },
                children: [
                  // View 1
                  buildPage1(),
                  // View 2
                  buildPage2(),
                  // View 3
                  buildPage3(),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  color: Colors.blue,
                  // decoration: ,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //
                      FlatButton(
                        child:
                            Text(currentPageIndex == 0 ? "SKIP" : "PRECEDENT"),
                        onPressed: currentPageIndex == 0
                            ? gotoWelcomeScreen
                            : () {
                                pvController.animateToPage(--currentPageIndex,
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeIn);
                              },
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: currentPageIndex == 0
                                    ? Colors.red
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: currentPageIndex == 1
                                    ? Colors.red
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: currentPageIndex == 2
                                    ? Colors.red
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ],
                      ),
                      FlatButton(
                        child: Text(
                            currentPageIndex == 2 ? "COMMENCER" : "SUIVANT"),
                        onPressed: () {
                          currentPageIndex == 2
                              ? gotoWelcomeScreen()
                              : pvController.animateToPage(++currentPageIndex,
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeIn);
                        },
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

// ? Slide 1
buildPage1() {
  return Column(
    children: [
      Image.asset("images/pp.png"),
      Text("Lorem Ipsum Title"),
      Text("Lorem Ipsum description description description"),
    ],
  );
}

// ? Slide 2
buildPage2() {
  return Column(
    children: [
      Image.asset("images/pp.png"),
      Text("Lorem Ipsum Other TItle"),
      Text("Lorem Ipsum description description description"),
    ],
  );
}

// ? Slide 3
buildPage3() {
  return Column(
    children: [
      Image.asset("images/pp.png"),
      Text("Lorem Last Title in line"),
      Text("Lorem Ipsum description description description"),
    ],
  );
}

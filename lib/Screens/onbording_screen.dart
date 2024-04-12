import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shoping_app_ui/Screens/home_screen.dart';

class OnbordingScreen extends StatelessWidget {
  OnbordingScreen({super.key});

  final introKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Shop Now',
              body:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
              image: buildImage("assets/images/splash1.png"),
              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Big Discount',
              body:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
              image: buildImage("assets/images/splash2.png"),
              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Free Delivery',
              body:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
              image: buildImage("assets/images/splash3.png"),
              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
          ],
          onDone: () {
            if (kDebugMode) {
              print("Done clicked");
            }
          },
          //ClampingScrollPhysics prevent the scroll offset from exceeding the bounds of the content.
          scrollPhysics: const ClampingScrollPhysics(),
          showDoneButton: true,
          showNextButton: true,
          showSkipButton: true,
          // isBottomSafeArea: true,
          skip:
              const Text("Skip", style: TextStyle(fontWeight: FontWeight.w600)),
          next: const Icon(Icons.forward),
          done: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            child: const Text(
              "Done",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          dotsDecorator: getDotsDecorator()),
    );
  }

  //widget to add the image on screen
  Widget buildImage(String imagePath) {
    return Center(
        child: Image.asset(
      imagePath,
      width: 450,
      height: 200,
    ));
  }

  //method to customise the page style
  PageDecoration getPageDecoration() {
    return const PageDecoration(
      imagePadding: EdgeInsets.only(top: 120),
      pageColor: Colors.white,
      bodyPadding: EdgeInsets.only(top: 8, left: 20, right: 20),
      titlePadding: EdgeInsets.only(top: 50),
      bodyTextStyle: TextStyle(color: Colors.black54, fontSize: 15),
    );
  }

  //method to customize the dots style
  DotsDecorator getDotsDecorator() {
    return const DotsDecorator(
      spacing: EdgeInsets.symmetric(horizontal: 2),
      activeColor: Colors.indigo,
      color: Colors.grey,
      activeSize: Size(12, 5),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
    );
  }
}

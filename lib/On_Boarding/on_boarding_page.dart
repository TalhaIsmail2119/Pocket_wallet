import 'package:pocket_wallet/screens/sign_in_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context){
     _storeOnboardInfo();
      //_storeOnBoardingData();
     Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => SignInPage(),),
    );
  }

  // Widget _buildFullscreenImage() {
  //   return Image.asset(
  //     'assets/fullscreen.jpg',
  //     fit: BoxFit.cover,
  //     height: double.infinity,
  //     width: double.infinity,
  //     alignment: Alignment.center,
  //   );
  // }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    // ignore_for_file: avoid_print
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 3));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 3));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 5));
    print('go!');
    FlutterNativeSplash.remove();
  }

  // _storeOnBoardingData()async {
  //
  //   int isViewed =0 ;
  //   SharedPreferences prefs =await SharedPreferences.getInstance();
  //   await prefs.setInt('onBoardingPage', isViewed);
  // }
  _storeOnboardInfo() async {
    print("Shared pref called");
    //int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onBoardingPage', false);
    print(prefs.getInt('onBoard'));
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    const bodyStyle = TextStyle(fontSize: 19.0,color: Colors.lightBlueAccent);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700,color: Colors.lightBlueAccent),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      //pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return SafeArea(
      child: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: Theme.of(context).colorScheme.onBackground,
        //allowImplicitScrolling: false,
        //autoScrollDuration: 1500,
        //infiniteAutoScroll: false,
        initialPage: 0,
        // globalHeader: Align(
        //   alignment: Alignment.topRight,
        //   child: SafeArea(
        //     child: Padding(
        //       padding: const EdgeInsets.only(top: 16, right: 16),
        //       child: _buildImage('flutter.png', 100),
        //     ),
        //   ),
        // ),
        globalFooter: SizedBox(
          width: double.infinity,
          height: _height*(40/680),
          child: ElevatedButton(
            child: const Text(
              'Let\'s go right away!',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () => _onIntroEnd(context),
          ),
        ),
        pages: [
          PageViewModel(
            //title: "Fractional shares",
            titleWidget: Icon(Icons.abc),

            body:
            "Buy and Sell in BPP _ Shop.",
            //bodyWidget: ,
            //image: _buildImage('img1.jpg'),
            //image: Center(child: Image.network("https://wallpaperaccess.com/full/5117569.jpg")),
            decoration: pageDecoration,

            footer:
            Align(alignment: Alignment.center, child: Text("Mobile Shoping")),
            //reverse: true,
          ),
          PageViewModel(
            title: "Here  you go",
            body:
            "Download The BPP_Shop App From App Store as well.",
            //mage: _buildImage('img2.jpg'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Full Screen Page",
            body:
            "Pages can be full screen as well.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.",
            // image: _buildFullscreenImage(),
            decoration: pageDecoration.copyWith(
                contentMargin: const EdgeInsets.symmetric(horizontal: 16),
                fullScreen: true,
                bodyFlex: 2,
                imageFlex: 3,
                safeArea: 100),
            reverse: true,
          ),

        ],
        onDone: () => _onIntroEnd(context),
        //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
        showSkipButton: true,
        skipOrBackFlex: 0,
        nextFlex: 0,
        showBackButton: false,
        //rtl: true, // Display as right-to-left
        back: const Icon(Icons.arrow_back),
        skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
        next: const Icon(Icons.arrow_forward),
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(16),
        controlsPadding: kIsWeb
            ? const EdgeInsets.all(12.0)
            : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Color(0xFFBDBDBD),
          //color: Colors.orangeAccent,
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        dotsContainerDecorator: const ShapeDecoration(
          color: Colors.orangeAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }
}

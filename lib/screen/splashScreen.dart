import 'package:chat/component/cards.dart';
import 'package:chat/component/header.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../component/button.dart';
import 'login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final PageController _controller = PageController();

  void nav() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
              const SizedBox(height: 2),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: PageView(
                        controller: _controller,
                        children: const [
                          cards(
                            color: Colors.white10,
                            child: "assets/images/splash.png",
                          ),
                          cards(
                            color: Colors.white10,
                            child: "assets/images/chatters.jpg",
                          ),
                          cards(
                            color: Colors.white10,
                            child: "assets/images/chatters.jpg",
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // alignment: const Alignment(0, 0.9),
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 40),
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: const JumpingDotEffect(
                          activeDotColor: Colors.black45,
                          dotColor: Colors.black54,
                          dotHeight: 8,
                          dotWidth: 8,
                        ),
                      ),
                    ),
                    Button(todo: nav, child: "Get Started"),
                    const SizedBox(height: 60),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

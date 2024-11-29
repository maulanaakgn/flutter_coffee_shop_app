import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop_app/views/shared/appstyle.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Group11.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Fall in Love with\nCoffee in Blissful\nDelight!",
                style: appstyle(
                  32,
                  kWhiteColor,
                  semiBold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Welcome to our cozy coffee corner, where\nevery cup is a delightful for you.",
                style: appstyle(
                  14,
                  kWhiteColor,
                  regular,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 24,
                  left: 24,
                  bottom: 54,
                ),
                width: MediaQuery.of(context).size.width,
                height: 56,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/main-screen');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                    ),
                  ),
                  child: Text(
                    "Get Started",
                    style: appstyle(
                      16,
                      kWhiteColor,
                      semiBold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

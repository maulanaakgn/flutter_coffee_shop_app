import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_coffee_shop_app/views/shared/appstyle.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isExpanded = false;

  void toggleReadMore() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kLightGreyColor,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: kBlackColor,
              size: 20,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Text(
          "Details",
          style: appstyle(16, kBlackColor, semiBold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Container(
              width: 24,
              height: 24,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/ic_heart.png")),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              color: kLightGreyColor,
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 24, bottom: 124),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 202,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kBlackColor,
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/coffee1.png",
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Caffe Mocha",
                            style: appstyle(20, kDarkColor, semiBold),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Ice/Hot",
                            style: appstyle(12, kDarkGreyColor, regular),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/star.png")),
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                "4.8",
                                style: appstyle(16, kDarkColor, semiBold),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                "(230)",
                                style: appstyle(12, kDarkGreyColor, regular),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                          color: kGreyColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 32,
                            height: 32,
                            child: Image.asset(
                              "assets/ic_bike.png",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                          color: kGreyColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset(
                              "assets/ic_bean.png",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                          color: kGreyColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset(
                              "assets/ic_milk.png",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    child: const Divider(),
                  ),
                  Text(
                    "Description",
                    style: appstyle(20, kDarkColor, semiBold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: isExpanded
                              ? 'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85 ml of fresh milk, the foam of which is produced by steaming the milk until it reaches a velvety, frothy consistency. The milk foam is then poured over the espresso, resulting in a rich and balanced drink with a creamy texture and a smooth, luxurious taste. '
                              : 'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ',
                          style: appstyle(14, kDarkGreyColor, light),
                        ),
                        WidgetSpan(
                          child: InkWell(
                            onTap: toggleReadMore,
                            child: Text(
                              isExpanded ? 'Read Less' : 'Read More',
                              style: appstyle(14, kPrimaryColor, semiBold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Size",
                    style: appstyle(20, kDarkColor, semiBold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: 41,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            border: Border.all(
                              color: kGreyColor,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "S",
                              style: appstyle(14, kDarkColor, regular),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                          height: 41,
                          decoration: BoxDecoration(
                            color: kHoverBrownColor,
                            border: Border.all(
                              color: kPrimaryColor,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "M",
                              style: appstyle(14, kDarkColor, regular),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                          height: 41,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            border: Border.all(
                              color: kGreyColor,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "L",
                              style: appstyle(14, kDarkColor, regular),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        style: appstyle(14, k2GreyColor, regular),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "\$ 4.53",
                        style: appstyle(18, kDarkColor, semiBold),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      width: 217,
                      height: 56,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/order');
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
                          "Buy Now",
                          style: appstyle(
                            16,
                            kWhiteColor,
                            semiBold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

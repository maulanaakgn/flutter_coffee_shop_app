import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_coffee_shop_app/views/shared/appstyle.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
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
          "Order",
          style: appstyle(16, kBlackColor, semiBold),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              color: kLightGreyColor,
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 24,
                bottom: 189,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    height: 43,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: k2GreyColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 35,
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                                child: Text(
                              "Delivery",
                              style: appstyle(16, kWhiteColor, semiBold),
                            )),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Container(
                            height: 35,
                            decoration: BoxDecoration(
                              color: k2GreyColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                                child: Text(
                              "Pick Up",
                              style: appstyle(16, kDarkColor, semiBold),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery Address",
                        style: appstyle(16, kDarkColor, semiBold),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Jl. Kpg Sutoyo",
                        style: appstyle(14, kDarkColor, semiBold),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                        style: appstyle(12, kDarkGreyColor, regular),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            height: 26,
                            decoration: BoxDecoration(
                              color: kWhiteColor,
                              border: Border.all(
                                color: kBlackColor,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 14,
                                  width: 14,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/ic_edit.png"),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Edit Address",
                                  style: appstyle(12, kDarkColor, regular),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            height: 26,
                            decoration: BoxDecoration(
                              color: kWhiteColor,
                              border: Border.all(
                                color: kBlackColor,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 14,
                                  width: 14,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/ic_note.png"),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Add Note",
                                  style: appstyle(12, kDarkColor, regular),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    child: const Divider(),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: -16),
                    leading: Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage("assets/coffee2.png"),
                        ),
                      ),
                    ),
                    title: Text(
                      "Caffe Mocha",
                      style: appstyle(16, kDarkColor, semiBold),
                    ),
                    subtitle: Text(
                      "Deep Foam",
                      style: appstyle(12, kDarkGreyColor, regular),
                    ),
                    trailing: SizedBox(
                      height: 24,
                      width: 90,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              color: kWhiteColor,
                              border: Border.all(
                                color: kLightBrownColor,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 14,
                              color: kDarkGreyColor,
                            ),
                          ),
                          Text(
                            "1",
                            style: appstyle(14, kDarkColor, semiBold),
                          ),
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              color: kWhiteColor,
                              border: Border.all(
                                color: kLightBrownColor,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 14,
                              color: kDarkColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 4,
                    width: double.infinity,
                    color: kLightBrownColor,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: 56,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      border: Border.all(
                        color: kDarkColor,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.only(left: -16),
                      leading: SizedBox(
                        height: 20,
                        width: 20,
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            kPrimaryColor,
                            BlendMode.srcIn,
                          ),
                          child: Image.asset(
                            'assets/ic_discount.png',
                          ),
                        ),
                      ),
                      title: Text(
                        "1 Discount is applied",
                        style: appstyle(14, kDarkColor, semiBold),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Payment Summary",
                    style: appstyle(16, kDarkColor, semiBold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Price",
                        style: appstyle(14, kDarkColor, regular),
                      ),
                      Text(
                        "\$ 4.53",
                        style: appstyle(14, kDarkColor, semiBold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery Fee",
                        style: appstyle(14, kDarkColor, regular),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "\$ 2.00",
                              style: appstyle(14, kDarkColor, regular).copyWith(
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            TextSpan(
                              text: "  \$ 2.00",
                              style: appstyle(14, kDarkColor, semiBold),
                            ),
                          ],
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
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
              height: 165,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: -16),
                    leading: SizedBox(
                      height: 20,
                      width: 20,
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          kPrimaryColor,
                          BlendMode.srcIn,
                        ),
                        child: Image.asset(
                          'assets/ic_discount.png',
                        ),
                      ),
                    ),
                    title: Text(
                      "Cash/Wallet",
                      style: appstyle(14, kDarkColor, semiBold),
                    ),
                    subtitle: Text(
                      "\$ 5.53",
                      style: appstyle(14, kPrimaryColor, semiBold),
                    ),
                    trailing: Transform.rotate(
                      angle: 90 * pi/180,
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 56,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          "Order",
                          style: appstyle(16, kWhiteColor, semiBold),
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

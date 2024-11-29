import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_coffee_shop_app/views/shared/appstyle.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: kLightGreyColor,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 280,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  kDarkColor,
                  kBlackColor,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 68,
                ),
                Text(
                  "Location",
                  style: appstyle(12, kGreyColor, regular),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      "Bilzen, Tanjungbalai",
                      style: appstyle(14, kGreyColor, semiBold),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    SizedBox(
                      width: 14,
                      height: 14,
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          kGreyColor,
                          BlendMode.srcIn,
                        ),
                        child: Image.asset("assets/ic_arrow_down.png"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 52,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: kSearchBarColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                  kWhiteColor,
                                  BlendMode.srcIn,
                                ),
                                child: Image.asset("assets/ic_search.png"),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "Search coffee",
                              style: appstyle(
                                14,
                                kLightGreyColor,
                                regular,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: ColorFiltered(
                            colorFilter: ColorFilter.mode(
                              kWhiteColor,
                              BlendMode.srcIn,
                            ),
                            child: Image.asset(
                              "assets/ic_filter.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                      image: AssetImage("assets/Banner.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 29,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "All Coffee",
                          style: appstyle(
                            14,
                            kWhiteColor,
                            semiBold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 29,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                          color: kGreyColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Machiato",
                          style: appstyle(
                            14,
                            kBlackColor,
                            regular,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 29,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                          color: kGreyColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Latte",
                          style: appstyle(
                            14,
                            kBlackColor,
                            regular,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 29,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                          color: kGreyColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Americano",
                          style: appstyle(
                            14,
                            kBlackColor,
                            regular,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 29,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                          color: kGreyColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Arabica",
                          style: appstyle(
                            14,
                            kBlackColor,
                            regular,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 31 / 45,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, int i) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/details');
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: const DecorationImage(
                                    image: AssetImage("assets/coffee2.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Coffee Mocha",
                                style: appstyle(16, kBlackColor, semiBold),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Deep Foam",
                                style: appstyle(12, kDarkGreyColor, regular),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$4.53",
                                    style: appstyle(18, kBlackColor, semiBold),
                                  ),
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      size: 16,
                                      color: kWhiteColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

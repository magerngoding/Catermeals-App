import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class HomePageBuyerView extends StatefulWidget {
  const HomePageBuyerView({Key? key}) : super(key: key);

  Widget build(context, HomePageBuyerController controller) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hi, Cateringers 👋🏻',
                            style: greenEmerlandTextStyle.copyWith(
                              fontSize: 28,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Penuhi kebutuhan makan harian kamu dengan\nXYZ Catering',
                          style: greenSageColorTextStyle.copyWith(
                              fontSize: 14, fontWeight: regular),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Carousel_xyz(),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Categories',
                              style: greenEmerlandTextStyle.copyWith(
                                fontSize: 18,
                                fontWeight: bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ProductListBuyerPageView(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'View all Product Here',
                                  style: greenSageColorTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.navigate_next_outlined,
                                color: greenSageColor,
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const VegetarianPageView(),
                                ),
                              );
                            },
                            child: Container(
                              width: 170,
                              height: 44,
                              decoration: BoxDecoration(
                                color: greenFadedolor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Vegetarian',
                                  style: greenEmerlandTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: regular,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const NonVegetarianPageView(),
                                ),
                              );
                            },
                            child: Container(
                              width: 170,
                              height: 44,
                              decoration: BoxDecoration(
                                color: greenFadedolor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Non Vegetarian',
                                  style: greenEmerlandTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: regular,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Popular Catering',
                          style: greenEmerlandTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                      PopularFood(
                        image: 'assets/image/img_food4.png',
                        title: 'Chicken Rice Bowl',
                        price: '20000',
                        location: 'Kemanggisan',
                      ),
                      PopularFood(
                        image: 'assets/image/img_food1.png',
                        price: '20000',
                        title: 'Complete Chicken Package',
                        location: 'Syahdan',
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<HomePageBuyerView> createState() => HomePageBuyerController();
}

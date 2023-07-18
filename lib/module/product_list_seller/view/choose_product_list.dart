import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ChooseProductList extends StatelessWidget {
  const ChooseProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "What kind of food do you want to sell?",
              style: greenSageColorTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            CustomeButton(
                title: 'All Product',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductListSeller(),
                    ),
                  );
                }),
            const SizedBox(
              height: 20.0,
            ),
            CustomeButton(
                title: 'Vegetarian',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VegetarianPageView(),
                    ),
                  );
                }),
            const SizedBox(
              height: 20.0,
            ),
            CustomeButton(
                title: 'Non Vegetarian',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NonVegetarianPageView(),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

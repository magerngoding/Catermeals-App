import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:caterMeals/core.dart';

class HomePageSeller2View extends StatefulWidget {
  const HomePageSeller2View({Key? key}) : super(key: key);

  Widget build(context, HomePageSeller2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            const Text(
              "Hi",
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xff206A5D),
              ),
            ),
            Text(
              '${FirebaseAuth.instance.currentUser!.email}',
              style: blackTextStyle.copyWith(),
            ),
          ],
        ),
        elevation: 0,
        leading: Container(),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => controller.doLogout(),
            icon: const Icon(
              Icons.logout,
              size: 24.0,
            ),
          ),
        ],
      ),
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

            // CustomeButton(
            //     title: 'All Product',
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => const ProductListSeller(),
            //         ),
            //       );
            //     }),
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

  @override
  State<HomePageSeller2View> createState() => HomePageSeller2Controller();
}

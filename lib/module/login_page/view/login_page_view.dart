import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/custome_button.dart';
import 'package:hyper_ui/shared/widget/custome_text_form_field.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({Key? key}) : super(key: key);

  Widget build(context, LoginPageController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 44,
                      ),
                      child: Text(
                        'Welcome to\n XYZ Catering',
                        style: greenEmerlandTextStyle.copyWith(
                          fontSize: 30,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      child: Image.asset(
                        'assets/image/logo.png',
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Biggest collection of 300+ layouts\nfor iOS prototyping.',
                  style: greenSageColorTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                CustomeTextFormF(
                  title: 'Email',
                  obscureTxt: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomeTextFormF(
                  title: 'Password',
                  obscureTxt: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomeButton(
                  title: 'Login',
                  width: 350,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePageView(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Forgot password?',
                  style: greenSageColorTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  width: 340,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: greenSageColor,
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: greenSageColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPageView(),
                        ),
                      );
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '  Register Now',
                            style: whiteTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: bold,
                            ),
                          ),
                          Icon(
                            Icons.navigate_next_sharp,
                            color: whiteColor,
                          )
                        ],
                      ),
                    ),
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
  State<LoginPageView> createState() => LoginPageController();
}

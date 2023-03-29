import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../../../shared/widget/custome_button.dart';
import '../../../shared/widget/custome_text_form_field.dart';
import '../controller/register_page_controller.dart';

class RegisterPageView extends StatefulWidget {
  const RegisterPageView({Key? key}) : super(key: key);

  Widget build(context, RegisterPageController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Serving delicious \n  and quality food',
                style: greenEmerlandTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomeTextFormF(
                title: 'Email',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomeTextFormF(
                title: 'Password',
                obscureTxt: true,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomeTextFormF(
                title: 'Email',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomeTextFormF(
                title: 'Role',
              ),
              const SizedBox(
                height: 50,
              ),
              CustomeButton(
                title: 'Register',
                onPressed: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPageView(),
                    ),
                  );
                }),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  'Terms and Conditions',
                  style: greenSageColorTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<RegisterPageView> createState() => RegisterPageController();
}

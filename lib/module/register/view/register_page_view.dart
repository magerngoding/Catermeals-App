import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  Widget build(context, RegisterPageController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
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
                Card(
                  color: greenFadedolor,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        QTextField(
                          label: "Email",
                          suffixIcon: Icons.email,
                          onChanged: (value) {
                            controller.email = value;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        QTextField(
                          label: "Password",
                          obscure: true,
                          validator: Validator.required,
                          suffixIcon: Icons.password,
                          onChanged: (value) {
                            controller.password = value;
                          },
                        ),
                        QDropdownField(
                          label: "Role",
                          validator: Validator.required,
                          items: const [
                            {
                              "label": "Buyer",
                              "value": "Buyer",
                            },
                            {
                              "label": "Seller",
                              "value": "Seller",
                            }
                          ],
                          onChanged: (value, label) {
                            controller.role = value;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomeButton(
                  title: 'Register',
                  onPressed: (() => controller.doRegister()),
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
      ),
    );
  }

  @override
  State<RegisterPage> createState() => RegisterPageController();
}

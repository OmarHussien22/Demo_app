import 'package:demo_app/screens/album.dart';
import 'package:demo_app/widgets/custom_Button.dart';
import 'package:demo_app/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String id = 'Login Screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Demo App ',
            style: TextStyle(fontSize: 25),
          ),
          actions: [
            IconButton(onPressed: (() {}), icon: const Icon(Icons.language))
          ]),
      body: ListView(children: [
        const SizedBox(
          height: 70,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'LOGIN',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomFormTextField(
              hintText: 'User Name',
              prefixIcon: const Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomFormTextField(
              hintText: 'Email',
              prefixIcon: const Icon(
                Icons.email,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomButton(
                ontap: () => Navigator.pushNamed(
                      context,
                      Albums.id,
                    ),
                text: 'Login')
          ],
        ),
      ]),
    );
  }
}

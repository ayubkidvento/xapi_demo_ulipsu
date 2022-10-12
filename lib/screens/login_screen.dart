import 'package:flutter/material.dart';
import 'package:xapi_demo/widgets/custom_material_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   toolbarHeight: 0,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: text.headline4!.copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            TextFormField(),
            CustomMaterialButton(
              title: 'Login',
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: Colors.blueGrey,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'OR',
                      style: text.bodyLarge!.copyWith(color: Colors.grey),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: Colors.blueGrey,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
            CustomMaterialButton(
              title: 'Login with Google',
              onPressed: () {},
            ),
            const SizedBox(height: 30),
            Center(
              child: RichText(
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                softWrap: true,
                maxLines: 1,
                textScaleFactor: 1,
                text: TextSpan(
                  text: 'New to Ulipsu? ',
                  style: text.bodyMedium!
                      .copyWith(color: Colors.blueGrey.shade300),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Register',
                      style: text.bodyMedium!.copyWith(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

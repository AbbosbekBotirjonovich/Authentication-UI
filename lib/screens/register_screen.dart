import 'package:authentication_ui/core/component/app_text_field.dart';
import 'package:authentication_ui/core/route/app_route_name.dart';
import 'package:authentication_ui/core/theme/app_color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            bottom: 24,
            left: 24,
            right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              width: MediaQuery.of(context).size.width,
              height: 250,
              fit: BoxFit.contain,
              image: const AssetImage('assets/img_register.png'),
            ),
            Text(
              'Register',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                AppTextField(
                  prefix: Icon(Icons.person_outline),
                  hint: "Username",
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(
                  height: 24,
                ),
                AppTextField(
                  prefix: Icon(Icons.alternate_email_rounded),
                  hint: "Email Address",
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(
                  height: 24,
                ),
                AppTextField(
                  prefix: Icon(Icons.phone_outlined),
                  hint: "Phone Number",
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(
                  height: 24,
                ),
                AppTextField(
                  obscureText: true,
                  prefix: Icon(Icons.lock_outline_rounded),
                  suffix: Icon(Icons.remove_red_eye_outlined),
                  hint: "Password",
                  textInputAction: TextInputAction.done,
                ),
              ],
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 64,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRouteName.otp);
                },
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                ),
                child: const Text("Register"),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text('Or'),
                ),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 64,
              child: OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                ),
                icon: const Image(
                  image: AssetImage('assets/ic_google.png'),
                  width: 32,
                  height: 32,
                ),
                label: const Text("Login with Google"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

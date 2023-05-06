import 'package:authentication_ui/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
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
              image: const AssetImage('assets/img_otp.png'),
            ),
            Text(
              'Enter OTP',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'An 4 Digit code has been sent to \n +998900446979',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.grey),
            ),
            const SizedBox(),
            SizedBox(
              height: 96,
              child: Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.primarySwatch[50]?.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      height: 68,
                      width: 64,
                      alignment: Alignment.center,
                      child: TextField(
                        onChanged: (value){
                          if(value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }else if(value.isEmpty){
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(0)
                        ),
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.primarySwatch[50]?.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      height: 68,
                      width: 64,
                      alignment: Alignment.center,
                      child: TextField(
                        onChanged: (value){
                          if(value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }else if(value.isEmpty){
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(0)
                        ),
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.primarySwatch[50]?.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      height: 68,
                      width: 64,
                      alignment: Alignment.center,
                      child: TextField(
                        onChanged: (value){
                          if(value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }else if(value.isEmpty){
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(0)
                        ),
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.primarySwatch[50]?.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      height: 68,
                      width: 64,
                      alignment: Alignment.center,
                      child: TextField(
                        onChanged: (value){
                          if(value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }else if(value.isEmpty){
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(0)
                        ),
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "Don't receive code ",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.grey),
                ),
                TextSpan(
                  text: 'Send again',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: AppColor.primaryColor),
                )
              ]),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 64,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)))),
                onPressed: () {},
                child: const Text("Submit"),
              ),
            ),
            const SizedBox()
          ],
        ),
      ),
    );
  }
}

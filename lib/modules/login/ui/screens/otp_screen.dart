import 'package:flutter/material.dart';
import 'package:restora/shared/widgets/texts/custom_text.dart';
import '../../../../shared/widgets/custom_elevated_button.dart';
import '../../../../shared/widgets/custom_svg.dart';
import 'package:pinput/pinput.dart';
import '../widget/otp_timer.dart';
import 'package:restora/route.dart' as route;

class OTPScreen extends StatelessWidget {
  String? phone;

  OTPScreen({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CustomSvg(
                    svg: 'logos/logo.svg',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/on_boarding_images/login_signUp.png',
                    height: 250,
                  ),
                  const CustomText(
                    text: 'আপনার মোবাইল নাম্বারটি ভেরিফাই করুন',
                    maxLines: 1,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  const CustomText(
                    text: 'আপনার মোবাইলে আসা ৬ ডিজিটের কোডটি টাইপ করুন',
                    maxLines: 1,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    child: Pinput(
                      length: 6,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: 'আপনার নাম্বার টি ঠিক আছে?',
                    maxLines: 1,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  CustomText(
                    text: '${phone}',
                    maxLines: 1,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'না ঠিক নেই',
                        style: TextStyle(color: Colors.red),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomElevatedButton(
                    text: 'ভেরিফাই করুন',
                    textColor: Colors.white,
                    buttonColor: Colors.orange,
                    onPressed: () => Navigator.pushNamed(
                        context, route.onBoardingCategorypage),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    text: 'আপনার মোবাইলে কোড এখনো আসেনি?',
                    maxLines: 1,
                    fontSize: 10,
                    fontWeight: FontWeight.w200,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OTPTimer(
                        duration: 180,
                      ),
                      SizedBox(
                        width: 05,
                      ),
                      CustomText(
                        text: ' সেকেন্ড অপেক্ষা করুন',
                        maxLines: 1,
                        fontSize: 10,
                        fontWeight: FontWeight.w200,
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {
                        OTPTimer;
                      },
                      child: const Text(
                        'পুুনরায় পাঠান',
                        style: TextStyle(color: Colors.red),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

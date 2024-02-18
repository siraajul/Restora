import 'package:flutter/material.dart';
import 'package:restora/shared/widgets/texts/custom_text.dart';
import '../../../../shared/widgets/custom_elevated_button.dart';
import '../../../../shared/widgets/custom_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:restora/route.dart' as route;

import 'otp_screen.dart';

class PhoneNumberScreen extends StatefulWidget {
  PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  TextEditingController _intlPhoneFieldController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    text: 'স্বাগতম আপনাকে',
                    maxLines: 1,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                  const CustomText(
                    text: 'আপনি আপনার মোবাইল নাম্বারটি দিয়ে লগইন করুন ',
                    maxLines: 1,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 400,
                    child: IntlPhoneField(
                      controller: _intlPhoneFieldController,
                      decoration: const InputDecoration(
                        focusColor: Colors.orange,
                        //labelText: 'Phone Number',
                        hintText: 'আপনার ফোন নাম্বার টি দিন',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'BD',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomElevatedButton(
                    text: 'লগইন করুন',
                    textColor: Colors.white,
                    buttonColor: Colors.orange,
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OTPScreen(phone: _intlPhoneFieldController.text,)),);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    text:
                        'উপরের বাটনটি চাপার মাধ্যমে আপনি আমাদের শর্তাবলী(Terms Of Use) এবং গোপনীয়তা নীতি(Privacy Policy) সমূহে সম্মতিজ্ঞাপন করেছেন',
                    maxLines: 1,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    text: 'অথবা',
                    maxLines: 1,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomElevatedButton(
                    text: 'রেস্তোরা দেখুন ',
                    textColor: Colors.orange,
                    buttonColor: Colors.white,
                    onPressed: () =>
                        Navigator.pushNamed(context, route.navigation),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

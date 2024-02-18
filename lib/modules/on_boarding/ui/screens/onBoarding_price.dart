import 'package:flutter/material.dart';
import 'package:restora/shared/widgets/custom_elevated_button.dart';
import 'package:restora/shared/widgets/tag/price_tag.dart';
import '../../../../shared/widgets/texts/custom_text.dart';
import '../../../../static.dart';
import '../widgets/on_boarding_top_price.dart';
import 'package:restora/route.dart' as route;

class OnBoardingPrice extends StatelessWidget {
  const OnBoardingPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomElevatedButton(
                text: 'পূর্বের ধাপ',
                textColor: Colors.black,
                buttonColor: Colors.white,
                prefixIcon: Icons.arrow_back,
                onPressed: () => Navigator.pop(context)),
            CustomElevatedButton(
              text: 'পরের ধাপ',
              textColor: Colors.white,
              buttonColor: Colors.orange,
              suffixIcon: Icons.arrow_forward,
              onPressed: () =>
                  Navigator.pushNamed(context, route.onBoardingLocationpage),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.st,
            children: [
              const OnBoardingTopPrice(),
              Image.asset("assets/logos/onboarding.png"),
              const CustomText(
                text: 'আপনার বাজেট?',
                maxLines: 1,
                textAlign: TextAlign.right,
              ),
              for (final price in prices)
                PriceTag(
                  containerText: price.containerText,
                  priceText: price.priceText,
                  isSelected: true,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

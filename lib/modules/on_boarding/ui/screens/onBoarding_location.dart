import 'package:flutter/material.dart';
import '../../../../shared/widgets/custom_elevated_button.dart';
import '../../../../shared/widgets/custom_search_widget.dart';
import '../../../../shared/widgets/location_history_chip.dart';
import '../../../../shared/widgets/texts/custom_text.dart';
import '../widgets/on_boading_top_location.dart';
import 'package:restora/route.dart' as route;

class OnBoardingLocation extends StatelessWidget {
  OnBoardingLocation({super.key});

  final List<String> locationHistory = [
    'উত্তর বাড্ডা',
    'উত্তরা',
    'রামপুরা',
    'বনানী',
    'বনশ্রী',
    'মিরপুর',
    'মোহাম্মদপুর',
    'ধানমন্ডি',
    'গুলশান'
  ];

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
              onPressed: () => Navigator.pop(context),
            ),
            CustomElevatedButton(
              text: 'পরের ধাপ',
              textColor: Colors.white,
              buttonColor: Colors.orange,
              suffixIcon: Icons.arrow_forward,
              onPressed: () => Navigator.pushNamed(context, route.navigation),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const OnBoardingTopLocation(),
                Image.asset("assets/logos/onboarding.png"),
                const CustomText(
                  text: 'আপনার লোকেশন?',
                  maxLines: 1,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomSearchWidget(
                  hintText: 'এখানে লোকেশন খুঁজুন',
                  searchBarColor: Colors.grey.shade200,
                  borderColor: Colors.grey.shade200,
                  suffixIcon: Icons.close,
                  onSuffixIconTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LocationHistoryChip(
                    locationHistory: locationHistory,
                    chipColor: Colors.grey.shade200,
                    chipBorderColor: Colors.grey.shade200,
                    onChipSelected: (selectedChip) {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

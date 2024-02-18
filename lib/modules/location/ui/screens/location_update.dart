import 'package:flutter/material.dart';
import 'package:restora/shared/widgets/texts/custom_text.dart';

import '../../../../shared/widgets/custom_appbar.dart';
import '../../../../shared/widgets/custom_elevated_button.dart';
import 'package:restora/route.dart' as route;

class LocationUpdate extends StatelessWidget {
  LocationUpdate({super.key});

  final List<String> locations = [
    'মালিবাগ',
    'আদাবর',
    'রামপুরা',
    'খিলগাঁও',
    'তালতলা',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomElevatedButton(
          text: 'আপডেট করুন',
          textColor: Colors.white,
          buttonColor: Colors.orange,
          suffixIcon: Icons.update,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      //extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(
        title: 'বর্তমান অবস্থা',
        subtitle: 'শ্যামলী, কল্যাণপুর, মোহাম্মদপুর',
        leading: Icon(
          Icons.location_on,
          color: Colors.orange,
        ),
        trailing: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: 'সাম্প্রতিক অনুসন্ধান',
              maxLines: 1,
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 20,
            ),
            for (var location in locations)
              CustomText(
                text: location,
                maxLines: 1,
                textAlign: TextAlign.left,
                fontWeight: FontWeight.w100,
              ),
          ],
        ),
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:restora/shared/widgets/custom_elevated_button.dart';
import 'package:restora/shared/widgets/texts/custom_text.dart';

class ConfirmBottomSheet extends StatelessWidget {
  const ConfirmBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 360,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CustomText(
                  text: 'আপনার রিজার্ভেশন নিশ্চিত হয়েছে',
                  maxLines: 1,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 40,
                ),
                CachedNetworkImage(
                    height: 150,
                    width: 150,
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2021/08/07/22/32/verified-6529513_1280.png'),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomElevatedButton(
                      text: 'রিজার্ভেশন সম্পন্ন',
                      textColor: Colors.white,
                      buttonColor: Colors.orange,
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:restora/shared/widgets/custom_elevated_button.dart';
import 'package:restora/shared/widgets/custom_text_heading_widget.dart';
import 'package:restora/shared/widgets/texts/custom_text.dart';
import '../../../../shared/widgets/counter_widget.dart';
import '../../../../shared/widgets/custom_textField.dart';
import 'confirm_bottom_sheet.dart';

class ReserveBottomSheet extends StatelessWidget {
  const ReserveBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.9,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20,
            ),
            const CustomText(text: 'আপনার রিজার্ভ অর্ডার', maxLines: 1),
            const SizedBox(
              height: 20,
            ),
            CustomTextHeadingContainer(
                text: 'খাবারের তালিকা',
                textColor: Colors.black,
                bgColor: Colors.grey.shade300),
            const CustomCounterWidget(
              title: 'Mexican Chicken Chilli Burger',
              subtitle: '১৪০ টাকা',
              maxCounter: 10,
            ),
            CustomTextHeadingContainer(
                text: 'রিজার্ভেশনের তথ্য',
                textColor: Colors.black,
                bgColor: Colors.grey.shade300),
            CustomTextField(
              labelText: 'নাম',
              textFieldColor: Colors.grey.shade200,
              borderColor: Colors.grey.shade200,
              hintText: 'আপনার নাম দিন',
            ),
            CustomTextField(
              labelText: 'ইমেইল',
              textFieldColor: Colors.grey.shade200,
              borderColor: Colors.grey.shade200,
              hintText: 'আপনার ইমেইল দিন',
            ),
            CustomTextField(
              labelText: 'মোবাইল',
              textFieldColor: Colors.grey.shade200,
              borderColor: Colors.grey.shade200,
              hintText: 'আপনার মোবাইল নাম্বার দিন',
            ),
            Row(
              children: [
                Flexible(
                  child: CustomTextField(
                    labelText: 'মোবাইল',
                    textFieldColor: Colors.grey.shade200,
                    borderColor: Colors.grey.shade200,
                    hintText: 'আপনার মোবাইল নাম্বার দিন',
                  ),
                ),
                Flexible(
                  child: CustomTextField(
                    labelText: 'মোবাইল',
                    textFieldColor: Colors.grey.shade200,
                    borderColor: Colors.grey.shade200,
                    hintText: 'আপনার মোবাইল নাম্বার দিন',
                  ),
                ),
              ],
            ),
            CustomTextField(
              labelText: 'মোবাইল',
              textFieldColor: Colors.grey.shade200,
              borderColor: Colors.grey.shade200,
              hintText: 'আপনার মোবাইল নাম্বার দিন',
            ),
            CustomTextField(
              labelText: 'মোবাইল',
              textFieldColor: Colors.grey.shade200,
              borderColor: Colors.grey.shade200,
              hintText: 'আপনার মোবাইল নাম্বার দিন',
            ),
            CustomTextHeadingContainer(
                text: 'মূল্য',
                textColor: Colors.black,
                bgColor: Colors.grey.shade300),
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
                    showModalBottomSheet(
                        enableDrag: true,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))),
                        context: context,
                        builder: (context) {
                          return const ConfirmBottomSheet();
                        });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

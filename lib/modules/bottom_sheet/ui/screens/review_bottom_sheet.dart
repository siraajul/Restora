import 'package:flutter/material.dart';
import 'package:restora/shared/widgets/custom_elevated_button.dart';
import 'package:restora/shared/widgets/texts/custom_text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewBottomSheet extends StatelessWidget {
  const ReviewBottomSheet({Key? key});

  @override
  Widget build(BuildContext context) {
    double rating = 0.0;

    TextEditingController reviewController = TextEditingController();

    return SizedBox(
      height: 460,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CustomText(
                text: 'মতামত দিন',
                maxLines: 1,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 20),
              RatingBar.builder(
                initialRating: rating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemCount: 5,
                itemSize: 40.0,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (newRating) {
                  rating = newRating;
                },
              ),
              const SizedBox(height: 20),
              TextField(
                autofocus: true,
                controller: reviewController,
                maxLines: 3,
                decoration: const InputDecoration(
                  labelText: 'আপনার মতামত লিখুন এইখানে ',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                text:
                    'আপনার মতামত আমাদের কাছে খুবই গুরুত্বপূর্ণ, আপনাদের মতামতের ভিত্তিতে আমরা আমাদের সার্ভিস আরও উন্নত করার চেষ্টা করব',
                maxLines: 1,
                fontSize: 10,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomElevatedButton(
                  text: 'মতামত দিন',
                  textColor: Colors.white,
                  buttonColor: Colors.orange,
                  onPressed: () {
                    // Access the rating and review using 'rating' and 'reviewController.text'
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

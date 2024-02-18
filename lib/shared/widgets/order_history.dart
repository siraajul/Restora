import 'package:flutter/material.dart';
import 'package:restora/shared/widgets/search_history.dart';
import 'package:restora/shared/widgets/texts/custom_text.dart';

import '../../modules/bottom_sheet/ui/screens/review_bottom_sheet.dart';

class OrderHistoryWidget extends StatelessWidget {
  final String order_number;
  final String date;
  final String time;
  final String amount;
  final String imageUrl;
  final String restaurantTitle;
  final String restaurantDescription;

  const OrderHistoryWidget({
    Key? key,
    required this.order_number,
    required this.date,
    required this.time,
    required this.amount,
    required this.imageUrl,
    required this.restaurantTitle,
    required this.restaurantDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7.0),
      ),
      //elevation: 4.0,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        height: 150,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomText(
              text: order_number,
              maxLines: 1,
              textAlign: TextAlign.right,
              fontWeight: FontWeight.w400,
              colors: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 7,
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.orange,
                      ),
                      CustomText(
                        text: date,
                        maxLines: 1,
                        fontWeight: FontWeight.w400,
                      ),
                      CustomText(text: ' | ', maxLines: 1),
                      CustomText(
                        text: time,
                        maxLines: 1,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: CustomText(
                    text: amount,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Flexible(
                  flex: 8,
                  child: SearchHistory(
                    imageUrl: imageUrl,
                    title: restaurantTitle,
                    description: restaurantDescription,
                  ),
                ),
                Flexible(
                  flex: 2,
                    child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                              enableDrag: false,
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      topRight: Radius.circular(40))),
                              context: context,
                              builder: (context) => Padding(
                                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                child: const ReviewBottomSheet(),
                              ));
                        },
                        icon: Icon(
                          Icons.rate_review,size: 40,
                        )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

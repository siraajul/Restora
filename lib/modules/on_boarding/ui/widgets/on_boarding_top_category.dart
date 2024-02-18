import 'package:flutter/material.dart';

import '../../../../shared/widgets/texts/custom_text.dart';
import 'circular_number_widget.dart';

class OnBoardingTopCategory extends StatelessWidget {
  const OnBoardingTopCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Flexible(
            flex: 4,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircularNumberWidget(
                  number: '১',
                  containerColor: Colors.white,
                  textColor: Colors.black,
                  borderColor: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                CircularNumberWidget(
                  number: '২',
                  containerColor: Colors.white,
                  textColor: Colors.grey,
                  borderColor: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                CircularNumberWidget(
                  number: '৩',
                  containerColor: Colors.white,
                  textColor: Colors.grey,
                  borderColor: Colors.grey,
                )
              ],
            )),
        Flexible(
          flex: 1,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () {},
                  child: const CustomText(
                    text: 'স্কিপ',
                    maxLines: 1,
                    colors: Colors.orange,
                    fontSize: 20,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}

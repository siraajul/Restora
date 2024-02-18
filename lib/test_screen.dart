import 'package:flutter/material.dart';
import 'package:restora/shared/widgets/search_history.dart';

import 'modules/on_boarding/ui/widgets/circular_number_widget.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return  const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SearchHistory(
                imageUrl: 'https://www.cnet.com/a/img/resize/36e8e8fe542ad9af413eb03f3fbd1d0e2322f0b2/hub/2023/02/03/afedd3ee-671d-4189-bf39-4f312248fb27/gettyimages-1042132904.jpg?auto=webp&fit=crop&height=1200&width=1200',
                title: 'Hello Chinese',
                description: 'Chinese | Indian',
              ),
              CircularNumberWidget(number: '১', containerColor: Colors.white, textColor: Colors.black, borderColor: Colors.black,)
            ],
              ),
        ));
  }
}

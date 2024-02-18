import 'package:flutter/material.dart';

import '../../shared/widgets/order_history.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('পূর্বের অর্ডার'),),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              OrderHistoryWidget(
                order_number: 'RST-987654',
                date: '14/01/24',
                time: '04:38 PM',
                amount: '1200 Taka',
                imageUrl:
                'https://www.bproperty.com/blog/wp-content/uploads/2021/06/Mirpur.jpg',
                restaurantTitle: 'Pizza Burg',
                restaurantDescription: 'Chinese | Pizza | Burger',
              ),
              OrderHistoryWidget(
                order_number: 'RST-987654',
                date: '14/01/24',
                time: '04:38 PM',
                amount: '1200 Taka',
                imageUrl:
                'https://www.bproperty.com/blog/wp-content/uploads/2021/06/Mirpur.jpg',
                restaurantTitle: 'Pizza Burg',
                restaurantDescription: 'Chinese | Pizza | Burger',
              ),
              OrderHistoryWidget(
                order_number: 'RST-987654',
                date: '14/01/24',
                time: '04:38 PM',
                amount: '1200 Taka',
                imageUrl:
                'https://www.bproperty.com/blog/wp-content/uploads/2021/06/Mirpur.jpg',
                restaurantTitle: 'Pizza Burg',
                restaurantDescription: 'Chinese | Pizza | Burger',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:restora/modules/bottom_sheet/ui/screens/reserve_bottom_sheet.dart';
import 'package:restora/modules/restaurant/ui/screens/restaurant_info_tab.dart';
import 'package:restora/modules/restaurant/ui/screens/restaurant_menu_tab.dart';
import 'package:restora/modules/restaurant/ui/screens/restaurant_photo_tab.dart';
import 'package:restora/modules/restaurant/ui/screens/restaurant_review_tab.dart';
import '../../../../shared/widgets/custom_elevated_button.dart';
import '../../../../shared/widgets/custom_order_button.dart';
import '../../../../shared/widgets/restaurant_info.dart';
import '../../../bottom_sheet/ui/screens/review_bottom_sheet.dart';
import '../widget/restaurant_details_stack.dart';

class RestaurantDetails extends StatefulWidget {
  const RestaurantDetails({Key? key}) : super(key: key);

  @override
  _RestaurantDetailsState createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: buildBottomNavigationBar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              CachedNetworkImage(
                imageUrl:
                    'https://t1.gstatic.com/licensed-image?q=tbn:ANd9GcQYALwFaLdWRO4aMfsfPYdnr2vD73VuUr0y1tTiFjYENDXf7XBEIqdYbX1TUPcNy44sYx1wMRrgSM6nBZM4QSU',
              ),
              const Positioned(
                top: 64,
                left: 16,
                right: 16,
                child: RestaurantDetailsStack(),
              ),
            ],
          ),
          const RestaurantInfo(
            title: 'বাংলার থালা',
            cuisine: 'চাইনিজ | ফাস্টফুড',
            timing: 'রাত ১০টা পর্যন্ত',
            icon: Icons.favorite,
            rating: 3.5,
          ),
          DefaultTabController(
            length: 4,
            initialIndex: 0,
            child: Column(
              children: [
                TabBar(
                  labelStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                  labelColor: Colors.deepOrangeAccent,
                  indicatorColor: Colors.deepOrange,
                  onTap: (index) {
                    setState(() {
                      selectedTabIndex = index;
                    });
                  },
                  tabs: const [
                    Tab(text: 'মেন্যু'),
                    Tab(text: 'তথ্য'),
                    Tab(text: 'ছবি'),
                    Tab(text: 'রিভিউ'),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height - 515,
                  child: const TabBarView(
                    children: [
                      RestaurantMenuTab(),
                      RestaurantInfoTab(),
                      RestaurantPhotoTab(),
                      RestaurantReviewTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBottomNavigationBar() {
    // Customize the bottom navigation bar based on the selected tab index
    switch (selectedTabIndex) {
      case 0:
        return CustomOrderButton(
          itemCount: '2',
          price: '২৮০',
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              useSafeArea: true,
              builder: (BuildContext context) {
                return DraggableScrollableSheet(
                  initialChildSize: 1,
                  // You can set initial size as per your requirement
                  maxChildSize: 1,
                  // Maximum size when fully expanded
                  minChildSize: 1,
                  // Minimum size when collapsed
                  expand: true,
                  builder: (BuildContext context,
                      ScrollController scrollController) {
                    return Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: const ReserveBottomSheet(),
                    );
                  },
                );
              },
            );
          },
        );
      case 1:
        // Customize for the second tab
        return CustomElevatedButton(
          text: 'রিজার্ভ করুন',
          textColor: Colors.white,
          buttonColor: Colors.orange,
          onPressed: () {
            showModalBottomSheet(
                enableDrag: true,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                context: context,
                builder: (context) {
                  return Padding(
                    padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: const ReserveBottomSheet(),
                  );
                });
          },
        ); // Add your widget for the second tab
      case 2:
        // Customize for the third tab
        return CustomElevatedButton(
          text: 'রিজার্ভ করুন',
          textColor: Colors.white,
          buttonColor: Colors.orange,
          onPressed: () {
            showModalBottomSheet(
                enableDrag: true,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                context: context,
                builder: (context) {
                  return Padding(
                    padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: const ReserveBottomSheet(),
                  );
                });
          },
        );
      case 3:
        return CustomElevatedButton(
          text: 'মতামত দিন',
          textColor: Colors.white,
          buttonColor: Colors.orange,
          onPressed: () {
            showModalBottomSheet(
                enableDrag: true,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                context: context,
                builder: (context) {
                  return Padding(
                    padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: const ReserveBottomSheet(),
                  );
                });
          },
        );
      default:
        return Container(); // Fallback case
    }
  }
}

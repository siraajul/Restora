import 'package:flutter/material.dart';
import 'package:restora/shared/widgets/texts/custom_text.dart';
import '../../../../shared/widgets/custom_appbar.dart';
import '../../../../shared/widgets/custom_elevated_button.dart';
import 'package:restora/route.dart' as route;
import '../../../../shared/widgets/custom_search_widget.dart';
import '../../../../shared/widgets/search_history_chip.dart';

class RegularSearch extends StatelessWidget {
  RegularSearch({super.key});

  final List<String> searchHistory = [
    'সার্চ উদাহরণ',
    'সার্চ উদাহরণ',
    'সার্চ উদাহরণ',
    'সার্চ উদাহরণ',
    'সার্চ উদাহরণ',
    'সার্চ উদাহরণ',
    'সার্চ উদাহরণ',
    'সার্চ উদাহরণ',
    'সার্চ উদাহরণ'
  ];

  final List<Map<String, String>> searchData = [
    {
      'imageUrl': 'https://example.com/image1.jpg',
      'title': 'Item 1',
      'description': 'Description for item 1',
    },
    {
      'imageUrl': 'https://example.com/image2.jpg',
      'title': 'Item 2',
      'description': 'Description for item 2',
    },
    {
      'imageUrl': 'https://example.com/image2.jpg',
      'title': 'Item 2',
      'description': 'Description for item 2',
    },
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    final displayedData = searchData.take(3).toList();
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomElevatedButton(
          text: 'সার্চ করুন',
          textColor: Colors.white,
          buttonColor: Colors.orange,
          suffixIcon: Icons.manage_search_rounded,
          onPressed: () =>
              Navigator.pushNamed(context, route.restaurantSearchCategory),
        ),
      ),
      appBar: const CustomAppBar(
        title: 'বর্তমান অবস্থা',
        subtitle: 'শ্যামলী,ঢাকা',
        leading: Icon(
          Icons.location_on,
          color: Colors.orange,
        ),
        trailing: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomSearchWidget(
              hintText: 'এখানে রেস্তোরাঁ খুঁজুন',
              borderColor: Colors.grey.shade200,
              searchBarColor: Colors.grey.shade200,
              prefixIcon: Icons.arrow_back,
              suffixIcon: Icons.filter_list,
              onPrefixIconTap: () {
                Navigator.pop(context);
              },
              onSuffixIconTap: () {
                Navigator.popAndPushNamed(context, route.filterSearch);
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchHistoryChip(
              searchHistory: searchHistory,
              chipColor: Colors.grey.shade200,
              chipBorderColor: Colors.grey.shade200,
              onChipSelected: (selectedChip) {},
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomText(text: 'সাম্প্রতিক অনুসন্ধান', maxLines: 1,textAlign: TextAlign.start,),
          ),
        ],
      ),
    );
  }
}

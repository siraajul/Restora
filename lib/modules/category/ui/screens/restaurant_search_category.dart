import 'package:flutter/material.dart';
import '../../../../shared/widgets/custom_appbar.dart';
import 'package:restora/route.dart' as route;
import '../../../../shared/widgets/custom_search_widget.dart';

class RestaurantSearchCategory extends StatelessWidget {
  const RestaurantSearchCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomSearchWidget(
              hintText: 'এখানে রেস্তোরাঁ খুঁজুন',
              borderColor: Colors.grey.shade200,
              searchBarColor: Colors.grey.shade200,
              prefixIcon: Icons.arrow_back,
              suffixIcon: Icons.close,
              onPrefixIconTap: () {
                Navigator.pop(context);
              },
              onSuffixIconTap: () {
                Navigator.popAndPushNamed(context, route.filterSearch);
              },
            ),
          )
        ],
      ),
    );
  }
}

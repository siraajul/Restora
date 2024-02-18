import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restora/shared/blocs/category/category_list_event.dart';
import 'package:restora/shared/services/category/category_service.dart';
import 'package:restora/shared/widgets/texts/custom_text.dart';
import '../../../../shared/blocs/category/category_list_bloc.dart';
import '../../../../shared/blocs/category/category_list_state.dart';
import '../../../../shared/widgets/custom_appbar.dart';
import '../../../../shared/widgets/custom_elevated_button.dart';
import 'package:restora/route.dart' as route;
import '../../../../shared/widgets/custom_search_widget.dart';
import '../../../../static.dart';
import '../../../on_boarding/ui/widgets/build_food_tag.dart';
import '../../widget/budget_price_tag.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryListBloc(categoryService: CategoryService())..add(GetCategories()),
      child: const BuildSearchFilter(),
    );
  }
}

class BuildSearchFilter extends StatefulWidget {
  const BuildSearchFilter({super.key});

  @override
  State<BuildSearchFilter> createState() => _BuildSearchFilterState();
}

double _currentValue = 0;

class _BuildSearchFilterState extends State<BuildSearchFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomElevatedButton(
          text: 'সার্চ করুন',
          textColor: Colors.white,
          buttonColor: Colors.orange,
          suffixIcon: Icons.search,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
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
                  onSuffixIconTap: () {},
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(text: 'দূরত্ব', maxLines: 1),
              const SizedBox(
                height: 20,
              ),
              const CustomText(text: 'আপনার বাজেট?', maxLines: 1),
              for (final price in prices)
                BudgetPriceTag(
                  containerText: price.containerText,
                  priceText: price.priceText,
                  isSelected: true,
                ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(text: 'কি পছন্দ আপনার?', maxLines: 1),
              BlocBuilder<CategoryListBloc, CategoryListState>(
                  builder: (context, state) {
                if (state is CategoryListInitial ||
                    state is CategoryListLoading) {
                  return const CircularProgressIndicator();
                } else if (state is CategoryListEmpty) {
                  return const CustomText(
                      text: 'No Categories available', maxLines: 1);
                } else if (state is CategoryListLoaded) {
                  return buildFoodTags(state.categoryList);
                } else {
                  return CustomText(
                      text: 'Something went wrong!!', maxLines: 1);
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}

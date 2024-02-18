import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restora/shared/blocs/category/category_list_bloc.dart';
import 'package:restora/shared/services/category/category_service.dart';
import 'package:restora/shared/widgets/texts/custom_text.dart';
import '../../../../shared/blocs/category/category_list_event.dart';
import '../../../../shared/blocs/category/category_list_state.dart';
import '../../../../shared/widgets/custom_appbar.dart';
import '../../../../shared/widgets/custom_search_widget.dart';
import 'package:restora/route.dart' as route;
import '../../../../shared/widgets/restaurant_card.dart';
import '../../../../shared/widgets/restaurant_card_small.dart';
import '../../../../shared/widgets/tag/food_tag.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryListBloc(categoryService: CategoryService())..add(GetCategories()),
      child: BuildHomePage(),
    );
  }
}

class BuildHomePage extends StatefulWidget {
  const BuildHomePage({super.key});

  @override
  State<BuildHomePage> createState() => _BuildHomePageState();
}

class _BuildHomePageState extends State<BuildHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: CustomAppBar(
        title: 'বর্তমান অবস্থা',
        subtitle: 'শ্যামলী ঢাকা',
        leading: const Icon(
          Icons.location_on,
          color: Colors.orange,
        ),
        trailing: const Icon(Icons.notifications),
        onPress: () => Navigator.pushNamed(context, route.locationUpdate),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  const Image(
                      image:
                          AssetImage('assets/images/banners/mainBanner.jpg')),
                  Positioned(
                      bottom: 20,
                      child: SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: CustomSearchWidget(
                            hintText: 'এখানে রেস্তোরা খুঁজুন',
                            borderColor: Colors.grey.shade200,
                            searchBarColor: Colors.grey.shade200,
                            prefixIcon: Icons.search,
                            suffixIcon: Icons.filter_list,
                            onSuffixIconTap: () {
                              Navigator.pushNamed(context, route.regularSearch);
                            },
                          ),
                        ),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: 'কি পছন্দ আপনার?',
                      maxLines: 1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    BlocBuilder<CategoryListBloc, CategoryListState>(
                      builder: (context, state) {
                        print(state);
                        if (state is CategoryListInitial ||
                            state is CategoryListLoading) {
                          return const CircularProgressIndicator();
                        } else if (state is CategoryListEmpty) {
                          return const CustomText(
                              text: 'No Categories available', maxLines: 1);
                        } else if (state is CategoryListLoaded) {
                          return SizedBox(
                            height: 105,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: state.categoryList.length,
                              // Adjust the number of icons
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FoodTag(
                                      itemName:
                                          state.categoryList[index].name ?? '',
                                    ));
                              },
                            ),
                          );
                        } else {
                          return const CustomText(
                              text: 'Something went wrong!!', maxLines: 1);
                        }
                      },
                    ),
                    const CustomText(
                      text: 'আপনার কাছাকাছি',
                      maxLines: 1,
                    ),
                    RestaurantCardLarge(
                      imageUrl:
                          'https://lh5.googleusercontent.com/p/AF1QipPIpIxIQZ8TB74PhdK13NnX3bX0xw3R6Hzxkjmy=w480-h300-k-n-rw',
                      title: 'Pizzaburg',
                      description: '',
                      subtitle: '',
                      onTap: () {
                        // Handle tap event here
                        Navigator.pushNamed(context, route.restaurantDetails);
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const CustomText(
                      text: 'সকল রেস্তোরাঁ',
                      maxLines: 1,
                    ),
                    RestaurantCardSmall(
                      imageUrl:
                          'https://lh5.googleusercontent.com/p/AF1QipPIpIxIQZ8TB74PhdK13NnX3bX0xw3R6Hzxkjmy=w480-h300-k-n-rw',
                      title: 'Pizza Burg',
                      subtitle: 'Burger',
                      description: '',
                      onTap: () {
                        // Handle tap event here
                        Navigator.pushNamed(context, route.restaurantDetails);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

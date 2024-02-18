import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restora/shared/blocs/category/category_list_bloc.dart';
import 'package:restora/shared/blocs/category/category_list_event.dart';
import 'package:restora/shared/services/category/category_service.dart';
import 'package:restora/shared/widgets/texts/custom_text.dart';
import '../../../../shared/blocs/category/category_list_state.dart';
import '../../../../shared/widgets/custom_elevated_button.dart';
import '../widgets/build_food_tag.dart';
import '../widgets/on_boarding_top_category.dart';
import 'package:restora/route.dart' as route;

class OnBoardingCategory extends StatelessWidget {
  const OnBoardingCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryListBloc(categoryService: CategoryService())..add(GetCategories()),
      child: BuildOnBoardingCategory(),
    );
  }
}

class BuildOnBoardingCategory extends StatelessWidget {
  const BuildOnBoardingCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomElevatedButton(
          text: 'পরের ধাপ',
          textColor: Colors.white,
          buttonColor: Colors.orange,
          suffixIcon: Icons.arrow_forward,
          onPressed: () =>
              Navigator.pushNamed(context, route.onBoardingPricepage),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const OnBoardingTopCategory(),
                Image.asset("assets/logos/onboarding.png"),
                const CustomText(
                  text: 'কি পছন্দ আপনার?',
                  maxLines: 1,
                  textAlign: TextAlign.left,
                  fontWeight: FontWeight.w600,
                ),
                BlocBuilder<CategoryListBloc, CategoryListState>(
                  builder: (context, state) {
                    if (state is CategoryListInitial ||
                        state is CategoryListLoading) {
                      return const CircularProgressIndicator();
                    }

                   else if(state is CategoryListEmpty){
                    return const CustomText(text: 'No Categories available', maxLines: 1);
                   }
                   else if (state is CategoryListLoaded){
                     return buildFoodTags(state.categoryList);
                    }

                   else {
                     return CustomText(text: 'Something went wrong!!', maxLines: 1);
                    }

                  }
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

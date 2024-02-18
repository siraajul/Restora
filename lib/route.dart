import 'package:flutter/material.dart';

//Login-OTP Pages
import 'package:restora/modules/login/ui/screens/phone_number_screen.dart';
import 'package:restora/modules/login/ui/screens/otp_screen.dart';

//OnBoarding Pages
import 'package:restora/modules/on_boarding/ui/screens/onBoarding_category.dart';
import 'package:restora/modules/on_boarding/ui/screens/onBoarding_price.dart';
import 'package:restora/modules/on_boarding/ui/screens/onBoarding_location.dart';

import 'modules/bottom_sheet/ui/screens/confirm_bottom_sheet.dart';
import 'modules/category/ui/screens/restaurant_search_category.dart';
import 'modules/home/ui/screens/home_page.dart';
import 'modules/location/ui/screens/location_update.dart';
import 'modules/order/order_history.dart';
import 'modules/restaurant/ui/screens/restaurant_details.dart';
import 'navigation_screen.dart';
import 'modules/profile/ui/screens/edit_profile.dart';
import 'modules/profile/ui/screens/profile_menu.dart';
import 'modules/search/ui/screens/search_filter.dart';
import 'modules/search/ui/screens/search_regular.dart';

///Route Names

//Login-SignUp-OTP
const String loginPage = 'loginPhone';
const String verificationPage = 'otpVerification';

//OnBoarding
const String onBoardingCategorypage = 'onBoardingCategory';
const String onBoardingPricepage = 'onBoardingPrice';
const String onBoardingLocationpage = 'onBoardingLocation';

//Profile-Menu
const String userProfileMenu = 'profileMenu';
const String userProfileUpdate = 'profileUpdate';
//
const String homePage = 'mainHomePage';
const String navigation = 'navigation';
const String locationUpdate = 'locationUpdatePage';
//Search-Regular-Filter
const String regularSearch = 'regularSearchPage';
const String filterSearch = 'filterSearchPage';
const String restaurantSearchCategory = 'restaurantSearchCategoryPage';

//Order
const String orderHistory = 'orderHistoryPage';
//Menu
const String restaurantDetails = 'restaurantDetailsPage';
//bottomSheet
const String confirmBottomSheet = 'orderConfirmPage';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case loginPage:
      return MaterialPageRoute(builder: (context) => PhoneNumberScreen());
    case onBoardingCategorypage:
      return MaterialPageRoute(builder: (context) => const OnBoardingCategory());
    case onBoardingPricepage:
      return MaterialPageRoute(builder: (context) => const OnBoardingPrice());
    case onBoardingLocationpage:
      return MaterialPageRoute(builder: (context) => OnBoardingLocation());
    case userProfileUpdate:
      return MaterialPageRoute(builder: (context) => EditProfile());
    case userProfileMenu:
      return MaterialPageRoute(builder: (context) => const ProfileMenu());
    case homePage:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case navigation:
      return MaterialPageRoute(builder: (context) => const NavigationScreen());
    case locationUpdate:
      return MaterialPageRoute(builder: (context) => LocationUpdate());
    case regularSearch:
      return MaterialPageRoute(builder: (context) => RegularSearch());
    case filterSearch:
      return MaterialPageRoute(builder: (context) => const SearchFilter());
    case restaurantSearchCategory:
      return MaterialPageRoute(builder: (context) => const RestaurantSearchCategory());
    case orderHistory:
      return MaterialPageRoute(builder: (context) => const OrderHistory());
    case restaurantDetails:
      return MaterialPageRoute(builder: (context) => const RestaurantDetails());
    case confirmBottomSheet:
      return MaterialPageRoute(builder: (context) => const ConfirmBottomSheet());
    default:
      throw ('This Route Name Does Not Exist!');
  }
}

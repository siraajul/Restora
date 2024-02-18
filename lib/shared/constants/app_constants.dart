class AppConstants {
  static const String fontFamily = 'Poppins';
  static const int otpTimeInSeconds = 600;
  static const int connectionTimeOut = 30; //35s
  static const int responseTimeOut = 30; //35s
  static const int debounceTime = 500;
  static const String languageCode = 'en';
  static const String countryCode = 'us';
  static const String emptyGuId = '00000000-0000-0000-0000-000000000000';
  static const String expiredTokenErrorMessage =
      'ERROR - Expired Authentication Token!';

  static int currentTimeZoneOffset = DateTime.now().timeZoneOffset.inMinutes;
}

import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiUrls {
  ApiUrls._();
  // Authen
  static const String login = '/auth/login';
  static const String profile = '/auth';
  static const String updateProfile = '/auth/update';
  static const String logout = '/auth/logout';
  static const String forgotPassword = '/auth/update-password';
  static const String resendOtp = '/auth/resend-otp';
  static const String verifyOtp = '/auth/verification-otp';

  // Search & filter
  static const String searchRealEstates = '/real-estates';
  static const String realEstateCategory = '/real-estate-catalogs';

  static const String provinces = '/address/provinces';
  static const String wards = '/address/wards/';

  // Home

  // Notification
  static const String notificationList = '/notifications/get-all';
  static const String notificationDetail = '/notifications';
  static const String notificationReadAll = '/notifications/read-all';
  static const String notificationDelete = '/notifications'; // + /{id}
  static const String notificationDeleteAll = '/notifications/delete-all';

  // Profile
  static final String imageUrl = dotenv.get('IMAGE_URL'); 
  //function
  static const String changePassword = '/auth/change-password';
  static const String myRealEstates = '/real-estates/me';
  static const String aboutUs = '/general-info/about-us';
  static const String contact = '/general-info/contact-us';
  static const String faqs = '/general-info/supports';
  static const String faqDetail = '/general-info/supports/'; // + /{id}
  static const String privacyPolicy = '/general-info/policy';
}

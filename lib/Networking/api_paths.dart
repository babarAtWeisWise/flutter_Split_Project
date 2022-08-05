class ApiPaths {
  static const String liveBaseURL = "https://swipecar.weiswiseapps.com";
  static const String localBaseURL = "http://192.168.9.214:8000";
  static const String assetsPath = "";

  static const String baseURL = liveBaseURL + "/api/v1/";
  //user auth
  static const String login = baseURL + "login";
  static const String logout = baseURL + "logout";
  static const String signup = baseURL + "register";
  static const String sendOTP = baseURL + "otpCode";
  static const String resetPassword = baseURL + "reset-password";
  static const String changePassword = baseURL + "change-password";
  static const String uploadAvatar = baseURL + "upload-avatar";
  static const String updateProfile = baseURL + "update-profile";
  static const String socialAuth = baseURL + "social-login";
  static const String newPassword = baseURL + "change-password-with-emailOtp";
  static const String uploadDocs = baseURL + "upload-docs";
  static const String verifyPhoneNumber = baseURL + "phone-number-verified";
  static const String createCustomerOnReepayAndZoho = baseURL + "create-customer-on-reepay-and-zoho";

  //vehicles
  static const String getAvailableVehicles = baseURL + "vehicles";
  static const String search = baseURL + "search-term";
  static const String smartSearch = baseURL + "smart-search";

  //payment methods
  static const String addPaymentMethod = baseURL + "add-payment-method-to-reepay";
  static const String getPaymentMethods = baseURL + "get-reepay-payment-methods-against-customer";
  static const String deletePaymentMethod = baseURL + "delete-payment-method-reepay";

  //order
  static const String bookVehicle = baseURL + "booked-vehicle";
  static const String bookingHistory = baseURL + "order-history";
  static const String cancelSubscription = baseURL + "cancel-subscription";
  static const String rating = baseURL + "rating-api";

  //Faq
  static const String faq = baseURL + "faqs";

  //Delete Account
  static const String deleteAccount = baseURL + "delete-account";
  
  //uniify
  static const String uniifyPostInvite = baseURL + "uniify-post-invite";
  static const String uniifyExternalForm =  "https://app.uniify.io/consent/9prglxvjgc/9ubtli1izh?cc=";
}

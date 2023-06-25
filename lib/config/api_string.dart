class APIString {
  APIString._();

  // Base URL
  static const String baseURL = "https://1iks0slrac.execute-api.us-east-1.amazonaws.com/";


  // Auth
  static const String signUp = "signUp";
  static const String login = "login";
  static const String forgotPassword = "forgot-password";
  static const String passCodeLogin = "passcode-login";
  static const String changePassword = "change-password";
  static const String updateProfile = "update-profile";
  static const String profile = "profile";

  //Product
  static const String productAdd = "product/add";
  static const String productView = "product/view";
  static const String productUpdate = "product/update";
  static const String productDelete = "product/delete";

  //Settings
  static const String settingsView = "settings/view";
  static const String settingsUpdate = "settings/update";

  //Employee
  static const String employeeAdd = "employee/add";


  //admin - branch
  static const String viewBranches = "admin/view-branches";
  static const String activeBranches = "admin/active-branches";

  //view category
  static const String viewAllCategories = "product/view-all-categories";


}

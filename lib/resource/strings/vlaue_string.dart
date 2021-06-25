/*
   DEVELOPED BY: KAMLESH LAKHANI
   STRING AND INT VALUE (APPLICATION NAME, DIO API RESPONSE STATUS, DIO ERROR, LABEL, VALIDATION, VALIDATION LENGTH)
*/

class ValueString {
  const ValueString._();

  // APPLICATION NAME
  static const String appName = 'Grocery Store';

  // TOAST MESSAGE
  static const String loginCancelToast = 'The login is cancel';
  static const String savedSuccessfullyToast = 'Saved successfully!';
  static const String savedFailToast = 'Saving failed, please try again!';
  static const String eventAlreadyFavouriteToast = 'This event is already in your favorite!';

  // DIO ERROR
  static const String requestCancellationDio = 'Request cancellation';
  static const String connectionTimeOutDio = 'Connection timed out';
  static const String requestTimeOutDio = 'Request timed out';
  static const String responseTimeoutDio = 'Response timeout';
  static const String requestSyntaxErrorDio = 'Request syntax error';
  static const String serverRefusedToExecuteDio = 'Server refused to execute';
  static const String notConnectServerDio = 'Can not connect to the server';
  static const String requestForbiddenDio = 'Request method is forbidden';
  static const String serverInternalErrorDio = 'Server internal error';
  static const String invalidRequestDio = 'Invalid request';
  static const String serverDownDio = 'Server is down';
  static const String httpNotSupportDio = 'Does not support HTTP protocol request';
  static const String unknownMistakeDio = 'Unknown mistake';
  static const String  unknownErrorDio = 'Unknown error';

  static const String dataNotFound = 'Data not found!';

  // TEXT-FIELD LABEL
  static const String userNameFormLabel = 'Username';
  static const String emailFormLabel = 'Email';
  static const String passwordFormLabel = 'Password';
  static const String mobileFormLabel = 'Mobile';

  // LABEL
  static const String doNotHaveAccount = 'Don\'t have account?';
  static const String signUp = 'Sign Up';

  // VALIDATION
  static const String cantBeEmpty = "can't be empty";

  static const String fieldCantBeEmpty = 'Field $cantBeEmpty';
  static const String emailCantBeEmpty = 'Email $cantBeEmpty';
  static const String passwordCantBeEmpty = 'Password $cantBeEmpty';
  static const String mobileCantBeEmpty = 'Mobile $cantBeEmpty';
  static const String userNameCantBeEmpty = 'Username $cantBeEmpty';
  static const String fieldOnlyLetterAndNumberAllowed = 'Only letters and numbers allowed';
  static const String enterValidEmail = 'Enter the valid email';
  static const String enterValidPassword = 'Enter the password minimum 8 characters';
  static const String enterValidMobile = 'Enter the mobile number must be 10 digit';
  static const String enterValidUserName = 'Enter the username must be 3 digit';

  // BUTTON
  static const String loginButton = 'Login';
  static const String signUpButton = 'Sign Up';

  // DRAWER MENU
  static const String homeDrawerMenu = 'Home';
  static const String allCategoriesDrawerMenu = 'All Categories';
  static const String myOrdersDrawerMenu = 'My Orders';
  static const String myFavouritesDrawerMenu = 'My Favourites';
  static const String myCartDrawerMenu = 'My Cart';
  static const String privacyPolicyDrawerMenu = 'Privacy Policy';
  static const String shareDrawerMenu = 'Share';
  static const String settingsDrawerMenu = 'Settings';
  static const String logoutDrawerMenu = 'Logout';

  //CATEGORY
  static const String viewAll = 'View All';

  static const String categoryHeaderCategory = 'Category';
  static const String bestSellerHeaderCategory = 'Best Seller';
  static const String featuredDealsHeaderCategory = 'Featured Deals';

  //LOGIN - SIGNUP HEADER
  static const String toAccountLoginHeader = 'To Account';
  static const String singWithEmailPasswordHeader = 'Sign with email and password to use your account';
  static const String welcomeHeader = 'Welcome';
  static const String newAccountHeader = 'Please provide following details for your new account';

  //APPLICATION DEVELOP
  static const String nameDeveloperApp = 'Kamlesh';
  static const String emailDeveloperApp = 'kamal.lakhani56@gmail.com';

  // VALIDATION LENGTH (MOBILE NO, EMAIL LENGTH ETC.)
  static const int splashScreenWait = 3;
  static const int mobileLength = 10;
  static const int emailLength = 50;
  static const int userNameLength = 10;
  static const int passwordLength = 10;
}

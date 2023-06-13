class ErrorConstants {
  // custom Error code from DIO
  static const errorRequestCancelled = 1;
  static const errorConnectionTimeout = 2;
  static const errorInternetConnection = 3;
  static const errorReceiveTimeout = 4;
  static const errorSendTimeout = 5;
  static const errorBadRequest = 6;
  static const errorRequestNotFound = 7;
  static const errorIntenalServer = 8;
  static const errorSomethingWentWrong = 9;
  
  // Incorrect sms code
  static const smsCodeError = 100;

  // Code is expired
  static const smsCodeExpired = 101;

  // Sms code was not sent to phone
  static const smsCodeNotSent = 102;

  // Sms code is required
  static const smsCodeRequired = 103;

  // Phone number is required
  static const phoneRequired = 104;

  // Too many attempts to verify the SMS code
  static const tooManyAttempsCode = 105;

  // SMS Code already sent
  static const smsCodeAlreadySent = 106;

  // Phone number already taken
  static const phoneNumberAlreadyTaken = 107;

  // SMS rate limit exceeded
  static const smsRateLimitExceeded = 108;

  // Phone number deleted
  static const phoneNumberDeleted = 109;

  // User does not have guid_tm number
  static const hasNotGuidNumber = 201;

  // An error occurred while saving order data to database
  static const orderSaveError = 202;

  // An error occurred while sending order data to partner service
  static const partnerSendError = 203;

  // Product(s) not enough
  static const productNotEnough = 204;
  static const orderNotFound = 205;

  // User not found
  static const userNotFound = 300;

  // Incorrect login or password
  static const incorrectLoginOrPassword = 301;

  // Authentification failed.
  // To continue the process authentication is required
  static const authError = 302;

  // Incorrect data. Validation error
  static const incorrecData = 303;

  // Page Not found
  static const notFound = 404;

  // Server Error
  static const serverError = 500;
}

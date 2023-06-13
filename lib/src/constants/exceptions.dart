import 'package:dio/dio.dart';

import 'error_constants.dart';

class DataException implements Exception {
  DataException({required this.errorCode});

  DataException.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        errorCode = ErrorConstants.errorRequestCancelled;
        break;
      case DioExceptionType.connectionTimeout:
        errorCode = ErrorConstants.errorConnectionTimeout;
        break;
      case DioExceptionType.receiveTimeout:
        errorCode = ErrorConstants.errorReceiveTimeout;
        break;
      case DioExceptionType.badResponse:
        errorCode = _handleError(dioError.response!.statusCode!);
        break;
      case DioExceptionType.sendTimeout:
        errorCode = ErrorConstants.errorSendTimeout;
        break;
      default:
        errorCode = ErrorConstants.errorInternetConnection;
        break;
    }
  }

  int errorCode = 0;

  int _handleError(int statusCode) {
    switch (statusCode) {
      case 400:
        return ErrorConstants.errorBadRequest;
      case 404:
        return ErrorConstants.errorRequestNotFound;
      case 500:
        return ErrorConstants.errorIntenalServer;
      default:
        return ErrorConstants.errorSomethingWentWrong;
    }
  }

  int toInt() => errorCode;
}

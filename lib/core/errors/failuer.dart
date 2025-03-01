import 'package:dio/dio.dart';

abstract class Failuer {
  final String errMessage;

  Failuer(this.errMessage);
}

class ServerFailuer extends Failuer {
  ServerFailuer(super.errMessage);

  factory ServerFailuer.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailuer('connection timeOut');

      case DioExceptionType.sendTimeout:
        return ServerFailuer('connection timeOut');

      case DioExceptionType.receiveTimeout:
        return ServerFailuer('connection timeOut');
        
      case DioExceptionType.badCertificate:
        return ServerFailuer('Bad Certificate');

      case DioExceptionType.badResponse:
        return ServerFailuer.fromBadResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailuer('Request to api srver was cancelled');

      case DioExceptionType.connectionError:
        return ServerFailuer('Connection error');

      case DioExceptionType.unknown:
        return ServerFailuer('Opps ther was an error, please try again');
    }
  }
  factory ServerFailuer.fromBadResponse(int statusCode, dynamic badResponse) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailuer(badResponse['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailuer('Your request not found, please try later');
    } else if (statusCode == 500) {
      return ServerFailuer('Internal server error, please try later');
    } else {
      return ServerFailuer('Opps ther was an error, please try again');
    }
  }
}

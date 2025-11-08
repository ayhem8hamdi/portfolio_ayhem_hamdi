import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;

// --------------------- FAILURE BASE CLASS ---------------------
abstract class Failure {
  final String message;
  final String code;

  Failure({required this.message, required this.code});

  factory Failure.fromException(Object error) {
    if (error is SocketException) {
      return NetworkFailure(
        message: 'No internet connection. Please check your network.',
        code: 'NETWORK_ERROR',
      );
    } else if (error is TimeoutException) {
      return TimeoutFailure(
        message: 'Request to mail server timed out.',
        code: 'TIMEOUT_ERROR',
      );
    } else if (error is http.ClientException) {
      return MailServerFailure(
        message: 'Mail server connection error: ${error.message}',
        code: 'MAIL_SERVER_ERROR',
      );
    } else {
      return UnknownFailure(
        message: 'Unexpected error: ${error.toString()}',
        code: 'UNKNOWN_ERROR',
      );
    }
  }
}

// --------------------- SPECIFIC FAILURES ---------------------
class NetworkFailure extends Failure {
  NetworkFailure({required super.message, required super.code});
}

class TimeoutFailure extends Failure {
  TimeoutFailure({required super.message, required super.code});
}

class MailServerFailure extends Failure {
  MailServerFailure({required super.message, required super.code});

  factory MailServerFailure.fromResponse(http.Response response) {
    final statusCode = response.statusCode;
    if (statusCode >= 400 && statusCode < 500) {
      return MailServerFailure(
        message: 'Client error while sending mail (${response.statusCode})',
        code: 'CLIENT_ERROR',
      );
    } else if (statusCode >= 500) {
      return MailServerFailure(
        message: 'Mail server error (${response.statusCode})',
        code: 'SERVER_ERROR',
      );
    } else {
      return MailServerFailure(
        message: 'Unexpected response: ${response.statusCode}',
        code: 'UNEXPECTED_RESPONSE',
      );
    }
  }
}

class UnknownFailure extends Failure {
  UnknownFailure({required super.message, required super.code});
}

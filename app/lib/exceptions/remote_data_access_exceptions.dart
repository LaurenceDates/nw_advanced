import 'application_exceptions.dart';

class RemoteDataAccessException extends ApplicationException {
  RemoteDataAccessException({super.message, super.cause, super.stackTrace});
}

class RemoteDataAccessTimeoutException extends RemoteDataAccessException {
  RemoteDataAccessTimeoutException({super.message, super.cause, super.stackTrace});
}

class RejectedRemoteDataAccessException extends RemoteDataAccessException {
  RejectedRemoteDataAccessException({super.message, super.cause, super.stackTrace});
}

class RemoteDataFormatException extends RemoteDataAccessException {
  RemoteDataFormatException({super.message, super.cause, super.stackTrace});
}
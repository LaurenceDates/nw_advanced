import 'application_exceptions.dart';

class LocalDatabaseException extends ApplicationException {
  LocalDatabaseException({super.message, super.cause, super.stackTrace});
}

class LocalDatabaseInitializationFailureException extends LocalDatabaseException {
  LocalDatabaseInitializationFailureException({super.message, super.cause, super.stackTrace});
}

class LocalDatabaseNotInitializedException extends LocalDatabaseException {
  LocalDatabaseNotInitializedException({super.message, super.cause, super.stackTrace});
}
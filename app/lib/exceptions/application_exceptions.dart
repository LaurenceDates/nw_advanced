class ApplicationException implements Exception {
  String? message;
  Object? cause;
  StackTrace? stackTrace;

  @override
  String toString() {
    if (message == null) {
      return runtimeType.toString();
    } else {
      return "${runtimeType.toString()}: $message";
    }
  }

  ApplicationException({this.message, this.cause, this.stackTrace});
}

class UnexpectedApplicationException extends ApplicationException {
  UnexpectedApplicationException({super.message, super.cause, super.stackTrace});
}

class ClientException extends ApplicationException {
  ClientException({super.message, super.cause, super.stackTrace});
}

class ObsoleteClientException extends ClientException {
  ObsoleteClientException({super.message, super.cause, super.stackTrace});
}

class DataNotInitializedException extends ClientException {
  DataNotInitializedException({super.message, super.cause, super.stackTrace});
}


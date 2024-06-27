import 'package:http/http.dart' as http;
import 'package:nw_advanced/exceptions/remote_data_access_exceptions.dart';

import '../exceptions/application_exceptions.dart';

class HttpComponent {
  static Future<http.Response> get(Uri uri, {Map<String, String>? headers, int timeout = 20000, int retry = 3}) async {
    for (int i = 0; i < retry; i++) {
      try {
        http.Response res = await http.get(uri).timeout(Duration(milliseconds: timeout), onTimeout: (){throw RemoteDataAccessTimeoutException(message: "HTTP GET request for \"${uri.toString()}\" timed out. try: ${i+1}/$retry");});
        return res;
        // return await http.get(uri).timeout(Duration(milliseconds: timeout), onTimeout: (){throw RemoteDataAccessTimeoutException(message: "HTTP GET request for \"${uri.toString()}\" timed out. try: ${i+1}/$retry");});
      } on RemoteDataAccessTimeoutException catch (e) {
        continue;
      } catch (e) {
        throw RemoteDataAccessException(message: "Failed HTTP GET request for ${uri.toString()}", cause: e);
      }
    }
    throw RemoteDataAccessTimeoutException(message: "HTTP GET request for \"${uri.toString()}\" timed out $retry times.");
  }

  static String convertToRFC1123Datetime(int millisecondsSinceEpoch) {
    const String exceptionMessage = "DateTime Format Conversion Failure. Failed to Convert dart DateTime to RFC 1123 Datetime format.";

    final DateTime datetime = DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch).toUtc();
    final StringBuffer sb = StringBuffer();

    final int weekday = datetime.weekday;
    switch (weekday) {
      case 1: sb.write("Mon, "); break;
      case 2: sb.write("Tue, "); break;
      case 3: sb.write("Wed, "); break;
      case 4: sb.write("Thu, "); break;
      case 5: sb.write("Fri, "); break;
      case 6: sb.write("Sat, "); break;
      case 7: sb.write("Sun, "); break;
      default: throw UnexpectedApplicationException(message: exceptionMessage);
    }

    sb.write(datetime.day);
    sb.write(' ');

    final int month = datetime.month;
    switch (month) {
      case 1: sb.write("Jan "); break;
      case 2: sb.write("Feb "); break;
      case 3: sb.write("Mar "); break;
      case 4: sb.write("Apr "); break;
      case 5: sb.write("May "); break;
      case 6: sb.write("Jun "); break;
      case 7: sb.write("Jul "); break;
      case 8: sb.write("Aug "); break;
      case 9: sb.write("Sep "); break;
      case 10: sb.write("Oct "); break;
      case 11: sb.write("Nov "); break;
      case 12: sb.write("Dec "); break;
      default: throw UnexpectedApplicationException(message: exceptionMessage);
    }

    sb.write(datetime.year);
    sb.write(' ');

    sb.write(datetime.hour.toString().padLeft(2, '0'));
    sb.write(':');

    sb.write(datetime.minute.toString().padLeft(2, '0'));
    sb.write(':');

    sb.write(datetime.second.toString().padLeft(2, '0'));
    sb.write(' ');

    sb.write('GMT');

    return sb.toString();
  }
}
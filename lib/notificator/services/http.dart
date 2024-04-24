import 'package:http/http.dart' as http;

class HttpService {
  Future<http.Response> get(body, header) {
    return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  }
}

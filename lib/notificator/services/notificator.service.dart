import 'package:notificame/notificator/services/http.dart';

class NotificatorService {
  Future getData() async {
    final data = await HttpService().get({}, {});
    return data.body;
  }
}

import 'dart:convert';
import 'package:http/http.dart' as http;

class FCMUsecase {
  final String serverKey;

  FCMUsecase({required this.serverKey});

  Future<void> sendNotificationToDevice({
    required String deviceToken,
    required String title,
    required String content,
    required Map<String, dynamic> data,
  }) async {
    final url = Uri.parse('https://fcm.googleapis.com/fcm/send');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'key=$serverKey',
    };

    final body = json.encode({
      'to': deviceToken,
      'notification': {'title': title, 'body': content},
      'data': data,
    });

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      print("푸시 전송 성공: $title - $content");
    } else {
      print("푸시 전송 실패: ${response.body}");
    }
  }
}

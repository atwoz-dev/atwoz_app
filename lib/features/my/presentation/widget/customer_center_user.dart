import 'package:flutter/material.dart';
import '../page/customer_center_page.dart' show Message; // Message 모델 임포트


// 사용자 메시지 버블 위젯
class UserMessageBubble extends StatelessWidget {
  final Message message;

  const UserMessageBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // 💡 사용자 메시지: ConstrainedBox를 사용하여 최대 너비를 화면 너비의 80%로 제한
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.8,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: const BoxDecoration(
                color: Color(0xFF7A41FF),
                // 사용자 메시지: 오른쪽 상단(topRight) 모서리만 각지게
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                  topRight: Radius.zero,
                ),
              ),
              child: Text(
                message.text,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

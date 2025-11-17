import 'package:atwoz_app/app/constants/icon_path.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:flutter/material.dart';
import '../page/customer_center_page.dart' show Message;


const _userColor = Color(0xFF7A41FF);
const _botColor = Colors.white;
const _botBorderColor = Color(0xFFDDDDDD);
const _bubbleRadius = 8.0;
const _textColor = Color(0xFF333333); 
const _buttonBackgroundColor = Color(0xFFF4F4F4); 
const _iconSize = 24.0;
const _iconContainerSize = 36.0;

class UserMessageBubble extends StatelessWidget {
  final Message message;

  const UserMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 12.0),
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.6),
        decoration: BoxDecoration(
          color: _userColor,
          borderRadius: BorderRadius.circular(_bubbleRadius)
              .copyWith(topRight: const Radius.circular(0)),
        ),
        child: Text(
          message.text,
          style: const TextStyle(color: Colors.white, fontSize: 14, height: 1.4),
        ),
      ),
    );
  }
}

class BotMessageBubble extends StatelessWidget {
  final Message message;
  final List<String> options;
  final bool isInitialOptions;
  final Function(String, {required bool isInitialSelection}) onOptionSelected;

  const BotMessageBubble({
    super.key,
    required this.message,
    required this.options,
    required this.isInitialOptions,
    required this.onOptionSelected,
  });

  @override
  Widget build(BuildContext context) {
    final messageWidth = MediaQuery.of(context).size.width * 0.6;

    return Container(
      padding: const EdgeInsets.only(bottom: 12.0),
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 봇 아이콘 영역
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: _botBorderColor, width: 1),
            ),
            child: Container(
              width: _iconContainerSize,
              height: _iconContainerSize,
              padding: const EdgeInsets.all(6.0), 
              child: const DefaultIcon(
                IconPath.customerCenterLogo,
                size: _iconSize,
              ),
            ),
          ),
          const SizedBox(width: 8.0),

          // 메시지 및 옵션 영역
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 봇 메시지 버블
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  constraints: BoxConstraints(maxWidth: messageWidth),
                  decoration: BoxDecoration(
                    color: _botColor,
                    border: Border.all(color: _botBorderColor),
                    borderRadius: BorderRadius.circular(_bubbleRadius)
                        .copyWith(topLeft: const Radius.circular(0)),
                  ),
                  child: Text(
                    message.text,
                    style: const TextStyle(color: Colors.black, fontSize: 14, height: 1.4),
                  ),
                ),
                
                if (options.isNotEmpty) ...[
                  const SizedBox(height: 8.0),
                  _OptionSelectBubble(
                    options: options,
                    isInitialOptions: isInitialOptions,
                    onOptionSelected: onOptionSelected,
                    messageWidth: messageWidth, 
                  ),
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _OptionSelectBubble extends StatelessWidget {
  final List<String> options;
  final bool isInitialOptions;
  final Function(String, {required bool isInitialSelection}) onOptionSelected;
  final double messageWidth;

  const _OptionSelectBubble({
    required this.options,
    required this.isInitialOptions,
    required this.onOptionSelected,
    required this.messageWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: messageWidth, 
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: _botColor, // 그룹 배경색
        border: Border.all(
          color: _botBorderColor, // 그룹 경계선
          width: 1,
        ),
        borderRadius: BorderRadius.circular(_bubbleRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: options
            .map(
              (option) => Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: OutlinedButton(
                  onPressed: () => onOptionSelected(option, isInitialSelection: isInitialOptions),
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(0, 44),
                    backgroundColor: _buttonBackgroundColor,
                    foregroundColor: _textColor,
                    side: const BorderSide(color: _botBorderColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: Text(option),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
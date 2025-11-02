import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:flutter/material.dart';
import '../page/customer_center_page.dart' show Message; // Message 모델 임포트
import 'package:atwoz_app/app/constants/constants.dart'; // Palette.colorGrey200 사용을 위해 필요

// 색상 및 레이아웃 상수 정의
const Color _textColor = Color(0xFF333333); 
const Color _borderColor = Color(0xFFDDDDDD);
const Color _buttonBackgroundColor = Color(0xFFF4F4F4); 
const double _buttonRadius = 8.0;

class BotMessageBubble extends StatelessWidget {
  final Message message;
  final List<String> options;
  final bool isInitialOptions; // 버튼 스타일을 구분하기 위해 사용
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
    // 화면 너비의 60%를 계산하여 변수에 저장
    final double messageWidth = MediaQuery.of(context).size.width * 0.6;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: _borderColor,
                width: 1,
              ),
            ),
            child: Container(
              width: 36,
              height: 36,
              padding: const EdgeInsets.all(8),
              child: const DefaultIcon(
                IconPath.customerCenterLogo,
                size: 24,
              ),
            ),
          ),
          const SizedBox(width: 6.0),
          
          Expanded( 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  // 1. 봇 메시지 버블
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: messageWidth, 
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: _borderColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(_buttonRadius),
                        ),
                        // 텍스트 색상 및 크기 적용
                        child: Text(message.text, style:const TextStyle(color: _textColor, fontSize: 14)),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 12.0),

                  // 2. 선택지 버튼 목록 렌더링
                  if (options.isNotEmpty)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: messageWidth,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Palette.colorGrey200, 
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(_buttonRadius),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch, 
                            children: options.asMap().entries.map((entry) {
                                final index = entry.key;
                                final option = entry.value;

                                // 첫 번째 버튼(index 0) 위에는 패딩 없음, 나머지는 8.0
                                return Padding(
                                  padding: EdgeInsets.only(top: index == 0 ? 0.0 : 4.0), 
                                  child: isInitialOptions
                                      ? OutlinedButton(
                                          onPressed: () => onOptionSelected(option, isInitialSelection: true),
                                          child: Text(option),
                                          style: OutlinedButton.styleFrom(
                                            minimumSize: const Size(0, 44), 
                                            alignment: Alignment.center,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(6.0),
                                            ),
                                            side: const BorderSide(color: _borderColor),
                                            backgroundColor: _buttonBackgroundColor,
                                            foregroundColor: _textColor,
                                          ),
                                        )
                                      : OutlinedButton(
                                          onPressed: () => onOptionSelected(option, isInitialSelection: false),
                                          child: Text(option),
                                          style: OutlinedButton.styleFrom(
                                            minimumSize: const Size(0, 44),
                                            alignment: Alignment.center,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(6.0),
                                            ),
                                            side: const BorderSide(color: _borderColor),
                                            backgroundColor: _buttonBackgroundColor,
                                            foregroundColor: _textColor,
                                          ),
                                        ),
                                );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
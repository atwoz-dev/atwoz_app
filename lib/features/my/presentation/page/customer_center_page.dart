import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter/material.dart';
import '../widget/customer_center.dart';

class Message {
  final String sender; // 'bot' 또는 'user'
  final String text;
  final bool isOptions;
  final bool isInitialOptions;

  Message({
    required this.sender,
    required this.text,
    this.isOptions = false,
    this.isInitialOptions = false,
  });
}

class CustomerCenterPage extends StatefulWidget {
  const CustomerCenterPage({super.key});

  @override
  State<CustomerCenterPage> createState() => _CustomerCenterPageState();
}

class _CustomerCenterPageState extends State<CustomerCenterPage> {
  final List<Message> _messages = [];
  String? _selectedCategory;
  
  // chatBotData는 Map<String, Map<String, String>> 구조라고 가정합니다.
  static final _initialOptions = chatBotData.keys.toList();
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    const String userName = '고객';
    final greeting = '$userName님, 안녕하세요 딥플입니다.\n궁금한 사항을 선택해 주세요';
    _messages.add(
      Message(sender: 'bot', text: greeting, isOptions: true, isInitialOptions: true),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  // 대화 스크롤을 맨 아래로 이동시키는 함수
  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 700),
          curve: Curves.easeOut,
        );
      }
    });
  }

  List<String> _getCurrentOptions(Message message) {
    if (!message.isOptions) return [];

    if (message.isInitialOptions) {
      return _initialOptions;
    } else if (_selectedCategory != null) {
      return chatBotData[_selectedCategory]?.keys.toList() ?? [];
    }
    return [];
  }

  void _handleOptionSelected(String option, {required bool isInitialSelection}) {
    if (!mounted) return;

    // 1. 사용자가 선택한 메시지 추가
    setState(() => _messages.add(Message(sender: 'user', text: option)));
    _scrollToBottom();

    if (isInitialSelection) {
      // 1단계 선택: 2단계 메뉴 제시
      _selectedCategory = option;

      Future.delayed(const Duration(milliseconds: 700), () {
        if (mounted) {
          setState(() {
            _messages.add(
              Message(
                sender: 'bot',
                text: '$option에 대해 무엇이 궁금하신가요?',
                isOptions: true,
                isInitialOptions: false,
              ),
            );
          });
          _scrollToBottom();
        }
      });
    } else {
      // 2단계 선택: 최종 답변 제시 및 초기화
      final botResponse = chatBotData[_selectedCategory]?[option] ?? '해당 내용이 없습니다.';

      Future.delayed(const Duration(milliseconds: 700), () {
        if (mounted) {
          // 최종 답변 추가
          setState(() => _messages.add(Message(sender: 'bot', text: botResponse)));
          _scrollToBottom();

          // 카테고리 초기화
          _selectedCategory = null; 

          // 초기 선택지 복구 메시지 추가
          Future.delayed(const Duration(milliseconds: 700), () {
            if (mounted) {
              setState(() {
                _messages.add(
                  Message(
                    sender: 'bot',
                    text: '다른 문의 사항이 있으신가요?',
                    isOptions: true,
                    isInitialOptions: true, // 초기 옵션으로 돌아가기 위해 true
                  ),
                );
              });
              _scrollToBottom();
            }
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('고객 센터'), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];

                final messageWidget = message.sender == 'bot'
                    ? BotMessageBubble(
                        message: message,
                        options: _getCurrentOptions(message), 
                        isInitialOptions: message.isInitialOptions,
                        onOptionSelected: _handleOptionSelected,
                      )
                    : UserMessageBubble(message: message);

                return AnimatedOpacity(
                  // 💡 AnimatedOpacity 복구: 모든 메시지에 대해 즉시 1.0으로 설정하여 나타나는 효과
                  opacity: 1.0,
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: messageWidget,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
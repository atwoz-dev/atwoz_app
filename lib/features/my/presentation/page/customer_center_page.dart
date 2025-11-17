import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter/material.dart';
import '../widget/customer_center.dart';

<<<<<<< HEAD
// 고객센터 챗봇의 질문과 답변 데이터
const Map<String, Map<String, String>> _chatBotData = {
  '사용 방법': {
    '데이트 신청' :
      "데이트 신청 방법을 안내해 드리겠습니다.\n\n마음에 드는 이성에게 메시지를 보내 데이트 신청을 할 수 있습니다. 상대방이 데이트 신청을 수락할 경우 매칭이 완료되며 서로의 연락처가 공개됩니다.",
    '하트 환불정책' :
      "사용한 하트에 대한 환불 정책을 안내해 드리겠습니다.\n\n메시지의 경우 상대방이 읽지 않은 경우 사용한 하트를 100% 다시 돌려드리며 상대방이 거절하거나 읽고 난 뒤 응답이 없을 경우 환급이 불가합니다.",
    '프로필 차단 방법' :
      "상대방 프로필 차단에 대해 안내해 드리겠습니다.\n\n상대방 프로필 > 우측 상단의 동그란 경고 아이콘 > 차단하기\n\n한 번 차단된 회원은 이후에 매칭이 진행되지 않는 점 유의 바랍니다.",
    '권고 / 경고 알림' :
      "권고/경고 알림에 대한 기준을 안내해 드리겠습니다.\n\n프로필 수정 권고 알림의 경우 신고 접수 및 내부 모니터링을 통해 프로필 변경을 권고해 드리고 있습니다.\n\n또한 모든 회원이 공평하고 불편함 없이 서비스를 이용할 수 있도록 굿밋의 이용규칙을 위반한 사용자의 경우 내부 기준에 의하여 서비스 이용이 정지 될 수 있으니 꼭 가이드라인을 준수 하시기 바랍니다.",
  },
  '호감 / 메시지 / 매칭': {
    '호감':
        "호감에 대해 안내해 드리겠습니다.\n\n호감은 관심과 진심 두 가지 호감이 존재하며 일반적인 호감인 관심과 달리 진심의 경우 호감을 받은 상대방에게 표시되어 보다 강하게 어필할 수 있습니다.\n\n놓치고 싶지 않은 이성에게는 진심을 표현하세요. 매칭 확률이 올라갑니다.",
    '메시지':
        "메시지에 대해 안내해 드리겠습니다.\n\n데이트 신청을 원할 경우 하트를 사용하여 상대방에게 메시지를 보낼 수 있습니디.\n\n상대방이 데이트 신청을 수락할 경우 서로의 연락처가 공개됩니다.\n\n한 번 보낸 메시지는 회수가 불가하기에 신중하게 보내야 합니다.",
    '매칭':
        "매칭에 대해 안내해 드리겠습니다.\n\n상대방이 보낸 메시지를 수락하면 매칭이  완료되며 서로의 연락처가 공개됩니다\n\n매칭이 완료된 이후에도 상대방의 프로필을 눌러 서로에게 보낸 메시지를 확인할 수 있습니다.",
  },
  '결제 / 환불': {
    '결제 오류':
        "결제 오류로 불편을 드려 죄송합니다 고객님, 결제 오류를 해결할 수 있도록 아래의 이메일로 사용중인 기기의 OS 버전을 알려주시면 최대한 빠르게 문제를 확인하고 답변드리겠습니다.\n\n문의 메일: help@atwoz.kr ",
    '구입한 하트 환불':
        "구입한 하트에 대한 환불 정책을 안내해 드리겠습니다.\n\n메시지의 경우 상대방이 읽지 않은 경우 사용한 하트를 100% 다시 돌려드리며 상대방이 거절하거나 읽고 난 뒤 응답이 없을 경우 환급이 불가합니다.\n\n미션을 통해 획득한 하트의 경우 환불 대상에 포함되지 않습니다.",
    '메시지 발송 실패':
        "메시지 발송 실패로 불편을 드려 죄송합니다 고객님, 오류를 해결할 수 있도록 아래의 이메일로 사용중인 기기의 OS 버전을 알려주시면 최대한 빠르게 문제를 확인하고 답변드리겠습니다.\n\n문의 메일: help@atwoz.kr ",
  },
  '미션': {
    '호감 미션':
        "호감(좋아요) 미션에 대해 안내해 드리겠습니다.\n\n매일 중복해서 참여할 수 있는 데일리 미션입니다. 정해진 횟수만큼 미션을 수행할 수 있으며 [좋아요] 버튼을 눌러 이성에게 호감을 보내면 미션이 완료됩니다.",
    '연애모의고사 첫 응시 미션':
        "연애모의고사 첫 응시 미션에 대해 안내해 드리겠습니다.\n\n계정 생성 후 1회 참여 가능한 미션으로 연애모의고사 응시 후 [제출하기] 버튼을 눌러 미션에 참여할 수 있습니다.",
    '인터뷰 등록 미션':
        "인터뷰 등록 미션에 대해 안내해 드리겠습니다.\n\n계정 생성 후 1회 참여 가능한 미션으로 인터뷰 3개 등록 후 [완료] 버튼을 눌러 미션에 참여할 수 있습니다.",
  },
  '서비스 오류': {
    '메시지 사라짐':
        "메시지가 사라지는 문제에 대해 안내해 드리겠습니다.\n\n상배방을 차단하였거나 이미 탈퇴한 회원의 경우 또는 고객님께서 이용이 정지된 경우 메시지가 삭제될 수 있습니다.\n\n또한 고객님이 상대 이성으로 부터 메시지를 수신한 경우 3일 이상 답변을 하지 않을 시 상대방은 사용한 하트를 환급받고 메시지는 자동으로 회수됩니다.",
    '기타 오류' : // 임시 텍스트
        "기타 오류로 불편을 드려 죄송합니다 고객님, 오류를 해결할 수 있도록 아래의 이메일로 사용중인 기기의 OS 버전을 알려주시면 최대한 빠르게 문제를 확인하고 답변드리겠습니다.\n\n문의 메일: help@atwoz.kr ",
  },
};


// 메시지 데이터를 위한 모델 정의 (다른 위젯들이 'show Message'로 임포트)
=======
>>>>>>> bb69797 (고객센터 페이지 수정, 버블 위젯 통합)
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

<<<<<<< HEAD
// 고객센터 페이지 구현
class CustomerCenterPage extends ConsumerStatefulWidget {
=======
class CustomerCenterPage extends StatefulWidget {
>>>>>>> bb69797 (고객센터 페이지 수정, 버블 위젯 통합)
  const CustomerCenterPage({super.key});

  @override
  State<CustomerCenterPage> createState() => _CustomerCenterPageState();
}

<<<<<<< HEAD
// 고객센터 페이지 상태 관리
class _CustomerCenterPageState extends ConsumerState<CustomerCenterPage> {
=======
class _CustomerCenterPageState extends State<CustomerCenterPage> {
>>>>>>> bb69797 (고객센터 페이지 수정, 버블 위젯 통합)
  final List<Message> _messages = [];
  String? _selectedCategory;
  
  // chatBotData는 Map<String, Map<String, String>> 구조라고 가정합니다.
  static final _initialOptions = chatBotData.keys.toList();
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
<<<<<<< HEAD
    
    // '고객'님으로 고정 후 추후에 닉네임 연동 예정
    const String userName = '고객';
    
    // 닉네임을 사용하여 초기 메시지 텍스트를 구성
    final greeting = '$userName님, 안녕하세요 굿밋입니다\n궁금한 사항을 선택해 주세요';
    
=======
    const String userName = '고객';
    final greeting = '$userName님, 안녕하세요 딥플입니다.\n궁금한 사항을 선택해 주세요';
>>>>>>> bb69797 (고객센터 페이지 수정, 버블 위젯 통합)
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
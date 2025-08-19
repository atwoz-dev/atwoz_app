import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/features/exam/presentation/widget/answer_radio_button.dart';
import 'package:atwoz_app/features/exam/presentation/widget/step_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Subject {
  final int id;
  final String name;
  final List<Question> questions;

  Subject({
    required this.id,
    required this.name,
    required this.questions,
  });

  factory Subject.fromJson(Map<String, dynamic> json) {
    return Subject(
      id: json['id'],
      name: json['name'],
      questions:
          (json['questions'] as List).map((q) => Question.fromJson(q)).toList(),
    );
  }
}

class Question {
  final int id;
  final String content;
  final List<Answer> answers;

  Question({required this.id, required this.content, required this.answers});

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'],
      content: json['content'],
      answers: (json['answers'] as List)
          .map((answer) => Answer.fromJson(answer))
          .toList(),
    );
  }
}

class Answer {
  final int id;
  final String content;

  Answer({required this.id, required this.content});

  factory Answer.fromJson(Map<String, dynamic> json) {
    return Answer(
      id: json['id'],
      content: json['content'],
    );
  }
}

class ExamRequiredQuestionPage extends ConsumerStatefulWidget {
  const ExamRequiredQuestionPage({super.key});

  @override
  ExamRequiredQuestionPageState createState() =>
      ExamRequiredQuestionPageState();
}

final List<Map<String, dynamic>> subjectData = [
  {
    "id": 1,
    "type": "REQUIRED",
    "name": "가치관",
    "questions": [
      {
        "id": 1,
        "content": "다음 중 나에게 가장 중요한 가치는 무엇인가?",
        "answers": [
          {"id": 1, "content": "물질적 행복"},
          {"id": 2, "content": "자기계발"},
          {"id": 3, "content": "건강"},
          {"id": 4, "content": "기타"}
        ]
      },
      {
        "id": 2,
        "content": "다음 중 내가 회사를 볼 때 중요하게 여기는 것은?",
        "answers": [
          {"id": 5, "content": "높은 연봉"},
          {"id": 6, "content": "성장가능성"},
          {"id": 7, "content": "워라벨"},
          {"id": 8, "content": "기타"}
        ]
      },
      {
        "id": 3,
        "content": "다음 중 내가 생각하는 연애를 하면서 꼭 필요한 감정 요소는?",
        "answers": [
          {"id": 9, "content": "안정감"},
          {"id": 10, "content": "설렘"},
          {"id": 11, "content": "약간의 긴장감"},
          {"id": 12, "content": "기타"}
        ]
      },
      {
        "id": 4,
        "content": "다음 중 편식이 심한 연인을 위해 내가 할 수 있는 것은?",
        "answers": [
          {"id": 13, "content": "편식을 극복할 수 있도록 응원하고 도와준다."},
          {"id": 14, "content": "싫어하는 음식들은 모두 제외하고 먹으며 내가 맞춰준다."},
          {"id": 15, "content": "밥은 따로 먹고 만나자며 방안을 제시한다."},
          {"id": 16, "content": "나는 음식이 정말 중요해서 인연을 이어갈 수 없다."}
        ]
      },
      {
        "id": 5,
        "content": "다음 중 나와 다른 종교를 강요하는 연인에 대한 나의 행동은?",
        "answers": [
          {"id": 17, "content": "연인이 하자고 하는 대로 종교활동에 따라 간다."},
          {"id": 18, "content": "종교의 자유는 지켜주길 바라며 설득한다."},
          {"id": 19, "content": "종교 강요는 참을 수 없기에 더이상 만날 수 없다."},
          {"id": 20, "content": "종교는 종교일 뿐, 연인의 말을 무시하고 평소처럼 지낸다."}
        ]
      },
      {
        "id": 6,
        "content": "연인이 3년간 해외출장을 가게 되었을 때의 나의 생각은?",
        "answers": [
          {"id": 21, "content": "안 가면 안 되는 건지 물어보고 가지말라고 애원한다."},
          {"id": 22, "content": "연인의 커리어를 위해서라면 보내주고 기다린다."},
          {"id": 23, "content": "3년씩은 좀… 좋은 사람 만나라며 헤어진다."},
          {"id": 24, "content": "나도 함께 따라간다."}
        ]
      },
      {
        "id": 7,
        "content": "다음 중 내가 생각하는 바람의 기준과 가장 근접한 것은?",
        "answers": [
          {"id": 25, "content": "매일 1:1로 연락하기"},
          {"id": 26, "content": "만날 때마다 단둘이 만나기"},
          {"id": 27, "content": "정신과 마음이 다른 사람에게 집중할 때"},
          {"id": 28, "content": "육체적인 관계"}
        ]
      },
      {
        "id": 8,
        "content": "다음 중 사랑에 관한 명언 중 가장 나의 마음을 동요하게 만든 명언은?",
        "answers": [
          {"id": 29, "content": "사랑은 눈으로 보지 않고 마음으로 보는 것이다 - 윌리엄 셰익스피어"},
          {"id": 30, "content": "중요한 것은 사랑을 받는 것이 아니라 사랑을 주는 것이였다 - 서머셋 모옴"},
          {"id": 31, "content": "사랑은 두 개의 마음이 하나의 공간에서 춤을 추는 것이다 - 알프레드 텐니슨"},
          {"id": 32, "content": "내가 이해하는 모든 것은 내가 사랑하기 때문에 이해하는 것이다 - 레프 톨스토이"}
        ]
      },
      {
        "id": 9,
        "content": "다음 중 연인이 이성친구과 단둘이 만날 때 내가 이해할 수 있는 범위는?",
        "answers": [
          {"id": 33, "content": "카페"},
          {"id": 34, "content": "식사"},
          {"id": 35, "content": "술집"},
          {"id": 36, "content": "모두 이해할 수 없다"}
        ]
      },
      {
        "id": 10,
        "content": "다음 중 내가 ‘연인에게 사랑을 받고 있구나’ 하고 가장 느낄 수 있는 포인트는?",
        "answers": [
          {"id": 37, "content": "나에 대한 애정어린 질문과 안부"},
          {"id": 38, "content": "보고 싶다며 직접 찾아와주는 모습"},
          {"id": 39, "content": "나를 생각하며 샀다던 선물"},
          {"id": 40, "content": "나와 함께하는 미래를 얘기하는 모습"}
        ]
      }
    ]
  },
  {
    "id": 2,
    "type": "REQUIRED",
    "name": "데이트",
    "questions": [
      {
        "id": 11,
        "content": "다음 중 선호하는 데이트 시간은?",
        "answers": [
          {"id": 41, "content": "아침 일찍"},
          {"id": 42, "content": "오후 늦게"},
          {"id": 43, "content": "하루종일"},
          {"id": 44, "content": "기타"}
        ]
      },
      {
        "id": 12,
        "content": "다음 중 하루 데이트 비용으로 적당한 것은?",
        "answers": [
          {"id": 45, "content": "3만원 이하"},
          {"id": 46, "content": "5만원 내외"},
          {"id": 47, "content": "10만원 이상"},
          {"id": 48, "content": "기타"}
        ]
      },
      {
        "id": 13,
        "content": "다음 중 지각한 연인을 너그럽게 용서할 수 있는 시간은?",
        "answers": [
          {"id": 49, "content": "약속시간으로 부터 10분"},
          {"id": 50, "content": "약속시간으로 부터 30분"},
          {"id": 51, "content": "약속시간으로 부터 1시간"},
          {"id": 52, "content": "정당한 이유가 있다면 상관없다"}
        ]
      },
      {
        "id": 14,
        "content": "나와 연인과의 메세지 대화 간격으로 가장 알맞은 것은?",
        "answers": [
          {"id": 53, "content": "즉시 답장"},
          {"id": 54, "content": "3시간 미만"},
          {"id": 55, "content": "12시간 미만"},
          {"id": 56, "content": "생존신고만 하면 된다"}
        ]
      },
      {
        "id": 15,
        "content": "적합하다고 생각하는 데이트 횟수는?",
        "answers": [
          {"id": 57, "content": "주 3회 이상"},
          {"id": 58, "content": "주 1 ~ 2회"},
          {"id": 59, "content": "월 4회 미만"},
          {"id": 60, "content": "기타"}
        ]
      },
      {
        "id": 16,
        "content": "연인이 같이 가고 싶은 장소라고 하지만 나는 정말 가기 싫을 때의 내가 할 행동은?",
        "answers": [
          {"id": 61, "content": "다른 대체 장소를 추천하며 설득한다"},
          {"id": 62, "content": "그래도 나와 함께 가고 싶은 곳이라니 한 번 따라 가본다"},
          {"id": 63, "content": "‘그럼 다음에는 내가 가고 싶은 곳 가자’ 하며 조건을 제시한다"},
          {"id": 64, "content": "기타"}
        ]
      },
      {
        "id": 17,
        "content": "데이트 중 연인이 지인을 만나 반갑게 대화 나눌 때, 내가 취할 행동은?",
        "answers": [
          {"id": 65, "content": "OO의 애인이라며 먼저 인사하며 대화에 참여한다"},
          {"id": 66, "content": "연인이 편하게 대화 나눌 수 있도록 잠시 자리를 비켜준다"},
          {"id": 67, "content": "연인에게 이동하자며 인사나눈 후 함께 자리를 뜬다"},
          {"id": 68, "content": "병풍처럼 가만히 서있는다"}
        ]
      },
      {
        "id": 18,
        "content": "연인과의 데이트날, 연인이 갑자기 급한 일정이 생겼다며 다음으로 미룬다. 내가 취할 행동은?",
        "answers": [
          {"id": 69, "content": "무슨 일인지 설명부터 들어야 한다"},
          {"id": 70, "content": "일단 급한 것 같으니 데이트를 미루고 나중에 무슨 일인지 물어본다"},
          {"id": 71, "content": "나보다 더 급한 것이 있다는 생각에 화를 낸다"},
          {"id": 72, "content": "기타"}
        ]
      },
      {
        "id": 19,
        "content": "매번 같은 패턴의 데이트가 지겹다는 연인에게 내가 먼저 취할 행동으로 가장 가까운 것은?",
        "answers": [
          {"id": 73, "content": "주변 지인들에게 어떤 데이트를 하는지 물어보고 참고한다"},
          {"id": 74, "content": "연인이 데이트의 소중함을 모르는 것 같으니 한동안 만나지 않는다"},
          {"id": 75, "content": "함께 어떤 것을 하면 좋을지 의논한다"},
          {"id": 76, "content": "어떤 것을 원하는지 먼저 연인에게 물어본다"}
        ]
      },
      {
        "id": 20,
        "content": "다음 중 긴장되는 첫 데이트 전 나의 행동과 가장 가까운 것을 고르시오.",
        "answers": [
          {"id": 77, "content": "유명한 맛집과 효율적으로 이동할 수 있는 동선을 계획한다."},
          {"id": 78, "content": "어떤 옷을 입을지 고민하며 쇼핑한다"},
          {"id": 79, "content": "극도로 긴장이 될 것 같아 청심환을 구비한다"},
          {"id": 80, "content": "기타"}
        ]
      }
    ]
  },
  {
    "id": 3,
    "type": "REQUIRED",
    "name": "취향",
    "questions": [
      {
        "id": 21,
        "content": "다음 중 연인에게 받으면 좋을 것 같은 선물은?",
        "answers": [
          {"id": 81, "content": "정성이 담긴 선물"},
          {"id": 82, "content": "실용적인 선물"},
          {"id": 83, "content": "명품과 같은 비싼 선물"},
          {"id": 84, "content": "기타"}
        ]
      },
      {
        "id": 22,
        "content": "다음 중 연인과 맞았으면 하는 영화 취향은?",
        "answers": [
          {"id": 85, "content": "달달한 로맨스 영화"},
          {"id": 86, "content": "잔잔한 힐링 영화"},
          {"id": 87, "content": "흥미진진한 스릴러"},
          {"id": 88, "content": "기타"}
        ]
      },
      {
        "id": 23,
        "content": "다음 기념일 중 선물을 꼭 주고받아야 한다면?",
        "answers": [
          {"id": 89, "content": "크리스마스"},
          {"id": 90, "content": "생일"},
          {"id": 91, "content": "OOO데이"},
          {"id": 92, "content": "n주년"}
        ]
      },
      {
        "id": 24,
        "content": "다음 중 나의 데이트 타입과 가장 가까운 것은?",
        "answers": [
          {"id": 93, "content": "클라이밍, 등산 등 활동적인 데이트"},
          {"id": 94, "content": "전시회, 공연 등 감각적인 데이트"},
          {"id": 95, "content": "집 나가면 고생. 집 데이트"},
          {"id": 96, "content": "이 모든걸 번갈아보며 해보는 데이트"}
        ]
      },
      {
        "id": 25,
        "content": "내가 제일 좋아하는 스킨십은?",
        "answers": [
          {"id": 97, "content": "포옹하기"},
          {"id": 98, "content": "손 잡기"},
          {"id": 99, "content": "뽀뽀하기"},
          {"id": 100, "content": "팔짱"}
        ]
      },
      {
        "id": 26,
        "content": "다음 중 연인과 맞았으면 하는 것은?",
        "answers": [
          {"id": 101, "content": "취미"},
          {"id": 102, "content": "취향"},
          {"id": 103, "content": "연락 빈도"},
          {"id": 104, "content": "유머 코드"}
        ]
      },
      {
        "id": 27,
        "content": "이성을 볼 때 성격을 제외하고 가장 중요하게 생각하는 것은?",
        "answers": [
          {"id": 105, "content": "스타일"},
          {"id": 106, "content": "유머 감각"},
          {"id": 107, "content": "목소리"},
          {"id": 108, "content": "얼굴"}
        ]
      },
      {
        "id": 28,
        "content": "평소에 선호하는 옷 색깔는?",
        "answers": [
          {"id": 109, "content": "어두운 계열"},
          {"id": 110, "content": "밝은 계열"},
          {"id": 111, "content": "파스텔 컬러"},
          {"id": 112, "content": "트렌드를 따라간다"}
        ]
      },
      {
        "id": 29,
        "content": "다음 중 가장 선호하는 음식은?",
        "answers": [
          {"id": 113, "content": "한식"},
          {"id": 114, "content": "중식"},
          {"id": 115, "content": "일식"},
          {"id": 116, "content": "양식"}
        ]
      },
      {
        "id": 30,
        "content": "다음 중 데이트 중 정말 먹고 싶지 않은 음식은?",
        "answers": [
          {"id": 117, "content": "마라탕"},
          {"id": 118, "content": "국밥"},
          {"id": 119, "content": "파스타"},
          {"id": 120, "content": "기타"}
        ]
      }
    ]
  }
];

class ExamRequiredQuestionPageState
    extends ConsumerState<ExamRequiredQuestionPage> {
  PageController _pageController = PageController();

  Map<int, int> _currentAnswerList = {};
  Map<int, int> _totalAnswerList = {};
  List<Subject> _subjectList = [];
  int _currentSubjectIndex = 0;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    _subjectList = subjectData.map((e) => Subject.fromJson(e)).toList();

    _pageController.addListener(() {
      final page = _pageController.page?.round() ?? 0;
      if (page != _currentPage) {
        setState(() {
          _currentPage = page;
        });
      }
    });
  }

  void _saveAnswer(int questionId, int answerId) {
    setState(() {
      _currentAnswerList[questionId] = answerId;
      _totalAnswerList[questionId] = answerId;
    });
  }

  void _resetAnswer() {
    setState(() {
      _currentAnswerList = {};
    });
  }

  void _nextStep() async {
    final currentSubject = _subjectList[_currentSubjectIndex];

    if (_currentPage < currentSubject.questions.length - 1) {
      await Future.delayed(Duration(milliseconds: 300));

      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _prevStep() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      CustomDialogue.showTwoChoiceDialogue(
          context: context,
          content: '연애 모의고사를 종료 하시겠어요?\n페이지를 벗어날경우, 저장되지 않아요',
          onElevatedButtonPressed: () {
            navigate(
              context,
              route: AppRoute.home,
            );
          });
    }
  }

  void _submit() {
    navigate(
      context,
      route: AppRoute.examRequiredResult,
    );

    if (_currentSubjectIndex < _subjectList.length - 1) {
      _resetAnswer();

      setState(() {
        _currentSubjectIndex++;
        _currentPage = 0;
        _pageController.jumpToPage(0);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentSubject = _subjectList[_currentSubjectIndex];
    final currentQuestions = currentSubject.questions;

    return Scaffold(
        appBar: DefaultAppBar(
          title: currentSubject.name,
          leadingAction: (context) => {
            CustomDialogue.showTwoChoiceDialogue(
                context: context,
                content: '연애 모의고사를 종료 하시겠어요?\n페이지를 벗어날경우, 저장되지 않아요',
                onElevatedButtonPressed: () {
                  navigate(
                    context,
                    route: AppRoute.home,
                  );
                }),
          },
        ),
        body: SafeArea(
            child: Stack(children: [
          Positioned.fill(
              child: Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                    bottom: 100,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(24),
                        StepIndicator(
                          totalStep: currentQuestions.length,
                          currentStep: _currentPage + 1,
                        ),
                        Gap(24),
                        ConstrainedBox(
                            constraints: BoxConstraints(minHeight: 60.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${_currentPage + 1}. ",
                                    style: Fonts.header03().copyWith(
                                      color: Palette.colorBlack,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      currentQuestions[_currentPage].content,
                                      style: Fonts.header03().copyWith(
                                        color: Palette.colorBlack,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ])),
                        Expanded(
                            child: PageView.builder(
                          controller: _pageController,
                          physics:
                              NeverScrollableScrollPhysics(), // 자동 Swipe 방지
                          itemCount: currentQuestions.length,
                          itemBuilder: (context, index) {
                            final question = currentQuestions[index];
                            final selectedAnswerId =
                                _currentAnswerList[question.id];

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: question.answers.map((answer) {
                                    return Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 12),
                                        child: AnswerRadioButton(
                                          id: answer.id,
                                          selectedId: selectedAnswerId,
                                          content: answer.content,
                                          onTap: (int id) {
                                            _saveAnswer(question.id, id);
                                            _nextStep();
                                          },
                                        ));
                                  }).toList(),
                                )
                              ],
                            );
                          },
                        )),
                      ]))),
          Positioned(
              left: 24,
              right: 24,
              bottom: 0,
              child: Row(spacing: 8.0, children: [
                Expanded(
                    child: DefaultOutlinedButton(
                  primary: Palette.colorGrey100,
                  onPressed: () => _prevStep(),
                  child: Text('이전'),
                  textColor: Palette.colorGrey500,
                )),
                Expanded(
                    child: DefaultElevatedButton(
                  onPressed: _currentAnswerList.length !=
                          currentSubject.questions.length
                      ? null
                      : () => _submit(),
                  child: Text('제출하기'),
                )),
              ]))
        ])));
  }
}

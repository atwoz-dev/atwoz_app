import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/features/lovetest/presentation/widget/widget.dart';

final Map<String, List<Map<String, List<String>>>> option_quizs = {
  '연애밸런스': [
    {
      '1. 어느 쪽이 더 낫다고 생각하나요?': [
        '내가 모르는 이성 집에 있는 연인',
        '연인 집에 있는 내가 모르는 이성',
      ]
    },
    {
      '2. 더 불편한 상황은?': [
        '연인의 이성친구와 연인만 가는 1박 2일 여행',
        '연인과 연인의 전 연인과의 술자리',
      ]
    },
    {
      '3. 당신의 선택은?': [
        '죄를 저지른 연인을 신고하고 1억 포상금 받기',
        '연인과 평생 행복하게 살기',
      ]
    },
    {
      '4. 둘 중 더 연애하고 싶은 사람은?': [
        '내가 좋아하는 사람과 연애하기',
        '나를 좋아하는 사람과 연애하기',
      ]
    },
    {
      '5. 더 로맨틱하다고 느끼는 고백 상황은?': [
        '100명 있는 단톡방에서 고백받기',
        '100% 있는 길거리에서 고백받기',
      ]
    },
    {
      '6. 연인으로 더 참을 수 없는 상황은?': [
        '계속 잠만 자는 연인',
        '계속 먹기만 하는 연인',
      ]
    },
    {
      '7. 연인과의 취미 충돌 상황에서 더 힘든 것은?': [
        '노래방을 좋아하지만 음치인 연인',
        '피씨방을 좋아하지만 게임 못하는 연인',
      ]
    },
    {
      '8. 식사 데이트 시 더 싫은 상황은?': [
        '함께 가는 식당마다 웨이팅 3시간 기다려야 하는 연인',
        '함께 가는 식당마다 맛이 없는 연인',
      ]
    },
    {
      '9. 음식 관련해서 더 좋은 연인은?': [
        '내 입맛에 딱 맞는 음식 잘 만드는 연인',
        '내가 만든 음식 잘 먹는 연인',
      ]
    },
    {
      '10. 갈등 시 더 참기 힘든 연인의 행동은?': [
        '맞춤법 계속 틀리는 연인',
        '내 맞춤법 계속 지적하는 연인',
      ]
    },
    {
      '11. 데이트 빈도에 대해 더 불편한 연인은?': [
        '한 달에 한 번 만나자고 하는 연인',
        '주 5회 만나자고 하는 연인',
      ]
    },
    {
      '12. 중독 상태에서 더 불편한 연인은?': [
        '게임 중독 연인',
        '쇼핑 중독 연인',
      ]
    },
    {
      '13. 감정 표현 방식에서 더 싫은 연인은?': [
        '5초에 한 번 우는 연인',
        '5초에 한 번 화내는 연인',
      ]
    },
  ],
  '결혼': [
    {
      '1. 다음 중 신혼여행으로 가길 원하는 장소는?': [
        '국내여행',
        '유럽여행',
        '동남아여행',
        '기타',
      ]
    },
    {
      '2. 다음 중 꿈꾸는 결혼식 형태가 있다면?': [
        '주변 지인들만 초대하는 스몰웨딩',
        '상대만 호텔결혼식',
        '남들 하는 정도의 평균적인 결혼식',
        '자연과 함께하는 야외 결혼식',
      ]
    },
    {
      '3. 다음 중 노후에 살고 싶은 삶은?': [
        '시골에 내려가 농사 짓고 사는 삶',
        '세계 곳곳을 여행 다니는 삶',
        '바쁘게 일을 하며 지내는 삶',
        '스스로 가꿔갈 미래가 기대되는 홀로 있어도 좋을 것 같은 삶',
      ]
    },
    {
      '4. 다음 중 배우자의 조건으로 좋은 사람은?': [
        '능력이 좋은 사람',
        '듬직하고 건강한 사람',
        '생각이 깊고 배려심이 많은 사람',
        '센스가 넘치는 사람',
      ]
    },
    {
      '5. 다음 중 배우자가 친한 친구들과 여행을 간다고 할 때 허락해줄 수 있는 범위는?': [
        '동성친구끼리의 여행만 허락한다',
        '이성친구가 포함되어도 허락한다',
        '동성친구라도 외박은 허락하기 어렵다',
        '기타',
      ]
    },
    {
      '6. 다음 중 아내 혹은 남편이 맡아줬으면 하는 집안일은?': [
        '쓰레기 분리수거',
        '화장실 청소하기',
        '설거지하기',
        '요리',
      ]
    },
    {
      '7. 다음 중 집안일 배분이 옳다고 생각되는 비율은?': [
        '여자 50 : 남자 50',
        '여자 70 : 남자 30',
        '여자 30 : 남자 70',
        '상황에 따라 배분하기',
      ]
    },
    {
      '8. 다음 중 내가 맡으면 자신있는 집안일은?': [
        '쓰레기 분리수거',
        '화장실 청소하기',
        '설거지하기',
        '요리',
      ]
    },
  ],
};

final Map<String, List<Map<String, List<String>>>> quizs = {
  '가치관': [
    {
      '1. 다음 중 나에게 가장 중요한 가치는 무엇인가?': [
        '물질적 행복',
        '자기계발',
        '건강',
        '기타',
      ]
    },
    {
      '2. 다음 중 내가 회사를 볼 때 중요하게 여기는 것은?': [
        '높은 연봉',
        '성장가능성',
        '워라밸',
        '기타',
      ]
    },
    {
      '3. 다음 중 내가 생각하는 연애를 하면서 꼭 필요한 감정 요소는?': [
        '안정감',
        '설렘',
        '약간의 긴장감',
        '기타',
      ]
    },
    {
      '4. 다음 중 편식이 심한 연인을 위해 내가 할 수 있는 것은?': [
        '편식을 극복할 수 있도록 응원하고 도와준다',
        '싫어하는 음식들은 모두 제외하고 먹으며 내가 맞춰준다',
        '밥은 따로 먹고 만나자며 방안을 제시한다',
        '나는 음식이 정말 중요해서 인연을 이어갈 수 없다',
      ]
    },
    {
      '5. 다음 중 나와 다른 종교를 강요하는 연인에 대한 나의 행동은?': [
        '연인이 하자고 하는 대로 종교활동에 따라간다',
        '종교의 자유는 지켜주되 바람직하지 않다고 설득한다',
        '종교 강요는 참을 수 없기에 더이상 만날 수 없다',
        '종교는 종교일 뿐, 연인의 말을 무시하고 평소처럼 지낸다',
      ]
    },
    {
      '6. 연인이 3년간 해외출장을 가게 되었을 때의 나의 생각은?': [
        '안 가면 안 되는 건지 물어보고 가지말라고 애원한다',
        '연인의 커리어를 위해서라면 보내주고 기다린다',
        '3년씩은 좀… 좋은 사람 만나라고 헤어진다',
        '나도 함께 따라간다',
      ]
    },
    {
      '7. 다음 중 내가 생각하는 바람의 기준과 가장 근접한 것은?': [
        '매일 1:1로 연락하기',
        '만날 때마다 단둘이 만나기',
        '정신과 마음이 다른 사람에게 집중할 때',
        '육체적인 관계',
      ]
    },
    {
      '8. [보기]에서 사랑에 관한 명언 중 가장 나의 마음을 동요하게 만든 명언은?': [
        '사랑은 눈으로 보지 않고 마음으로 보는 것이다 - 윌리엄 셰익스피어',
        '중요한 것은 사랑을 받는 것이 아니라 사랑을 주는 것이었다 - 서머셋 모옴',
        '사랑은 두 개의 마음이 하나의 공간에서 춤을 추는 것이다 - 알프레드 테니스',
        '내가 이해하는 모든 것은 내가 사랑하기 때문에 이해하는 것이다 - 레프 톨스토이',
      ]
    },
    {
      '9. 다음 중 연인이 이성친구와 단둘이 만날 때 내가 이해할 수 있는 범위는?': [
        '카페',
        '식사',
        '술집',
        '모두 이해할 수 없다',
      ]
    },
    {
      '10. 다음 중 내가 ‘연인에게 사랑을 받고 있구나’ 하고 가장 느낄 수 있는 포인트는?': [
        '나에 대한 애정어린 질문과 안부',
        '보고 싶다며 직접 찾아와주는 모습',
        '나를 생각하며 사다 준 선물',
        '나와 함께하는 미래를 얘기하는 모습',
      ]
    },
  ],
  '데이트': [
    {
      '1. 다음 중 선호하는 데이트 시간은?': [
        '아침 일찍',
        '오후 늦게',
        '하루종일',
        '기타',
      ]
    },
    {
      '2. 다음 중 하루 데이트 비용으로 적당한 것은?': [
        '3만원 이하',
        '5만원 내외',
        '10만원 이상',
        '기타',
      ]
    },
    {
      '3. 다음 중 지각한 연인을 너그럽게 용서할 수 있는 시간은?': [
        '약속시간으로부터 10분',
        '약속시간으로부터 30분',
        '약속시간으로부터 1시간',
        '정당한 이유가 있다면 상관없다',
      ]
    },
    {
      '4. 나와 연인의 메시지 대화 간격으로 가장 알맞은 것은?': [
        '즉시 답장',
        '3시간 미만',
        '12시간 미만',
        '생존신고만 하면 된다',
      ]
    },
    {
      '5. 적합하다고 생각하는 데이트 횟수는?': [
        '주 3회 이상',
        '주 1~2회',
        '월 4회 미만',
        '기타',
      ]
    },
    {
      '6. 연인이 같이 가고 싶은 장소라고 하지만 나는 정말 가기 싫을 때의 나의 행동은?': [
        '다른 제시 장소를 추천하며 설득한다',
        '그래도 나와 함께 가고 싶은 곳이라면 따라가본다',
        '그럼 다음에는 내가 가고 싶은 곳 가자며 조건을 제시한다',
        '기타',
      ]
    },
    {
      '7. 데이트 중 연인이 지인을 만나 반갑게 대화 나눌 때, 내가 취할 행동은?': [
        'OO의 애인이라며 먼저 인사하며 대화에 참여한다',
        '연인이 편하게 대화 나눌 수 있도록 잠시 자리를 비켜준다',
        '연인이 이동하자마자 인사나는 척 함께 거리를 둔다',
        '병적으로 질투가 솟아난다',
      ]
    },
    {
      '8. 연인과의 데이트날, 연인이 갑자기 급한 일정이 생겼다며 다음으로 미룬다면 내가 취할 행동은?': [
        '무슨 일인지 설명부터 들어야 한다',
        '일단 급한 것 같으니 데이트를 미루고 나중에 무슨 일인지 물어본다',
        '나보다 더 급한 것이 있다는 생각에 화를 낸다',
        '기타',
      ]
    },
    {
      '9. 매번 같은 패턴의 데이트가 지겹다는 연인에게 내가 먼저 취할 행동으로 가장 가까운 것은?': [
        '주변 지인들에게 어떤 데이트를 하는지 물어보고 참고한다',
        '연인이 데이트의 소중함을 모르는 것 같으니 한동안 만나지 않는다',
        '함께 어떤 것을 하면 좋을지 의논한다',
        '연인이 원하는지 먼저 묻고 그에 맞춰준다',
      ]
    },
    {
      '10. 다음 중 긴장되는 첫 데이트 전 나의 행동과 가장 가까운 것을 고르시오.': [
        '유명한 맛집과 효율적으로 이동할 수 있는 동선을 계획한다',
        '어떤 옷을 입을지 고민하며 쇼핑한다',
        '극도로 긴장할 것 같아 정신줄을 구비한다',
        '기타',
      ]
    },
  ],
  '취향': [
    {
      '1. 다음 중 연인에게 받으면 좋을 것 같은 선물은?': [
        '정성이 담긴 선물',
        '실용적인 선물',
        '명품과 같은 비싼 선물',
        '기타',
      ]
    },
    {
      '2. 다음 중 연인과 맞았으면 하는 영화 취향은?': [
        '달달한 로맨스 영화',
        '잔잔한 힐링 영화',
        '흥미진진한 스릴러',
        '기타',
      ]
    },
    {
      '3. 다음 기념일 중 선물을 꼭 주고받아야 한다면?': [
        '크리스마스',
        '생일',
        'OOO데이',
        '주년',
      ]
    },
    {
      '4. 다음 중 나의 데이트 타입과 가장 가까운 것은?': [
        '클라이밍, 등산 등 활동적인 데이트',
        '전시회, 공연 등 감각적인 데이트',
        '집 나가면 고생. 집 데이트',
        '이 모든걸 번갈아가며 해보는 데이트',
      ]
    },
    {
      '5. 내가 제일 좋아하는 스킨십은?': [
        '포옹하기',
        '손 잡기',
        '뽀뽀하기',
        '팔짱',
      ]
    },
    {
      '6. 다음 중 연인과 맞았으면 하는 것은?': [
        '취미',
        '취향',
        '연락 빈도',
        '유머 코드',
      ]
    },
    {
      '7. 이성을 볼 때 성격을 제외하고 가장 중요하게 생각하는 것은?': [
        '스타일',
        '유머 감각',
        '목소리',
        '얼굴',
      ]
    },
    {
      '8. 평소에 선호하는 옷 색깔은?': [
        '어두운 계열',
        '밝은 계열',
        '파스텔 컬러',
        '트렌드를 따라간다',
      ]
    },
    {
      '9. 다음 중 가장 선호하는 음식은?': [
        '한식',
        '중식',
        '일식',
        '양식',
      ]
    },
    {
      '10. 다음 중 데이트 중 정말 먹고 싶지 않은 음식은?': [
        '마라탕',
        '국밥',
        '파스타',
        '기타',
      ]
    },
  ],
};

int getTotalQuestionCount(Map<String, List<Map<String, List<String>>>> quizs) =>
    quizs.values.fold(0, (sum, list) => sum + list.length);

final answersProvider =
    StateNotifierProvider<AnswersNotifier, List<String>>((ref) {
  return AnswersNotifier(length: getTotalQuestionCount(quizs));
});

class AnswersNotifier extends StateNotifier<List<String>> {
  AnswersNotifier({required int length}) : super(List.filled(length, ''));

  void updateAnswer(int index, String answer) {
    state = [
      ...state.sublist(0, index),
      answer,
      ...state.sublist(index + 1),
    ];
  }
}

class LoveTest extends ConsumerStatefulWidget {
  const LoveTest({super.key});

  @override
  LoveTestState createState() => LoveTestState();
}

class LoveTestState extends BaseConsumerStatefulPageState<LoveTest> {
  LoveTestState()
      : super(
          isAppBar: true,
          isHorizontalMargin: true,
          isDefaultBottomNavigationBar: false,
        );

  late final List<MapEntry<String, MapEntry<String, List<String>>>>
      flatQuizList = quizs.entries
          .expand((categoryEntry) => categoryEntry.value.map((q) {
                final questionText = q.keys.first;
                final choices = q.values.first;
                return MapEntry(
                    categoryEntry.key, MapEntry(questionText, choices));
              }))
          .toList();

  late final PageController _pageController = PageController();
  final ValueNotifier<int> _currentPageNotifier = ValueNotifier(0);

  @override
  void dispose() {
    _currentPageNotifier.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  String get defaultAppBarTitle {
    final index = _currentPageNotifier.value;
    if (index >= 0 && index < flatQuizList.length) {
      return flatQuizList[index].key;
    }
    return "연애고사";
  }

  @override
  Widget buildPage(BuildContext context) {
    final answers = ref.watch(answersProvider);

    return ValueListenableBuilder<int>(
      valueListenable: _currentPageNotifier,
      builder: (context, currentPage, _) {
        return PopScope(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BarProgressIndicators(
                    maxSteps: flatQuizList.length,
                    currentStep: currentPage + 1,
                  ),
                  const Gap(44),
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: flatQuizList.length,
                      onPageChanged: (index) =>
                          _currentPageNotifier.value = index,
                      itemBuilder: (context, index) {
                        return buildQuestionPage(
                            context, index, answers[index], ref);
                      },
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 188,
                left: 0,
                right: 0,
                child: LoveTestBottomButton(
                  onPrev: _currentPageNotifier.value > 0
                      ? () async {
                          await _pageController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      : null,
                  onNext: () async {
                    if (_currentPageNotifier.value < flatQuizList.length - 1) {
                      await _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      // 마지막 페이지 처리
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildQuestionPage(
      BuildContext context, int index, String selectedAnswer, WidgetRef ref) {
    final entry = flatQuizList[index];
    final question = entry.value.key;
    final options = entry.value.value;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: question.substring(0, 2),
                style: Fonts.body01Regular().copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                ),
              ),
              TextSpan(
                text: question.substring(2),
                style: Fonts.body01Regular().copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 24.h),
        Column(
          children: options.map((option) {
            return CustomRadioButton(
              option: option,
              groupValue: selectedAnswer,
              onChanged: (answer) {
                ref.read(answersProvider.notifier).updateAnswer(index, answer);
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}

import 'package:atwoz_app/app/constants/constants.dart';
import 'package:flutter/material.dart';

// 변경된 해시태그 영역 위젯
class HashtagWrap extends StatelessWidget {
  final List<String> tags;

  const HashtagWrap({required this.tags, super.key});

  static const double horizontalPadding =
      8.0; // HashtagWidget 내 좌우 padding (4+4)
  static const double verticalPadding = 4.0; // HashtagWidget 내 상하 padding (2+2)
  static const double horizontalMargin = 8.0; // 태그 간 간격
  static const double borderRadius = 2.0; // HashtagWidget borderRadius는 2

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        const spacing = horizontalMargin;

        double usedWidth = 0;
        final List<Widget> visibleTags = [];
        int hiddenCount = 0;

        final TextStyle tagTextStyle = Fonts.body03Regular().copyWith(
          fontWeight: FontWeight.w500,
          color: Palette.colorPrimary600,
        );

        for (int i = 0; i < tags.length; i++) {
          final tag = tags[i];
          final tagText = '#$tag';

          final textPainter = TextPainter(
            text: TextSpan(text: tagText, style: tagTextStyle),
            maxLines: 1,
            textDirection: TextDirection.ltr,
          )..layout();

          // 태그 실제 너비 = 텍스트 너비 + padding(좌우) + margin(간격)
          final tagWidth =
              textPainter.width + (horizontalPadding * 2) + spacing;

          if (usedWidth + tagWidth <= maxWidth) {
            usedWidth += tagWidth;
            visibleTags.add(
              HashtagWidget(tagName: tag),
            );
          } else {
            hiddenCount = tags.length - i;
            break;
          }
        }

        // 남은 태그가 있으면 +N 표시
        if (hiddenCount > 0) {
          final plusTag = '+$hiddenCount';
          visibleTags.add(
            HashtagWidget(
              tagName: plusTag,
              showHash: false,
            ),
          );
        }

        return Wrap(
          spacing: spacing,
          runSpacing: 4,
          children: visibleTags,
        );
      },
    );
  }
}

class HashtagWidget extends StatelessWidget {
  final String tagName;
  final bool showHash; // # 붙일지 여부

  const HashtagWidget({
    super.key,
    required this.tagName,
    this.showHash = true, // 기본은 true
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(
        color: Palette.colorPrimary100,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Text(
        showHash ? '#$tagName' : tagName,
        style: Fonts.body03Regular().copyWith(
          fontWeight: FontWeight.w500,
          color: Palette.colorPrimary600,
        ),
      ),
    );
  }
}

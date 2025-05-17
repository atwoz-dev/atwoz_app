import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/lovetest/presentation/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class TestSubject extends StatelessWidget {
  final String subject;
  final String counts;

  const TestSubject({required this.subject, required this.counts, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(subject,
            style: Fonts.body03Regular()
                .copyWith(fontSize: 13.sp, fontWeight: FontWeight.w400)),
        const Expanded(child: DashLine()),
        Text(counts,
            style: Fonts.body03Regular()
                .copyWith(fontSize: 13.sp, fontWeight: FontWeight.w400)),
      ],
    );
  }
}

class LoveTestSubjectWidget extends StatelessWidget {
  final List<List<String>> subjects;
  final String subjectTitle;
  final String subjectCount;
  const LoveTestSubjectWidget({
    required this.subjects,
    required this.subjectTitle,
    required this.subjectCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$subjectTitle $subjectCount',
          style: Fonts.body02Regular().copyWith(fontWeight: FontWeight.w500),
        ),
        Gap(8),
        Container(
          width: context.screenWidth,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Color(0xffEDEEF0))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(subjects.length, (index) {
              final subject = subjects[index];
              final item = TestSubject(
                subject: subject[0],
                counts: subject[1],
              );

              if (index == subjects.length - 1) {
                return item;
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  item,
                  const Gap(8),
                ],
              );
            }),
          ),
        )
      ],
    );
  }
}

import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MatchPhotoWidget extends StatelessWidget {
  final List<Map<String, String>> profileImageAndDetails;

  const MatchPhotoWidget({
    super.key,
    required this.profileImageAndDetails,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AlignedGridView.count(
            // 그리드 뷰의 childAspectRatio 자동 계산
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            crossAxisSpacing: 16.w,
            mainAxisSpacing: 16.h,
            itemCount: profileImageAndDetails.length,
            itemBuilder: (context, index) {
              final imagePath = profileImageAndDetails[index]['image']!;
              final name = profileImageAndDetails[index]['name']!;
              final detail = profileImageAndDetails[index]['detail']!;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          imagePath,
                          width: 100.w,
                          height: 100.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 6.h,
                        right: 8.w,
                        child: DefaultIcon(IconPath.checkProfile),
                      )
                    ],
                  ),
                  const Gap(8),
                  Text(
                    name,
                    style: Fonts.body02Regular().copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    detail,
                    style: Fonts.body03Regular().copyWith(
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff8D92A0)),
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

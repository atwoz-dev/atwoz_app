import 'package:atwoz_app/core/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/button.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class EventHeartCard extends StatelessWidget {
  const EventHeartCard({
    super.key,
    required this.code,
  });
  final String code;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: 170.h,
      child: Stack(
        children: [
          Positioned(
            top: 0, // 아이콘을 상단 20픽셀 위치
            right: 0, // 아이콘을 오른쪽 20픽셀 위치
            child: DefaultIcon(
              IconPath.celebrate,
              size: 124,
            ),
          ),
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Palette.colorPrimary50,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Palette.colorPrimary100,
                    offset: Offset(4, 4),
                    blurRadius: 13.1,
                    spreadRadius: 4,
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 18.h),
              child: GestureDetector(
                  onTap: () async {
                    // TODO: 상품 코드로 하트 구매
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('90',
                          style: Fonts.header01()
                              .copyWith(fontWeight: FontWeight.w700)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('₩15,000',
                              style: Fonts.header02()
                                  .copyWith(fontWeight: FontWeight.w700)),
                          Gap(6),
                          Text(
                            'W18,000',
                            style: Fonts.body03Regular().copyWith(
                                color: Palette.colorGrey500,
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Palette.colorGrey500),
                          )
                        ],
                      )
                    ],
                  )),
            ),
          ),
          Positioned(
            top: 50,
            left: 12,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Palette.colorPrimary500),
              child: Text(
                '첫 구매 EVENT🎉',
                style: Fonts.body03Regular().copyWith(
                    fontWeight: FontWeight.w700, color: Palette.colorWhite),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

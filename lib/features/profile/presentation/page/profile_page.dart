import 'package:atwoz_app/features/profile/domain/provider/profile_notifier.dart';
import 'package:atwoz_app/features/profile/domain/provider/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../domain/common/model.dart';
import '../widget/widget.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({
    super.key,
    required this.userId,
    required this.fromMatchedProfile,
  });

  final int userId;
  final bool fromMatchedProfile;

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    ref.listen(profileNotifierProvider(widget.userId), _listener);
    final state = ref.watch(profileNotifierProvider(widget.userId));

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: state.isLoaded
          ? widget.fromMatchedProfile
              ? UnMatchedProfile(userId: widget.userId, chatEnabled: false)
              : switch (state.matchStatus) {
                  final UnMatched _ ||
                  final Matching _ =>
                    UnMatchedProfile(userId: widget.userId),
                  final Matched _ => MatchedProfile(widget.userId),
                  null => Container(),
                }
          : const SkeletonProfile(),
    );
  }

  void _listener(ProfileState? prev, ProfileState curr) {
    if (prev?.matchStatus == curr.matchStatus || curr.matchStatus == null) {
      return;
    }

    _handleStatusChanged(curr.matchStatus!);
  }

  void _handleStatusChanged(MatchStatus status) async {
    if (!mounted) return;

    switch (status) {
      case final Matching status when status is MatchingReceived:
        AnnouncementBottomSheet.open(
          context,
          title: '메시지를 받았어요',
          subTitle: '상대방의 메시지를 수락하면 서로의 연락처가 공개됩니다.',
          content: status.receivedMessage,
          submitLabel: '수락',
          onSubmit: () {
            context.pop();
            MessageSendBottomSheet.open(
              context,
              userId: widget.userId,
            );
          },
          cancelLabel: '거절',
          onCancel: () {
            context.pop();
            // TODO(Han): 서버로 매칭 종료 전송
          },
        );
        break;
      case final Matching status when status is MatchingRequested:
        if (status.isExpired) {
          AnnouncementBottomSheet.openPrimary(
            context,
            title: '매칭이 취소되었어요',
            subTitle: '상대방으로부터 응답이 없어 사용하신 하트를 돌려드렸어요',
            content: status.sentMessage,
            submitLabel: '닫기',
            onSubmit: () {
              // TODO(Han): 서버로 매칭 종료 전송
              context.pop();
            },
          );
          return;
        }
        AnnouncementBottomSheet.openPrimary(
          context,
          title: '메시지를 보냈어요',
          subTitle: '상대방이 수락하면 서로의 연락처가 공개됩니다.',
          content: status.sentMessage,
          submitLabel: '닫기',
          onSubmit: context.pop,
        );
        break;
      case final Matching _ || Matched _ || UnMatched _:
        break;
    }
  }
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introduced_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IntroducedProfile {
  int get memberId => throw _privateConstructorUsedError;
  String get profileImageUrl => throw _privateConstructorUsedError; // imageUrl
  List<String> get tags => throw _privateConstructorUsedError; // 취미 + 종교 + mbti
  String get interviewContent => throw _privateConstructorUsedError; // 인터뷰 첫 대답
  bool get isIntroduced => throw _privateConstructorUsedError; // 프로필 소개 여부
  FavoriteType? get favoriteType => throw _privateConstructorUsedError;

  /// Create a copy of IntroducedProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntroducedProfileCopyWith<IntroducedProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroducedProfileCopyWith<$Res> {
  factory $IntroducedProfileCopyWith(
          IntroducedProfile value, $Res Function(IntroducedProfile) then) =
      _$IntroducedProfileCopyWithImpl<$Res, IntroducedProfile>;
  @useResult
  $Res call(
      {int memberId,
      String profileImageUrl,
      List<String> tags,
      String interviewContent,
      bool isIntroduced,
      FavoriteType? favoriteType});
}

/// @nodoc
class _$IntroducedProfileCopyWithImpl<$Res, $Val extends IntroducedProfile>
    implements $IntroducedProfileCopyWith<$Res> {
  _$IntroducedProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntroducedProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? profileImageUrl = null,
    Object? tags = null,
    Object? interviewContent = null,
    Object? isIntroduced = null,
    Object? favoriteType = freezed,
  }) {
    return _then(_value.copyWith(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      interviewContent: null == interviewContent
          ? _value.interviewContent
          : interviewContent // ignore: cast_nullable_to_non_nullable
              as String,
      isIntroduced: null == isIntroduced
          ? _value.isIntroduced
          : isIntroduced // ignore: cast_nullable_to_non_nullable
              as bool,
      favoriteType: freezed == favoriteType
          ? _value.favoriteType
          : favoriteType // ignore: cast_nullable_to_non_nullable
              as FavoriteType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntroducedProfileImplCopyWith<$Res>
    implements $IntroducedProfileCopyWith<$Res> {
  factory _$$IntroducedProfileImplCopyWith(_$IntroducedProfileImpl value,
          $Res Function(_$IntroducedProfileImpl) then) =
      __$$IntroducedProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int memberId,
      String profileImageUrl,
      List<String> tags,
      String interviewContent,
      bool isIntroduced,
      FavoriteType? favoriteType});
}

/// @nodoc
class __$$IntroducedProfileImplCopyWithImpl<$Res>
    extends _$IntroducedProfileCopyWithImpl<$Res, _$IntroducedProfileImpl>
    implements _$$IntroducedProfileImplCopyWith<$Res> {
  __$$IntroducedProfileImplCopyWithImpl(_$IntroducedProfileImpl _value,
      $Res Function(_$IntroducedProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of IntroducedProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? profileImageUrl = null,
    Object? tags = null,
    Object? interviewContent = null,
    Object? isIntroduced = null,
    Object? favoriteType = freezed,
  }) {
    return _then(_$IntroducedProfileImpl(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      interviewContent: null == interviewContent
          ? _value.interviewContent
          : interviewContent // ignore: cast_nullable_to_non_nullable
              as String,
      isIntroduced: null == isIntroduced
          ? _value.isIntroduced
          : isIntroduced // ignore: cast_nullable_to_non_nullable
              as bool,
      favoriteType: freezed == favoriteType
          ? _value.favoriteType
          : favoriteType // ignore: cast_nullable_to_non_nullable
              as FavoriteType?,
    ));
  }
}

/// @nodoc

class _$IntroducedProfileImpl implements _IntroducedProfile {
  const _$IntroducedProfileImpl(
      {required this.memberId,
      required this.profileImageUrl,
      required final List<String> tags,
      required this.interviewContent,
      required this.isIntroduced,
      required this.favoriteType})
      : _tags = tags;

  @override
  final int memberId;
  @override
  final String profileImageUrl;
// imageUrl
  final List<String> _tags;
// imageUrl
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

// 취미 + 종교 + mbti
  @override
  final String interviewContent;
// 인터뷰 첫 대답
  @override
  final bool isIntroduced;
// 프로필 소개 여부
  @override
  final FavoriteType? favoriteType;

  @override
  String toString() {
    return 'IntroducedProfile(memberId: $memberId, profileImageUrl: $profileImageUrl, tags: $tags, interviewContent: $interviewContent, isIntroduced: $isIntroduced, favoriteType: $favoriteType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntroducedProfileImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.interviewContent, interviewContent) ||
                other.interviewContent == interviewContent) &&
            (identical(other.isIntroduced, isIntroduced) ||
                other.isIntroduced == isIntroduced) &&
            (identical(other.favoriteType, favoriteType) ||
                other.favoriteType == favoriteType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      memberId,
      profileImageUrl,
      const DeepCollectionEquality().hash(_tags),
      interviewContent,
      isIntroduced,
      favoriteType);

  /// Create a copy of IntroducedProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntroducedProfileImplCopyWith<_$IntroducedProfileImpl> get copyWith =>
      __$$IntroducedProfileImplCopyWithImpl<_$IntroducedProfileImpl>(
          this, _$identity);
}

abstract class _IntroducedProfile implements IntroducedProfile {
  const factory _IntroducedProfile(
      {required final int memberId,
      required final String profileImageUrl,
      required final List<String> tags,
      required final String interviewContent,
      required final bool isIntroduced,
      required final FavoriteType? favoriteType}) = _$IntroducedProfileImpl;

  @override
  int get memberId;
  @override
  String get profileImageUrl; // imageUrl
  @override
  List<String> get tags; // 취미 + 종교 + mbti
  @override
  String get interviewContent; // 인터뷰 첫 대답
  @override
  bool get isIntroduced; // 프로필 소개 여부
  @override
  FavoriteType? get favoriteType;

  /// Create a copy of IntroducedProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntroducedProfileImplCopyWith<_$IntroducedProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

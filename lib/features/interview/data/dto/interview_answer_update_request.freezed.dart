// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interview_answer_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InterviewAnswerUpdateRequest _$InterviewAnswerUpdateRequestFromJson(
    Map<String, dynamic> json) {
  return _InterviewAnswerUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$InterviewAnswerUpdateRequest {
  String get answerContent => throw _privateConstructorUsedError;

  /// Serializes this InterviewAnswerUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InterviewAnswerUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterviewAnswerUpdateRequestCopyWith<InterviewAnswerUpdateRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterviewAnswerUpdateRequestCopyWith<$Res> {
  factory $InterviewAnswerUpdateRequestCopyWith(
          InterviewAnswerUpdateRequest value,
          $Res Function(InterviewAnswerUpdateRequest) then) =
      _$InterviewAnswerUpdateRequestCopyWithImpl<$Res,
          InterviewAnswerUpdateRequest>;
  @useResult
  $Res call({String answerContent});
}

/// @nodoc
class _$InterviewAnswerUpdateRequestCopyWithImpl<$Res,
        $Val extends InterviewAnswerUpdateRequest>
    implements $InterviewAnswerUpdateRequestCopyWith<$Res> {
  _$InterviewAnswerUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterviewAnswerUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerContent = null,
  }) {
    return _then(_value.copyWith(
      answerContent: null == answerContent
          ? _value.answerContent
          : answerContent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterviewAnswerUpdateRequestImplCopyWith<$Res>
    implements $InterviewAnswerUpdateRequestCopyWith<$Res> {
  factory _$$InterviewAnswerUpdateRequestImplCopyWith(
          _$InterviewAnswerUpdateRequestImpl value,
          $Res Function(_$InterviewAnswerUpdateRequestImpl) then) =
      __$$InterviewAnswerUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String answerContent});
}

/// @nodoc
class __$$InterviewAnswerUpdateRequestImplCopyWithImpl<$Res>
    extends _$InterviewAnswerUpdateRequestCopyWithImpl<$Res,
        _$InterviewAnswerUpdateRequestImpl>
    implements _$$InterviewAnswerUpdateRequestImplCopyWith<$Res> {
  __$$InterviewAnswerUpdateRequestImplCopyWithImpl(
      _$InterviewAnswerUpdateRequestImpl _value,
      $Res Function(_$InterviewAnswerUpdateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterviewAnswerUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerContent = null,
  }) {
    return _then(_$InterviewAnswerUpdateRequestImpl(
      answerContent: null == answerContent
          ? _value.answerContent
          : answerContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterviewAnswerUpdateRequestImpl
    implements _InterviewAnswerUpdateRequest {
  const _$InterviewAnswerUpdateRequestImpl({required this.answerContent});

  factory _$InterviewAnswerUpdateRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InterviewAnswerUpdateRequestImplFromJson(json);

  @override
  final String answerContent;

  @override
  String toString() {
    return 'InterviewAnswerUpdateRequest(answerContent: $answerContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterviewAnswerUpdateRequestImpl &&
            (identical(other.answerContent, answerContent) ||
                other.answerContent == answerContent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, answerContent);

  /// Create a copy of InterviewAnswerUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterviewAnswerUpdateRequestImplCopyWith<
          _$InterviewAnswerUpdateRequestImpl>
      get copyWith => __$$InterviewAnswerUpdateRequestImplCopyWithImpl<
          _$InterviewAnswerUpdateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterviewAnswerUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _InterviewAnswerUpdateRequest
    implements InterviewAnswerUpdateRequest {
  const factory _InterviewAnswerUpdateRequest(
          {required final String answerContent}) =
      _$InterviewAnswerUpdateRequestImpl;

  factory _InterviewAnswerUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$InterviewAnswerUpdateRequestImpl.fromJson;

  @override
  String get answerContent;

  /// Create a copy of InterviewAnswerUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterviewAnswerUpdateRequestImplCopyWith<
          _$InterviewAnswerUpdateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

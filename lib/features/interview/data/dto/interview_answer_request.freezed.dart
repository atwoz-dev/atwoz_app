// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interview_answer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InterviewAnswerRequest {

 int get interviewQuestionId; String get answerContent;
/// Create a copy of InterviewAnswerRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InterviewAnswerRequestCopyWith<InterviewAnswerRequest> get copyWith => _$InterviewAnswerRequestCopyWithImpl<InterviewAnswerRequest>(this as InterviewAnswerRequest, _$identity);

  /// Serializes this InterviewAnswerRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterviewAnswerRequest&&(identical(other.interviewQuestionId, interviewQuestionId) || other.interviewQuestionId == interviewQuestionId)&&(identical(other.answerContent, answerContent) || other.answerContent == answerContent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,interviewQuestionId,answerContent);

@override
String toString() {
  return 'InterviewAnswerRequest(interviewQuestionId: $interviewQuestionId, answerContent: $answerContent)';
}


}

/// @nodoc
abstract mixin class $InterviewAnswerRequestCopyWith<$Res>  {
  factory $InterviewAnswerRequestCopyWith(InterviewAnswerRequest value, $Res Function(InterviewAnswerRequest) _then) = _$InterviewAnswerRequestCopyWithImpl;
@useResult
$Res call({
 int interviewQuestionId, String answerContent
});




}
/// @nodoc
class _$InterviewAnswerRequestCopyWithImpl<$Res>
    implements $InterviewAnswerRequestCopyWith<$Res> {
  _$InterviewAnswerRequestCopyWithImpl(this._self, this._then);

  final InterviewAnswerRequest _self;
  final $Res Function(InterviewAnswerRequest) _then;

/// Create a copy of InterviewAnswerRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? interviewQuestionId = null,Object? answerContent = null,}) {
  return _then(_self.copyWith(
interviewQuestionId: null == interviewQuestionId ? _self.interviewQuestionId : interviewQuestionId // ignore: cast_nullable_to_non_nullable
as int,answerContent: null == answerContent ? _self.answerContent : answerContent // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InterviewAnswerRequest].
extension InterviewAnswerRequestPatterns on InterviewAnswerRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InterviewAnswerRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InterviewAnswerRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InterviewAnswerRequest value)  $default,){
final _that = this;
switch (_that) {
case _InterviewAnswerRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InterviewAnswerRequest value)?  $default,){
final _that = this;
switch (_that) {
case _InterviewAnswerRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int interviewQuestionId,  String answerContent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InterviewAnswerRequest() when $default != null:
return $default(_that.interviewQuestionId,_that.answerContent);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int interviewQuestionId,  String answerContent)  $default,) {final _that = this;
switch (_that) {
case _InterviewAnswerRequest():
return $default(_that.interviewQuestionId,_that.answerContent);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int interviewQuestionId,  String answerContent)?  $default,) {final _that = this;
switch (_that) {
case _InterviewAnswerRequest() when $default != null:
return $default(_that.interviewQuestionId,_that.answerContent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InterviewAnswerRequest implements InterviewAnswerRequest {
  const _InterviewAnswerRequest({required this.interviewQuestionId, required this.answerContent});
  factory _InterviewAnswerRequest.fromJson(Map<String, dynamic> json) => _$InterviewAnswerRequestFromJson(json);

@override final  int interviewQuestionId;
@override final  String answerContent;

/// Create a copy of InterviewAnswerRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InterviewAnswerRequestCopyWith<_InterviewAnswerRequest> get copyWith => __$InterviewAnswerRequestCopyWithImpl<_InterviewAnswerRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InterviewAnswerRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InterviewAnswerRequest&&(identical(other.interviewQuestionId, interviewQuestionId) || other.interviewQuestionId == interviewQuestionId)&&(identical(other.answerContent, answerContent) || other.answerContent == answerContent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,interviewQuestionId,answerContent);

@override
String toString() {
  return 'InterviewAnswerRequest(interviewQuestionId: $interviewQuestionId, answerContent: $answerContent)';
}


}

/// @nodoc
abstract mixin class _$InterviewAnswerRequestCopyWith<$Res> implements $InterviewAnswerRequestCopyWith<$Res> {
  factory _$InterviewAnswerRequestCopyWith(_InterviewAnswerRequest value, $Res Function(_InterviewAnswerRequest) _then) = __$InterviewAnswerRequestCopyWithImpl;
@override @useResult
$Res call({
 int interviewQuestionId, String answerContent
});




}
/// @nodoc
class __$InterviewAnswerRequestCopyWithImpl<$Res>
    implements _$InterviewAnswerRequestCopyWith<$Res> {
  __$InterviewAnswerRequestCopyWithImpl(this._self, this._then);

  final _InterviewAnswerRequest _self;
  final $Res Function(_InterviewAnswerRequest) _then;

/// Create a copy of InterviewAnswerRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? interviewQuestionId = null,Object? answerContent = null,}) {
  return _then(_InterviewAnswerRequest(
interviewQuestionId: null == interviewQuestionId ? _self.interviewQuestionId : interviewQuestionId // ignore: cast_nullable_to_non_nullable
as int,answerContent: null == answerContent ? _self.answerContent : answerContent // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

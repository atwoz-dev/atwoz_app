// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interview_question_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InterviewQuestionResponse {

 int get status; String get code; String get message; List<InterviewQuestionItem> get data;
/// Create a copy of InterviewQuestionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InterviewQuestionResponseCopyWith<InterviewQuestionResponse> get copyWith => _$InterviewQuestionResponseCopyWithImpl<InterviewQuestionResponse>(this as InterviewQuestionResponse, _$identity);

  /// Serializes this InterviewQuestionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterviewQuestionResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'InterviewQuestionResponse(status: $status, code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $InterviewQuestionResponseCopyWith<$Res>  {
  factory $InterviewQuestionResponseCopyWith(InterviewQuestionResponse value, $Res Function(InterviewQuestionResponse) _then) = _$InterviewQuestionResponseCopyWithImpl;
@useResult
$Res call({
 int status, String code, String message, List<InterviewQuestionItem> data
});




}
/// @nodoc
class _$InterviewQuestionResponseCopyWithImpl<$Res>
    implements $InterviewQuestionResponseCopyWith<$Res> {
  _$InterviewQuestionResponseCopyWithImpl(this._self, this._then);

  final InterviewQuestionResponse _self;
  final $Res Function(InterviewQuestionResponse) _then;

/// Create a copy of InterviewQuestionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? code = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<InterviewQuestionItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [InterviewQuestionResponse].
extension InterviewQuestionResponsePatterns on InterviewQuestionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InterviewQuestionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InterviewQuestionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InterviewQuestionResponse value)  $default,){
final _that = this;
switch (_that) {
case _InterviewQuestionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InterviewQuestionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _InterviewQuestionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String code,  String message,  List<InterviewQuestionItem> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InterviewQuestionResponse() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String code,  String message,  List<InterviewQuestionItem> data)  $default,) {final _that = this;
switch (_that) {
case _InterviewQuestionResponse():
return $default(_that.status,_that.code,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String code,  String message,  List<InterviewQuestionItem> data)?  $default,) {final _that = this;
switch (_that) {
case _InterviewQuestionResponse() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InterviewQuestionResponse implements InterviewQuestionResponse {
  const _InterviewQuestionResponse({required this.status, required this.code, required this.message, required final  List<InterviewQuestionItem> data}): _data = data;
  factory _InterviewQuestionResponse.fromJson(Map<String, dynamic> json) => _$InterviewQuestionResponseFromJson(json);

@override final  int status;
@override final  String code;
@override final  String message;
 final  List<InterviewQuestionItem> _data;
@override List<InterviewQuestionItem> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of InterviewQuestionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InterviewQuestionResponseCopyWith<_InterviewQuestionResponse> get copyWith => __$InterviewQuestionResponseCopyWithImpl<_InterviewQuestionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InterviewQuestionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InterviewQuestionResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'InterviewQuestionResponse(status: $status, code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$InterviewQuestionResponseCopyWith<$Res> implements $InterviewQuestionResponseCopyWith<$Res> {
  factory _$InterviewQuestionResponseCopyWith(_InterviewQuestionResponse value, $Res Function(_InterviewQuestionResponse) _then) = __$InterviewQuestionResponseCopyWithImpl;
@override @useResult
$Res call({
 int status, String code, String message, List<InterviewQuestionItem> data
});




}
/// @nodoc
class __$InterviewQuestionResponseCopyWithImpl<$Res>
    implements _$InterviewQuestionResponseCopyWith<$Res> {
  __$InterviewQuestionResponseCopyWithImpl(this._self, this._then);

  final _InterviewQuestionResponse _self;
  final $Res Function(_InterviewQuestionResponse) _then;

/// Create a copy of InterviewQuestionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? code = null,Object? message = null,Object? data = null,}) {
  return _then(_InterviewQuestionResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<InterviewQuestionItem>,
  ));
}


}


/// @nodoc
mixin _$InterviewQuestionItem {

 int get questionId; String get questionContent; InterviewCategory get category; bool get isAnswered; int? get answerId; String? get answerContent;
/// Create a copy of InterviewQuestionItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InterviewQuestionItemCopyWith<InterviewQuestionItem> get copyWith => _$InterviewQuestionItemCopyWithImpl<InterviewQuestionItem>(this as InterviewQuestionItem, _$identity);

  /// Serializes this InterviewQuestionItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterviewQuestionItem&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.questionContent, questionContent) || other.questionContent == questionContent)&&(identical(other.category, category) || other.category == category)&&(identical(other.isAnswered, isAnswered) || other.isAnswered == isAnswered)&&(identical(other.answerId, answerId) || other.answerId == answerId)&&(identical(other.answerContent, answerContent) || other.answerContent == answerContent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,questionContent,category,isAnswered,answerId,answerContent);

@override
String toString() {
  return 'InterviewQuestionItem(questionId: $questionId, questionContent: $questionContent, category: $category, isAnswered: $isAnswered, answerId: $answerId, answerContent: $answerContent)';
}


}

/// @nodoc
abstract mixin class $InterviewQuestionItemCopyWith<$Res>  {
  factory $InterviewQuestionItemCopyWith(InterviewQuestionItem value, $Res Function(InterviewQuestionItem) _then) = _$InterviewQuestionItemCopyWithImpl;
@useResult
$Res call({
 int questionId, String questionContent, InterviewCategory category, bool isAnswered, int? answerId, String? answerContent
});




}
/// @nodoc
class _$InterviewQuestionItemCopyWithImpl<$Res>
    implements $InterviewQuestionItemCopyWith<$Res> {
  _$InterviewQuestionItemCopyWithImpl(this._self, this._then);

  final InterviewQuestionItem _self;
  final $Res Function(InterviewQuestionItem) _then;

/// Create a copy of InterviewQuestionItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionId = null,Object? questionContent = null,Object? category = null,Object? isAnswered = null,Object? answerId = freezed,Object? answerContent = freezed,}) {
  return _then(_self.copyWith(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int,questionContent: null == questionContent ? _self.questionContent : questionContent // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as InterviewCategory,isAnswered: null == isAnswered ? _self.isAnswered : isAnswered // ignore: cast_nullable_to_non_nullable
as bool,answerId: freezed == answerId ? _self.answerId : answerId // ignore: cast_nullable_to_non_nullable
as int?,answerContent: freezed == answerContent ? _self.answerContent : answerContent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InterviewQuestionItem].
extension InterviewQuestionItemPatterns on InterviewQuestionItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InterviewQuestionItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InterviewQuestionItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InterviewQuestionItem value)  $default,){
final _that = this;
switch (_that) {
case _InterviewQuestionItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InterviewQuestionItem value)?  $default,){
final _that = this;
switch (_that) {
case _InterviewQuestionItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int questionId,  String questionContent,  InterviewCategory category,  bool isAnswered,  int? answerId,  String? answerContent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InterviewQuestionItem() when $default != null:
return $default(_that.questionId,_that.questionContent,_that.category,_that.isAnswered,_that.answerId,_that.answerContent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int questionId,  String questionContent,  InterviewCategory category,  bool isAnswered,  int? answerId,  String? answerContent)  $default,) {final _that = this;
switch (_that) {
case _InterviewQuestionItem():
return $default(_that.questionId,_that.questionContent,_that.category,_that.isAnswered,_that.answerId,_that.answerContent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int questionId,  String questionContent,  InterviewCategory category,  bool isAnswered,  int? answerId,  String? answerContent)?  $default,) {final _that = this;
switch (_that) {
case _InterviewQuestionItem() when $default != null:
return $default(_that.questionId,_that.questionContent,_that.category,_that.isAnswered,_that.answerId,_that.answerContent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InterviewQuestionItem implements InterviewQuestionItem {
  const _InterviewQuestionItem({required this.questionId, required this.questionContent, required this.category, required this.isAnswered, this.answerId, this.answerContent});
  factory _InterviewQuestionItem.fromJson(Map<String, dynamic> json) => _$InterviewQuestionItemFromJson(json);

@override final  int questionId;
@override final  String questionContent;
@override final  InterviewCategory category;
@override final  bool isAnswered;
@override final  int? answerId;
@override final  String? answerContent;

/// Create a copy of InterviewQuestionItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InterviewQuestionItemCopyWith<_InterviewQuestionItem> get copyWith => __$InterviewQuestionItemCopyWithImpl<_InterviewQuestionItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InterviewQuestionItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InterviewQuestionItem&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.questionContent, questionContent) || other.questionContent == questionContent)&&(identical(other.category, category) || other.category == category)&&(identical(other.isAnswered, isAnswered) || other.isAnswered == isAnswered)&&(identical(other.answerId, answerId) || other.answerId == answerId)&&(identical(other.answerContent, answerContent) || other.answerContent == answerContent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,questionContent,category,isAnswered,answerId,answerContent);

@override
String toString() {
  return 'InterviewQuestionItem(questionId: $questionId, questionContent: $questionContent, category: $category, isAnswered: $isAnswered, answerId: $answerId, answerContent: $answerContent)';
}


}

/// @nodoc
abstract mixin class _$InterviewQuestionItemCopyWith<$Res> implements $InterviewQuestionItemCopyWith<$Res> {
  factory _$InterviewQuestionItemCopyWith(_InterviewQuestionItem value, $Res Function(_InterviewQuestionItem) _then) = __$InterviewQuestionItemCopyWithImpl;
@override @useResult
$Res call({
 int questionId, String questionContent, InterviewCategory category, bool isAnswered, int? answerId, String? answerContent
});




}
/// @nodoc
class __$InterviewQuestionItemCopyWithImpl<$Res>
    implements _$InterviewQuestionItemCopyWith<$Res> {
  __$InterviewQuestionItemCopyWithImpl(this._self, this._then);

  final _InterviewQuestionItem _self;
  final $Res Function(_InterviewQuestionItem) _then;

/// Create a copy of InterviewQuestionItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionId = null,Object? questionContent = null,Object? category = null,Object? isAnswered = null,Object? answerId = freezed,Object? answerContent = freezed,}) {
  return _then(_InterviewQuestionItem(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int,questionContent: null == questionContent ? _self.questionContent : questionContent // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as InterviewCategory,isAnswered: null == isAnswered ? _self.isAnswered : isAnswered // ignore: cast_nullable_to_non_nullable
as bool,answerId: freezed == answerId ? _self.answerId : answerId // ignore: cast_nullable_to_non_nullable
as int?,answerContent: freezed == answerContent ? _self.answerContent : answerContent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

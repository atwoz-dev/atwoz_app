// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_answer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubjectAnswerItem {

 int get subjectId; List<QuestionAnswerItem> get answers;
/// Create a copy of SubjectAnswerItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectAnswerItemCopyWith<SubjectAnswerItem> get copyWith => _$SubjectAnswerItemCopyWithImpl<SubjectAnswerItem>(this as SubjectAnswerItem, _$identity);

  /// Serializes this SubjectAnswerItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubjectAnswerItem&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&const DeepCollectionEquality().equals(other.answers, answers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subjectId,const DeepCollectionEquality().hash(answers));

@override
String toString() {
  return 'SubjectAnswerItem(subjectId: $subjectId, answers: $answers)';
}


}

/// @nodoc
abstract mixin class $SubjectAnswerItemCopyWith<$Res>  {
  factory $SubjectAnswerItemCopyWith(SubjectAnswerItem value, $Res Function(SubjectAnswerItem) _then) = _$SubjectAnswerItemCopyWithImpl;
@useResult
$Res call({
 int subjectId, List<QuestionAnswerItem> answers
});




}
/// @nodoc
class _$SubjectAnswerItemCopyWithImpl<$Res>
    implements $SubjectAnswerItemCopyWith<$Res> {
  _$SubjectAnswerItemCopyWithImpl(this._self, this._then);

  final SubjectAnswerItem _self;
  final $Res Function(SubjectAnswerItem) _then;

/// Create a copy of SubjectAnswerItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subjectId = null,Object? answers = null,}) {
  return _then(_self.copyWith(
subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as int,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<QuestionAnswerItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [SubjectAnswerItem].
extension SubjectAnswerItemPatterns on SubjectAnswerItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubjectAnswerItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubjectAnswerItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubjectAnswerItem value)  $default,){
final _that = this;
switch (_that) {
case _SubjectAnswerItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubjectAnswerItem value)?  $default,){
final _that = this;
switch (_that) {
case _SubjectAnswerItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int subjectId,  List<QuestionAnswerItem> answers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubjectAnswerItem() when $default != null:
return $default(_that.subjectId,_that.answers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int subjectId,  List<QuestionAnswerItem> answers)  $default,) {final _that = this;
switch (_that) {
case _SubjectAnswerItem():
return $default(_that.subjectId,_that.answers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int subjectId,  List<QuestionAnswerItem> answers)?  $default,) {final _that = this;
switch (_that) {
case _SubjectAnswerItem() when $default != null:
return $default(_that.subjectId,_that.answers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubjectAnswerItem extends SubjectAnswerItem {
  const _SubjectAnswerItem({required this.subjectId, required final  List<QuestionAnswerItem> answers}): _answers = answers,super._();
  factory _SubjectAnswerItem.fromJson(Map<String, dynamic> json) => _$SubjectAnswerItemFromJson(json);

@override final  int subjectId;
 final  List<QuestionAnswerItem> _answers;
@override List<QuestionAnswerItem> get answers {
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answers);
}


/// Create a copy of SubjectAnswerItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubjectAnswerItemCopyWith<_SubjectAnswerItem> get copyWith => __$SubjectAnswerItemCopyWithImpl<_SubjectAnswerItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubjectAnswerItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubjectAnswerItem&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&const DeepCollectionEquality().equals(other._answers, _answers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subjectId,const DeepCollectionEquality().hash(_answers));

@override
String toString() {
  return 'SubjectAnswerItem(subjectId: $subjectId, answers: $answers)';
}


}

/// @nodoc
abstract mixin class _$SubjectAnswerItemCopyWith<$Res> implements $SubjectAnswerItemCopyWith<$Res> {
  factory _$SubjectAnswerItemCopyWith(_SubjectAnswerItem value, $Res Function(_SubjectAnswerItem) _then) = __$SubjectAnswerItemCopyWithImpl;
@override @useResult
$Res call({
 int subjectId, List<QuestionAnswerItem> answers
});




}
/// @nodoc
class __$SubjectAnswerItemCopyWithImpl<$Res>
    implements _$SubjectAnswerItemCopyWith<$Res> {
  __$SubjectAnswerItemCopyWithImpl(this._self, this._then);

  final _SubjectAnswerItem _self;
  final $Res Function(_SubjectAnswerItem) _then;

/// Create a copy of SubjectAnswerItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subjectId = null,Object? answers = null,}) {
  return _then(_SubjectAnswerItem(
subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as int,answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<QuestionAnswerItem>,
  ));
}


}


/// @nodoc
mixin _$QuestionAnswerItem {

 int get questionId; int get answerId;
/// Create a copy of QuestionAnswerItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionAnswerItemCopyWith<QuestionAnswerItem> get copyWith => _$QuestionAnswerItemCopyWithImpl<QuestionAnswerItem>(this as QuestionAnswerItem, _$identity);

  /// Serializes this QuestionAnswerItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionAnswerItem&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.answerId, answerId) || other.answerId == answerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,answerId);

@override
String toString() {
  return 'QuestionAnswerItem(questionId: $questionId, answerId: $answerId)';
}


}

/// @nodoc
abstract mixin class $QuestionAnswerItemCopyWith<$Res>  {
  factory $QuestionAnswerItemCopyWith(QuestionAnswerItem value, $Res Function(QuestionAnswerItem) _then) = _$QuestionAnswerItemCopyWithImpl;
@useResult
$Res call({
 int questionId, int answerId
});




}
/// @nodoc
class _$QuestionAnswerItemCopyWithImpl<$Res>
    implements $QuestionAnswerItemCopyWith<$Res> {
  _$QuestionAnswerItemCopyWithImpl(this._self, this._then);

  final QuestionAnswerItem _self;
  final $Res Function(QuestionAnswerItem) _then;

/// Create a copy of QuestionAnswerItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionId = null,Object? answerId = null,}) {
  return _then(_self.copyWith(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int,answerId: null == answerId ? _self.answerId : answerId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestionAnswerItem].
extension QuestionAnswerItemPatterns on QuestionAnswerItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionAnswerItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionAnswerItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionAnswerItem value)  $default,){
final _that = this;
switch (_that) {
case _QuestionAnswerItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionAnswerItem value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionAnswerItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int questionId,  int answerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionAnswerItem() when $default != null:
return $default(_that.questionId,_that.answerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int questionId,  int answerId)  $default,) {final _that = this;
switch (_that) {
case _QuestionAnswerItem():
return $default(_that.questionId,_that.answerId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int questionId,  int answerId)?  $default,) {final _that = this;
switch (_that) {
case _QuestionAnswerItem() when $default != null:
return $default(_that.questionId,_that.answerId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestionAnswerItem extends QuestionAnswerItem {
  const _QuestionAnswerItem({required this.questionId, required this.answerId}): super._();
  factory _QuestionAnswerItem.fromJson(Map<String, dynamic> json) => _$QuestionAnswerItemFromJson(json);

@override final  int questionId;
@override final  int answerId;

/// Create a copy of QuestionAnswerItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionAnswerItemCopyWith<_QuestionAnswerItem> get copyWith => __$QuestionAnswerItemCopyWithImpl<_QuestionAnswerItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionAnswerItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionAnswerItem&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.answerId, answerId) || other.answerId == answerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,answerId);

@override
String toString() {
  return 'QuestionAnswerItem(questionId: $questionId, answerId: $answerId)';
}


}

/// @nodoc
abstract mixin class _$QuestionAnswerItemCopyWith<$Res> implements $QuestionAnswerItemCopyWith<$Res> {
  factory _$QuestionAnswerItemCopyWith(_QuestionAnswerItem value, $Res Function(_QuestionAnswerItem) _then) = __$QuestionAnswerItemCopyWithImpl;
@override @useResult
$Res call({
 int questionId, int answerId
});




}
/// @nodoc
class __$QuestionAnswerItemCopyWithImpl<$Res>
    implements _$QuestionAnswerItemCopyWith<$Res> {
  __$QuestionAnswerItemCopyWithImpl(this._self, this._then);

  final _QuestionAnswerItem _self;
  final $Res Function(_QuestionAnswerItem) _then;

/// Create a copy of QuestionAnswerItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionId = null,Object? answerId = null,}) {
  return _then(_QuestionAnswerItem(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int,answerId: null == answerId ? _self.answerId : answerId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

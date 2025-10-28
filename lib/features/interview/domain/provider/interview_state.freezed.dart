// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interview_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InterviewState {

 InterviewData get questionList; bool get isLoaded; InterviewListErrorType? get error;
/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InterviewStateCopyWith<InterviewState> get copyWith => _$InterviewStateCopyWithImpl<InterviewState>(this as InterviewState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterviewState&&(identical(other.questionList, questionList) || other.questionList == questionList)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,questionList,isLoaded,error);

@override
String toString() {
  return 'InterviewState(questionList: $questionList, isLoaded: $isLoaded, error: $error)';
}


}

/// @nodoc
abstract mixin class $InterviewStateCopyWith<$Res>  {
  factory $InterviewStateCopyWith(InterviewState value, $Res Function(InterviewState) _then) = _$InterviewStateCopyWithImpl;
@useResult
$Res call({
 InterviewData questionList, bool isLoaded, InterviewListErrorType? error
});


$InterviewDataCopyWith<$Res> get questionList;

}
/// @nodoc
class _$InterviewStateCopyWithImpl<$Res>
    implements $InterviewStateCopyWith<$Res> {
  _$InterviewStateCopyWithImpl(this._self, this._then);

  final InterviewState _self;
  final $Res Function(InterviewState) _then;

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionList = null,Object? isLoaded = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
questionList: null == questionList ? _self.questionList : questionList // ignore: cast_nullable_to_non_nullable
as InterviewData,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as InterviewListErrorType?,
  ));
}
/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InterviewDataCopyWith<$Res> get questionList {
  
  return $InterviewDataCopyWith<$Res>(_self.questionList, (value) {
    return _then(_self.copyWith(questionList: value));
  });
}
}


/// Adds pattern-matching-related methods to [InterviewState].
extension InterviewStatePatterns on InterviewState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InterviewState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InterviewState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InterviewState value)  $default,){
final _that = this;
switch (_that) {
case _InterviewState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InterviewState value)?  $default,){
final _that = this;
switch (_that) {
case _InterviewState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( InterviewData questionList,  bool isLoaded,  InterviewListErrorType? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InterviewState() when $default != null:
return $default(_that.questionList,_that.isLoaded,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( InterviewData questionList,  bool isLoaded,  InterviewListErrorType? error)  $default,) {final _that = this;
switch (_that) {
case _InterviewState():
return $default(_that.questionList,_that.isLoaded,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( InterviewData questionList,  bool isLoaded,  InterviewListErrorType? error)?  $default,) {final _that = this;
switch (_that) {
case _InterviewState() when $default != null:
return $default(_that.questionList,_that.isLoaded,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _InterviewState extends InterviewState {
  const _InterviewState({this.questionList = const InterviewData(), this.isLoaded = false, this.error}): super._();
  

@override@JsonKey() final  InterviewData questionList;
@override@JsonKey() final  bool isLoaded;
@override final  InterviewListErrorType? error;

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InterviewStateCopyWith<_InterviewState> get copyWith => __$InterviewStateCopyWithImpl<_InterviewState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InterviewState&&(identical(other.questionList, questionList) || other.questionList == questionList)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,questionList,isLoaded,error);

@override
String toString() {
  return 'InterviewState(questionList: $questionList, isLoaded: $isLoaded, error: $error)';
}


}

/// @nodoc
abstract mixin class _$InterviewStateCopyWith<$Res> implements $InterviewStateCopyWith<$Res> {
  factory _$InterviewStateCopyWith(_InterviewState value, $Res Function(_InterviewState) _then) = __$InterviewStateCopyWithImpl;
@override @useResult
$Res call({
 InterviewData questionList, bool isLoaded, InterviewListErrorType? error
});


@override $InterviewDataCopyWith<$Res> get questionList;

}
/// @nodoc
class __$InterviewStateCopyWithImpl<$Res>
    implements _$InterviewStateCopyWith<$Res> {
  __$InterviewStateCopyWithImpl(this._self, this._then);

  final _InterviewState _self;
  final $Res Function(_InterviewState) _then;

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionList = null,Object? isLoaded = null,Object? error = freezed,}) {
  return _then(_InterviewState(
questionList: null == questionList ? _self.questionList : questionList // ignore: cast_nullable_to_non_nullable
as InterviewData,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as InterviewListErrorType?,
  ));
}

/// Create a copy of InterviewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InterviewDataCopyWith<$Res> get questionList {
  
  return $InterviewDataCopyWith<$Res>(_self.questionList, (value) {
    return _then(_self.copyWith(questionList: value));
  });
}
}

/// @nodoc
mixin _$InterviewData {

 List<InterviewQuestionItem> get questionList;
/// Create a copy of InterviewData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InterviewDataCopyWith<InterviewData> get copyWith => _$InterviewDataCopyWithImpl<InterviewData>(this as InterviewData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterviewData&&const DeepCollectionEquality().equals(other.questionList, questionList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(questionList));

@override
String toString() {
  return 'InterviewData(questionList: $questionList)';
}


}

/// @nodoc
abstract mixin class $InterviewDataCopyWith<$Res>  {
  factory $InterviewDataCopyWith(InterviewData value, $Res Function(InterviewData) _then) = _$InterviewDataCopyWithImpl;
@useResult
$Res call({
 List<InterviewQuestionItem> questionList
});




}
/// @nodoc
class _$InterviewDataCopyWithImpl<$Res>
    implements $InterviewDataCopyWith<$Res> {
  _$InterviewDataCopyWithImpl(this._self, this._then);

  final InterviewData _self;
  final $Res Function(InterviewData) _then;

/// Create a copy of InterviewData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionList = null,}) {
  return _then(_self.copyWith(
questionList: null == questionList ? _self.questionList : questionList // ignore: cast_nullable_to_non_nullable
as List<InterviewQuestionItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [InterviewData].
extension InterviewDataPatterns on InterviewData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InterviewData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InterviewData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InterviewData value)  $default,){
final _that = this;
switch (_that) {
case _InterviewData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InterviewData value)?  $default,){
final _that = this;
switch (_that) {
case _InterviewData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<InterviewQuestionItem> questionList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InterviewData() when $default != null:
return $default(_that.questionList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<InterviewQuestionItem> questionList)  $default,) {final _that = this;
switch (_that) {
case _InterviewData():
return $default(_that.questionList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<InterviewQuestionItem> questionList)?  $default,) {final _that = this;
switch (_that) {
case _InterviewData() when $default != null:
return $default(_that.questionList);case _:
  return null;

}
}

}

/// @nodoc


class _InterviewData implements InterviewData {
  const _InterviewData({final  List<InterviewQuestionItem> questionList = const []}): _questionList = questionList;
  

 final  List<InterviewQuestionItem> _questionList;
@override@JsonKey() List<InterviewQuestionItem> get questionList {
  if (_questionList is EqualUnmodifiableListView) return _questionList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questionList);
}


/// Create a copy of InterviewData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InterviewDataCopyWith<_InterviewData> get copyWith => __$InterviewDataCopyWithImpl<_InterviewData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InterviewData&&const DeepCollectionEquality().equals(other._questionList, _questionList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_questionList));

@override
String toString() {
  return 'InterviewData(questionList: $questionList)';
}


}

/// @nodoc
abstract mixin class _$InterviewDataCopyWith<$Res> implements $InterviewDataCopyWith<$Res> {
  factory _$InterviewDataCopyWith(_InterviewData value, $Res Function(_InterviewData) _then) = __$InterviewDataCopyWithImpl;
@override @useResult
$Res call({
 List<InterviewQuestionItem> questionList
});




}
/// @nodoc
class __$InterviewDataCopyWithImpl<$Res>
    implements _$InterviewDataCopyWith<$Res> {
  __$InterviewDataCopyWithImpl(this._self, this._then);

  final _InterviewData _self;
  final $Res Function(_InterviewData) _then;

/// Create a copy of InterviewData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionList = null,}) {
  return _then(_InterviewData(
questionList: null == questionList ? _self._questionList : questionList // ignore: cast_nullable_to_non_nullable
as List<InterviewQuestionItem>,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_question_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExamQuestionResponse {

 int get status; String get code; String get message; ExamQuestionItem get data;
/// Create a copy of ExamQuestionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamQuestionResponseCopyWith<ExamQuestionResponse> get copyWith => _$ExamQuestionResponseCopyWithImpl<ExamQuestionResponse>(this as ExamQuestionResponse, _$identity);

  /// Serializes this ExamQuestionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamQuestionResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,data);

@override
String toString() {
  return 'ExamQuestionResponse(status: $status, code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $ExamQuestionResponseCopyWith<$Res>  {
  factory $ExamQuestionResponseCopyWith(ExamQuestionResponse value, $Res Function(ExamQuestionResponse) _then) = _$ExamQuestionResponseCopyWithImpl;
@useResult
$Res call({
 int status, String code, String message, ExamQuestionItem data
});


$ExamQuestionItemCopyWith<$Res> get data;

}
/// @nodoc
class _$ExamQuestionResponseCopyWithImpl<$Res>
    implements $ExamQuestionResponseCopyWith<$Res> {
  _$ExamQuestionResponseCopyWithImpl(this._self, this._then);

  final ExamQuestionResponse _self;
  final $Res Function(ExamQuestionResponse) _then;

/// Create a copy of ExamQuestionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? code = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ExamQuestionItem,
  ));
}
/// Create a copy of ExamQuestionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExamQuestionItemCopyWith<$Res> get data {
  
  return $ExamQuestionItemCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExamQuestionResponse].
extension ExamQuestionResponsePatterns on ExamQuestionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamQuestionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamQuestionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamQuestionResponse value)  $default,){
final _that = this;
switch (_that) {
case _ExamQuestionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamQuestionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ExamQuestionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String code,  String message,  ExamQuestionItem data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamQuestionResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String code,  String message,  ExamQuestionItem data)  $default,) {final _that = this;
switch (_that) {
case _ExamQuestionResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String code,  String message,  ExamQuestionItem data)?  $default,) {final _that = this;
switch (_that) {
case _ExamQuestionResponse() when $default != null:
return $default(_that.status,_that.code,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamQuestionResponse implements ExamQuestionResponse {
  const _ExamQuestionResponse({required this.status, required this.code, required this.message, required this.data});
  factory _ExamQuestionResponse.fromJson(Map<String, dynamic> json) => _$ExamQuestionResponseFromJson(json);

@override final  int status;
@override final  String code;
@override final  String message;
@override final  ExamQuestionItem data;

/// Create a copy of ExamQuestionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamQuestionResponseCopyWith<_ExamQuestionResponse> get copyWith => __$ExamQuestionResponseCopyWithImpl<_ExamQuestionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamQuestionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamQuestionResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,code,message,data);

@override
String toString() {
  return 'ExamQuestionResponse(status: $status, code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ExamQuestionResponseCopyWith<$Res> implements $ExamQuestionResponseCopyWith<$Res> {
  factory _$ExamQuestionResponseCopyWith(_ExamQuestionResponse value, $Res Function(_ExamQuestionResponse) _then) = __$ExamQuestionResponseCopyWithImpl;
@override @useResult
$Res call({
 int status, String code, String message, ExamQuestionItem data
});


@override $ExamQuestionItemCopyWith<$Res> get data;

}
/// @nodoc
class __$ExamQuestionResponseCopyWithImpl<$Res>
    implements _$ExamQuestionResponseCopyWith<$Res> {
  __$ExamQuestionResponseCopyWithImpl(this._self, this._then);

  final _ExamQuestionResponse _self;
  final $Res Function(_ExamQuestionResponse) _then;

/// Create a copy of ExamQuestionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? code = null,Object? message = null,Object? data = null,}) {
  return _then(_ExamQuestionResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ExamQuestionItem,
  ));
}

/// Create a copy of ExamQuestionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExamQuestionItemCopyWith<$Res> get data {
  
  return $ExamQuestionItemCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ExamQuestionItem {

 List<SubjectItem> get subjects;
/// Create a copy of ExamQuestionItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamQuestionItemCopyWith<ExamQuestionItem> get copyWith => _$ExamQuestionItemCopyWithImpl<ExamQuestionItem>(this as ExamQuestionItem, _$identity);

  /// Serializes this ExamQuestionItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamQuestionItem&&const DeepCollectionEquality().equals(other.subjects, subjects));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(subjects));

@override
String toString() {
  return 'ExamQuestionItem(subjects: $subjects)';
}


}

/// @nodoc
abstract mixin class $ExamQuestionItemCopyWith<$Res>  {
  factory $ExamQuestionItemCopyWith(ExamQuestionItem value, $Res Function(ExamQuestionItem) _then) = _$ExamQuestionItemCopyWithImpl;
@useResult
$Res call({
 List<SubjectItem> subjects
});




}
/// @nodoc
class _$ExamQuestionItemCopyWithImpl<$Res>
    implements $ExamQuestionItemCopyWith<$Res> {
  _$ExamQuestionItemCopyWithImpl(this._self, this._then);

  final ExamQuestionItem _self;
  final $Res Function(ExamQuestionItem) _then;

/// Create a copy of ExamQuestionItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subjects = null,}) {
  return _then(_self.copyWith(
subjects: null == subjects ? _self.subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<SubjectItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamQuestionItem].
extension ExamQuestionItemPatterns on ExamQuestionItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamQuestionItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamQuestionItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamQuestionItem value)  $default,){
final _that = this;
switch (_that) {
case _ExamQuestionItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamQuestionItem value)?  $default,){
final _that = this;
switch (_that) {
case _ExamQuestionItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SubjectItem> subjects)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamQuestionItem() when $default != null:
return $default(_that.subjects);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SubjectItem> subjects)  $default,) {final _that = this;
switch (_that) {
case _ExamQuestionItem():
return $default(_that.subjects);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SubjectItem> subjects)?  $default,) {final _that = this;
switch (_that) {
case _ExamQuestionItem() when $default != null:
return $default(_that.subjects);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExamQuestionItem implements ExamQuestionItem {
  const _ExamQuestionItem({required final  List<SubjectItem> subjects}): _subjects = subjects;
  factory _ExamQuestionItem.fromJson(Map<String, dynamic> json) => _$ExamQuestionItemFromJson(json);

 final  List<SubjectItem> _subjects;
@override List<SubjectItem> get subjects {
  if (_subjects is EqualUnmodifiableListView) return _subjects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subjects);
}


/// Create a copy of ExamQuestionItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamQuestionItemCopyWith<_ExamQuestionItem> get copyWith => __$ExamQuestionItemCopyWithImpl<_ExamQuestionItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExamQuestionItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamQuestionItem&&const DeepCollectionEquality().equals(other._subjects, _subjects));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_subjects));

@override
String toString() {
  return 'ExamQuestionItem(subjects: $subjects)';
}


}

/// @nodoc
abstract mixin class _$ExamQuestionItemCopyWith<$Res> implements $ExamQuestionItemCopyWith<$Res> {
  factory _$ExamQuestionItemCopyWith(_ExamQuestionItem value, $Res Function(_ExamQuestionItem) _then) = __$ExamQuestionItemCopyWithImpl;
@override @useResult
$Res call({
 List<SubjectItem> subjects
});




}
/// @nodoc
class __$ExamQuestionItemCopyWithImpl<$Res>
    implements _$ExamQuestionItemCopyWith<$Res> {
  __$ExamQuestionItemCopyWithImpl(this._self, this._then);

  final _ExamQuestionItem _self;
  final $Res Function(_ExamQuestionItem) _then;

/// Create a copy of ExamQuestionItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subjects = null,}) {
  return _then(_ExamQuestionItem(
subjects: null == subjects ? _self._subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<SubjectItem>,
  ));
}


}


/// @nodoc
mixin _$SubjectItem {

 int get id; ExamType get type; String get name; List<QuestionItem> get questions;
/// Create a copy of SubjectItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectItemCopyWith<SubjectItem> get copyWith => _$SubjectItemCopyWithImpl<SubjectItem>(this as SubjectItem, _$identity);

  /// Serializes this SubjectItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubjectItem&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.questions, questions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,name,const DeepCollectionEquality().hash(questions));

@override
String toString() {
  return 'SubjectItem(id: $id, type: $type, name: $name, questions: $questions)';
}


}

/// @nodoc
abstract mixin class $SubjectItemCopyWith<$Res>  {
  factory $SubjectItemCopyWith(SubjectItem value, $Res Function(SubjectItem) _then) = _$SubjectItemCopyWithImpl;
@useResult
$Res call({
 int id, ExamType type, String name, List<QuestionItem> questions
});




}
/// @nodoc
class _$SubjectItemCopyWithImpl<$Res>
    implements $SubjectItemCopyWith<$Res> {
  _$SubjectItemCopyWithImpl(this._self, this._then);

  final SubjectItem _self;
  final $Res Function(SubjectItem) _then;

/// Create a copy of SubjectItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? name = null,Object? questions = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ExamType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,questions: null == questions ? _self.questions : questions // ignore: cast_nullable_to_non_nullable
as List<QuestionItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [SubjectItem].
extension SubjectItemPatterns on SubjectItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubjectItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubjectItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubjectItem value)  $default,){
final _that = this;
switch (_that) {
case _SubjectItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubjectItem value)?  $default,){
final _that = this;
switch (_that) {
case _SubjectItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  ExamType type,  String name,  List<QuestionItem> questions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubjectItem() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.questions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  ExamType type,  String name,  List<QuestionItem> questions)  $default,) {final _that = this;
switch (_that) {
case _SubjectItem():
return $default(_that.id,_that.type,_that.name,_that.questions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  ExamType type,  String name,  List<QuestionItem> questions)?  $default,) {final _that = this;
switch (_that) {
case _SubjectItem() when $default != null:
return $default(_that.id,_that.type,_that.name,_that.questions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubjectItem implements SubjectItem {
  const _SubjectItem({required this.id, required this.type, required this.name, required final  List<QuestionItem> questions}): _questions = questions;
  factory _SubjectItem.fromJson(Map<String, dynamic> json) => _$SubjectItemFromJson(json);

@override final  int id;
@override final  ExamType type;
@override final  String name;
 final  List<QuestionItem> _questions;
@override List<QuestionItem> get questions {
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questions);
}


/// Create a copy of SubjectItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubjectItemCopyWith<_SubjectItem> get copyWith => __$SubjectItemCopyWithImpl<_SubjectItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubjectItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubjectItem&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._questions, _questions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,name,const DeepCollectionEquality().hash(_questions));

@override
String toString() {
  return 'SubjectItem(id: $id, type: $type, name: $name, questions: $questions)';
}


}

/// @nodoc
abstract mixin class _$SubjectItemCopyWith<$Res> implements $SubjectItemCopyWith<$Res> {
  factory _$SubjectItemCopyWith(_SubjectItem value, $Res Function(_SubjectItem) _then) = __$SubjectItemCopyWithImpl;
@override @useResult
$Res call({
 int id, ExamType type, String name, List<QuestionItem> questions
});




}
/// @nodoc
class __$SubjectItemCopyWithImpl<$Res>
    implements _$SubjectItemCopyWith<$Res> {
  __$SubjectItemCopyWithImpl(this._self, this._then);

  final _SubjectItem _self;
  final $Res Function(_SubjectItem) _then;

/// Create a copy of SubjectItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? name = null,Object? questions = null,}) {
  return _then(_SubjectItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ExamType,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,questions: null == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<QuestionItem>,
  ));
}


}


/// @nodoc
mixin _$QuestionItem {

 int get id; String get content; List<AnswerItem> get answers;
/// Create a copy of QuestionItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionItemCopyWith<QuestionItem> get copyWith => _$QuestionItemCopyWithImpl<QuestionItem>(this as QuestionItem, _$identity);

  /// Serializes this QuestionItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionItem&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.answers, answers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,content,const DeepCollectionEquality().hash(answers));

@override
String toString() {
  return 'QuestionItem(id: $id, content: $content, answers: $answers)';
}


}

/// @nodoc
abstract mixin class $QuestionItemCopyWith<$Res>  {
  factory $QuestionItemCopyWith(QuestionItem value, $Res Function(QuestionItem) _then) = _$QuestionItemCopyWithImpl;
@useResult
$Res call({
 int id, String content, List<AnswerItem> answers
});




}
/// @nodoc
class _$QuestionItemCopyWithImpl<$Res>
    implements $QuestionItemCopyWith<$Res> {
  _$QuestionItemCopyWithImpl(this._self, this._then);

  final QuestionItem _self;
  final $Res Function(QuestionItem) _then;

/// Create a copy of QuestionItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? content = null,Object? answers = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<AnswerItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestionItem].
extension QuestionItemPatterns on QuestionItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionItem value)  $default,){
final _that = this;
switch (_that) {
case _QuestionItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionItem value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String content,  List<AnswerItem> answers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionItem() when $default != null:
return $default(_that.id,_that.content,_that.answers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String content,  List<AnswerItem> answers)  $default,) {final _that = this;
switch (_that) {
case _QuestionItem():
return $default(_that.id,_that.content,_that.answers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String content,  List<AnswerItem> answers)?  $default,) {final _that = this;
switch (_that) {
case _QuestionItem() when $default != null:
return $default(_that.id,_that.content,_that.answers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestionItem implements QuestionItem {
  const _QuestionItem({required this.id, required this.content, required final  List<AnswerItem> answers}): _answers = answers;
  factory _QuestionItem.fromJson(Map<String, dynamic> json) => _$QuestionItemFromJson(json);

@override final  int id;
@override final  String content;
 final  List<AnswerItem> _answers;
@override List<AnswerItem> get answers {
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answers);
}


/// Create a copy of QuestionItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionItemCopyWith<_QuestionItem> get copyWith => __$QuestionItemCopyWithImpl<_QuestionItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionItem&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._answers, _answers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,content,const DeepCollectionEquality().hash(_answers));

@override
String toString() {
  return 'QuestionItem(id: $id, content: $content, answers: $answers)';
}


}

/// @nodoc
abstract mixin class _$QuestionItemCopyWith<$Res> implements $QuestionItemCopyWith<$Res> {
  factory _$QuestionItemCopyWith(_QuestionItem value, $Res Function(_QuestionItem) _then) = __$QuestionItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String content, List<AnswerItem> answers
});




}
/// @nodoc
class __$QuestionItemCopyWithImpl<$Res>
    implements _$QuestionItemCopyWith<$Res> {
  __$QuestionItemCopyWithImpl(this._self, this._then);

  final _QuestionItem _self;
  final $Res Function(_QuestionItem) _then;

/// Create a copy of QuestionItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? content = null,Object? answers = null,}) {
  return _then(_QuestionItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<AnswerItem>,
  ));
}


}


/// @nodoc
mixin _$AnswerItem {

 int get id; String get content;
/// Create a copy of AnswerItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerItemCopyWith<AnswerItem> get copyWith => _$AnswerItemCopyWithImpl<AnswerItem>(this as AnswerItem, _$identity);

  /// Serializes this AnswerItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerItem&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,content);

@override
String toString() {
  return 'AnswerItem(id: $id, content: $content)';
}


}

/// @nodoc
abstract mixin class $AnswerItemCopyWith<$Res>  {
  factory $AnswerItemCopyWith(AnswerItem value, $Res Function(AnswerItem) _then) = _$AnswerItemCopyWithImpl;
@useResult
$Res call({
 int id, String content
});




}
/// @nodoc
class _$AnswerItemCopyWithImpl<$Res>
    implements $AnswerItemCopyWith<$Res> {
  _$AnswerItemCopyWithImpl(this._self, this._then);

  final AnswerItem _self;
  final $Res Function(AnswerItem) _then;

/// Create a copy of AnswerItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? content = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AnswerItem].
extension AnswerItemPatterns on AnswerItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnswerItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnswerItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnswerItem value)  $default,){
final _that = this;
switch (_that) {
case _AnswerItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnswerItem value)?  $default,){
final _that = this;
switch (_that) {
case _AnswerItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnswerItem() when $default != null:
return $default(_that.id,_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String content)  $default,) {final _that = this;
switch (_that) {
case _AnswerItem():
return $default(_that.id,_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String content)?  $default,) {final _that = this;
switch (_that) {
case _AnswerItem() when $default != null:
return $default(_that.id,_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnswerItem implements AnswerItem {
  const _AnswerItem({required this.id, required this.content});
  factory _AnswerItem.fromJson(Map<String, dynamic> json) => _$AnswerItemFromJson(json);

@override final  int id;
@override final  String content;

/// Create a copy of AnswerItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnswerItemCopyWith<_AnswerItem> get copyWith => __$AnswerItemCopyWithImpl<_AnswerItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnswerItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnswerItem&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,content);

@override
String toString() {
  return 'AnswerItem(id: $id, content: $content)';
}


}

/// @nodoc
abstract mixin class _$AnswerItemCopyWith<$Res> implements $AnswerItemCopyWith<$Res> {
  factory _$AnswerItemCopyWith(_AnswerItem value, $Res Function(_AnswerItem) _then) = __$AnswerItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String content
});




}
/// @nodoc
class __$AnswerItemCopyWithImpl<$Res>
    implements _$AnswerItemCopyWith<$Res> {
  __$AnswerItemCopyWithImpl(this._self, this._then);

  final _AnswerItem _self;
  final $Res Function(_AnswerItem) _then;

/// Create a copy of AnswerItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? content = null,}) {
  return _then(_AnswerItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

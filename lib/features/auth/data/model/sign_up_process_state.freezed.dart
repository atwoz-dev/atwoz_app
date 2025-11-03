// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_process_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpProcessState {

 int get currentStep; String? get nickname; Gender get selectedGender;// 변경: Enum 타입 적용
 bool get isLoading; String? get error; int? get selectedYear; int? get selectedHeight; Job? get selectedJob; String? get selectedLocation; Education? get selectedEducation;// 변경: Enum 타입 적용
 String? get selectedFirstMbtiLetter; String? get selectedSecondMbtiLetter; String? get selectedThirdMbtiLetter; String? get selectedFourthMbtiLetter; SmokingStatus? get selectedSmoking;// 변경: Enum 타입 적용
 DrinkingStatus? get selectedDrinking;// 변경: Enum 타입 적용
 Religion? get selectedReligion;// 변경: Enum 타입 적용
 List<Hobby> get selectedHobbies;
/// Create a copy of SignUpProcessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpProcessStateCopyWith<SignUpProcessState> get copyWith => _$SignUpProcessStateCopyWithImpl<SignUpProcessState>(this as SignUpProcessState, _$identity);

  /// Serializes this SignUpProcessState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpProcessState&&(identical(other.currentStep, currentStep) || other.currentStep == currentStep)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.selectedGender, selectedGender) || other.selectedGender == selectedGender)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.selectedYear, selectedYear) || other.selectedYear == selectedYear)&&(identical(other.selectedHeight, selectedHeight) || other.selectedHeight == selectedHeight)&&(identical(other.selectedJob, selectedJob) || other.selectedJob == selectedJob)&&(identical(other.selectedLocation, selectedLocation) || other.selectedLocation == selectedLocation)&&(identical(other.selectedEducation, selectedEducation) || other.selectedEducation == selectedEducation)&&(identical(other.selectedFirstMbtiLetter, selectedFirstMbtiLetter) || other.selectedFirstMbtiLetter == selectedFirstMbtiLetter)&&(identical(other.selectedSecondMbtiLetter, selectedSecondMbtiLetter) || other.selectedSecondMbtiLetter == selectedSecondMbtiLetter)&&(identical(other.selectedThirdMbtiLetter, selectedThirdMbtiLetter) || other.selectedThirdMbtiLetter == selectedThirdMbtiLetter)&&(identical(other.selectedFourthMbtiLetter, selectedFourthMbtiLetter) || other.selectedFourthMbtiLetter == selectedFourthMbtiLetter)&&(identical(other.selectedSmoking, selectedSmoking) || other.selectedSmoking == selectedSmoking)&&(identical(other.selectedDrinking, selectedDrinking) || other.selectedDrinking == selectedDrinking)&&(identical(other.selectedReligion, selectedReligion) || other.selectedReligion == selectedReligion)&&const DeepCollectionEquality().equals(other.selectedHobbies, selectedHobbies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentStep,nickname,selectedGender,isLoading,error,selectedYear,selectedHeight,selectedJob,selectedLocation,selectedEducation,selectedFirstMbtiLetter,selectedSecondMbtiLetter,selectedThirdMbtiLetter,selectedFourthMbtiLetter,selectedSmoking,selectedDrinking,selectedReligion,const DeepCollectionEquality().hash(selectedHobbies));

@override
String toString() {
  return 'SignUpProcessState(currentStep: $currentStep, nickname: $nickname, selectedGender: $selectedGender, isLoading: $isLoading, error: $error, selectedYear: $selectedYear, selectedHeight: $selectedHeight, selectedJob: $selectedJob, selectedLocation: $selectedLocation, selectedEducation: $selectedEducation, selectedFirstMbtiLetter: $selectedFirstMbtiLetter, selectedSecondMbtiLetter: $selectedSecondMbtiLetter, selectedThirdMbtiLetter: $selectedThirdMbtiLetter, selectedFourthMbtiLetter: $selectedFourthMbtiLetter, selectedSmoking: $selectedSmoking, selectedDrinking: $selectedDrinking, selectedReligion: $selectedReligion, selectedHobbies: $selectedHobbies)';
}


}

/// @nodoc
abstract mixin class $SignUpProcessStateCopyWith<$Res>  {
  factory $SignUpProcessStateCopyWith(SignUpProcessState value, $Res Function(SignUpProcessState) _then) = _$SignUpProcessStateCopyWithImpl;
@useResult
$Res call({
 int currentStep, String? nickname, Gender selectedGender, bool isLoading, String? error, int? selectedYear, int? selectedHeight, Job? selectedJob, String? selectedLocation, Education? selectedEducation, String? selectedFirstMbtiLetter, String? selectedSecondMbtiLetter, String? selectedThirdMbtiLetter, String? selectedFourthMbtiLetter, SmokingStatus? selectedSmoking, DrinkingStatus? selectedDrinking, Religion? selectedReligion, List<Hobby> selectedHobbies
});




}
/// @nodoc
class _$SignUpProcessStateCopyWithImpl<$Res>
    implements $SignUpProcessStateCopyWith<$Res> {
  _$SignUpProcessStateCopyWithImpl(this._self, this._then);

  final SignUpProcessState _self;
  final $Res Function(SignUpProcessState) _then;

/// Create a copy of SignUpProcessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentStep = null,Object? nickname = freezed,Object? selectedGender = null,Object? isLoading = null,Object? error = freezed,Object? selectedYear = freezed,Object? selectedHeight = freezed,Object? selectedJob = freezed,Object? selectedLocation = freezed,Object? selectedEducation = freezed,Object? selectedFirstMbtiLetter = freezed,Object? selectedSecondMbtiLetter = freezed,Object? selectedThirdMbtiLetter = freezed,Object? selectedFourthMbtiLetter = freezed,Object? selectedSmoking = freezed,Object? selectedDrinking = freezed,Object? selectedReligion = freezed,Object? selectedHobbies = null,}) {
  return _then(_self.copyWith(
currentStep: null == currentStep ? _self.currentStep : currentStep // ignore: cast_nullable_to_non_nullable
as int,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,selectedGender: null == selectedGender ? _self.selectedGender : selectedGender // ignore: cast_nullable_to_non_nullable
as Gender,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,selectedYear: freezed == selectedYear ? _self.selectedYear : selectedYear // ignore: cast_nullable_to_non_nullable
as int?,selectedHeight: freezed == selectedHeight ? _self.selectedHeight : selectedHeight // ignore: cast_nullable_to_non_nullable
as int?,selectedJob: freezed == selectedJob ? _self.selectedJob : selectedJob // ignore: cast_nullable_to_non_nullable
as Job?,selectedLocation: freezed == selectedLocation ? _self.selectedLocation : selectedLocation // ignore: cast_nullable_to_non_nullable
as String?,selectedEducation: freezed == selectedEducation ? _self.selectedEducation : selectedEducation // ignore: cast_nullable_to_non_nullable
as Education?,selectedFirstMbtiLetter: freezed == selectedFirstMbtiLetter ? _self.selectedFirstMbtiLetter : selectedFirstMbtiLetter // ignore: cast_nullable_to_non_nullable
as String?,selectedSecondMbtiLetter: freezed == selectedSecondMbtiLetter ? _self.selectedSecondMbtiLetter : selectedSecondMbtiLetter // ignore: cast_nullable_to_non_nullable
as String?,selectedThirdMbtiLetter: freezed == selectedThirdMbtiLetter ? _self.selectedThirdMbtiLetter : selectedThirdMbtiLetter // ignore: cast_nullable_to_non_nullable
as String?,selectedFourthMbtiLetter: freezed == selectedFourthMbtiLetter ? _self.selectedFourthMbtiLetter : selectedFourthMbtiLetter // ignore: cast_nullable_to_non_nullable
as String?,selectedSmoking: freezed == selectedSmoking ? _self.selectedSmoking : selectedSmoking // ignore: cast_nullable_to_non_nullable
as SmokingStatus?,selectedDrinking: freezed == selectedDrinking ? _self.selectedDrinking : selectedDrinking // ignore: cast_nullable_to_non_nullable
as DrinkingStatus?,selectedReligion: freezed == selectedReligion ? _self.selectedReligion : selectedReligion // ignore: cast_nullable_to_non_nullable
as Religion?,selectedHobbies: null == selectedHobbies ? _self.selectedHobbies : selectedHobbies // ignore: cast_nullable_to_non_nullable
as List<Hobby>,
  ));
}

}


/// Adds pattern-matching-related methods to [SignUpProcessState].
extension SignUpProcessStatePatterns on SignUpProcessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpProcessState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpProcessState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpProcessState value)  $default,){
final _that = this;
switch (_that) {
case _SignUpProcessState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpProcessState value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpProcessState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentStep,  String? nickname,  Gender selectedGender,  bool isLoading,  String? error,  int? selectedYear,  int? selectedHeight,  Job? selectedJob,  String? selectedLocation,  Education? selectedEducation,  String? selectedFirstMbtiLetter,  String? selectedSecondMbtiLetter,  String? selectedThirdMbtiLetter,  String? selectedFourthMbtiLetter,  SmokingStatus? selectedSmoking,  DrinkingStatus? selectedDrinking,  Religion? selectedReligion,  List<Hobby> selectedHobbies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpProcessState() when $default != null:
return $default(_that.currentStep,_that.nickname,_that.selectedGender,_that.isLoading,_that.error,_that.selectedYear,_that.selectedHeight,_that.selectedJob,_that.selectedLocation,_that.selectedEducation,_that.selectedFirstMbtiLetter,_that.selectedSecondMbtiLetter,_that.selectedThirdMbtiLetter,_that.selectedFourthMbtiLetter,_that.selectedSmoking,_that.selectedDrinking,_that.selectedReligion,_that.selectedHobbies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentStep,  String? nickname,  Gender selectedGender,  bool isLoading,  String? error,  int? selectedYear,  int? selectedHeight,  Job? selectedJob,  String? selectedLocation,  Education? selectedEducation,  String? selectedFirstMbtiLetter,  String? selectedSecondMbtiLetter,  String? selectedThirdMbtiLetter,  String? selectedFourthMbtiLetter,  SmokingStatus? selectedSmoking,  DrinkingStatus? selectedDrinking,  Religion? selectedReligion,  List<Hobby> selectedHobbies)  $default,) {final _that = this;
switch (_that) {
case _SignUpProcessState():
return $default(_that.currentStep,_that.nickname,_that.selectedGender,_that.isLoading,_that.error,_that.selectedYear,_that.selectedHeight,_that.selectedJob,_that.selectedLocation,_that.selectedEducation,_that.selectedFirstMbtiLetter,_that.selectedSecondMbtiLetter,_that.selectedThirdMbtiLetter,_that.selectedFourthMbtiLetter,_that.selectedSmoking,_that.selectedDrinking,_that.selectedReligion,_that.selectedHobbies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentStep,  String? nickname,  Gender selectedGender,  bool isLoading,  String? error,  int? selectedYear,  int? selectedHeight,  Job? selectedJob,  String? selectedLocation,  Education? selectedEducation,  String? selectedFirstMbtiLetter,  String? selectedSecondMbtiLetter,  String? selectedThirdMbtiLetter,  String? selectedFourthMbtiLetter,  SmokingStatus? selectedSmoking,  DrinkingStatus? selectedDrinking,  Religion? selectedReligion,  List<Hobby> selectedHobbies)?  $default,) {final _that = this;
switch (_that) {
case _SignUpProcessState() when $default != null:
return $default(_that.currentStep,_that.nickname,_that.selectedGender,_that.isLoading,_that.error,_that.selectedYear,_that.selectedHeight,_that.selectedJob,_that.selectedLocation,_that.selectedEducation,_that.selectedFirstMbtiLetter,_that.selectedSecondMbtiLetter,_that.selectedThirdMbtiLetter,_that.selectedFourthMbtiLetter,_that.selectedSmoking,_that.selectedDrinking,_that.selectedReligion,_that.selectedHobbies);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignUpProcessState extends SignUpProcessState {
  const _SignUpProcessState({this.currentStep = 1, this.nickname = null, this.selectedGender = Gender.male, this.isLoading = false, this.error = null, this.selectedYear = null, this.selectedHeight = null, this.selectedJob = null, this.selectedLocation = null, this.selectedEducation = null, this.selectedFirstMbtiLetter = null, this.selectedSecondMbtiLetter = null, this.selectedThirdMbtiLetter = null, this.selectedFourthMbtiLetter = null, this.selectedSmoking = null, this.selectedDrinking = null, this.selectedReligion = null, final  List<Hobby> selectedHobbies = const <Hobby>[]}): _selectedHobbies = selectedHobbies,super._();
  factory _SignUpProcessState.fromJson(Map<String, dynamic> json) => _$SignUpProcessStateFromJson(json);

@override@JsonKey() final  int currentStep;
@override@JsonKey() final  String? nickname;
@override@JsonKey() final  Gender selectedGender;
// 변경: Enum 타입 적용
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String? error;
@override@JsonKey() final  int? selectedYear;
@override@JsonKey() final  int? selectedHeight;
@override@JsonKey() final  Job? selectedJob;
@override@JsonKey() final  String? selectedLocation;
@override@JsonKey() final  Education? selectedEducation;
// 변경: Enum 타입 적용
@override@JsonKey() final  String? selectedFirstMbtiLetter;
@override@JsonKey() final  String? selectedSecondMbtiLetter;
@override@JsonKey() final  String? selectedThirdMbtiLetter;
@override@JsonKey() final  String? selectedFourthMbtiLetter;
@override@JsonKey() final  SmokingStatus? selectedSmoking;
// 변경: Enum 타입 적용
@override@JsonKey() final  DrinkingStatus? selectedDrinking;
// 변경: Enum 타입 적용
@override@JsonKey() final  Religion? selectedReligion;
// 변경: Enum 타입 적용
 final  List<Hobby> _selectedHobbies;
// 변경: Enum 타입 적용
@override@JsonKey() List<Hobby> get selectedHobbies {
  if (_selectedHobbies is EqualUnmodifiableListView) return _selectedHobbies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedHobbies);
}


/// Create a copy of SignUpProcessState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpProcessStateCopyWith<_SignUpProcessState> get copyWith => __$SignUpProcessStateCopyWithImpl<_SignUpProcessState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignUpProcessStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpProcessState&&(identical(other.currentStep, currentStep) || other.currentStep == currentStep)&&(identical(other.nickname, nickname) || other.nickname == nickname)&&(identical(other.selectedGender, selectedGender) || other.selectedGender == selectedGender)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.selectedYear, selectedYear) || other.selectedYear == selectedYear)&&(identical(other.selectedHeight, selectedHeight) || other.selectedHeight == selectedHeight)&&(identical(other.selectedJob, selectedJob) || other.selectedJob == selectedJob)&&(identical(other.selectedLocation, selectedLocation) || other.selectedLocation == selectedLocation)&&(identical(other.selectedEducation, selectedEducation) || other.selectedEducation == selectedEducation)&&(identical(other.selectedFirstMbtiLetter, selectedFirstMbtiLetter) || other.selectedFirstMbtiLetter == selectedFirstMbtiLetter)&&(identical(other.selectedSecondMbtiLetter, selectedSecondMbtiLetter) || other.selectedSecondMbtiLetter == selectedSecondMbtiLetter)&&(identical(other.selectedThirdMbtiLetter, selectedThirdMbtiLetter) || other.selectedThirdMbtiLetter == selectedThirdMbtiLetter)&&(identical(other.selectedFourthMbtiLetter, selectedFourthMbtiLetter) || other.selectedFourthMbtiLetter == selectedFourthMbtiLetter)&&(identical(other.selectedSmoking, selectedSmoking) || other.selectedSmoking == selectedSmoking)&&(identical(other.selectedDrinking, selectedDrinking) || other.selectedDrinking == selectedDrinking)&&(identical(other.selectedReligion, selectedReligion) || other.selectedReligion == selectedReligion)&&const DeepCollectionEquality().equals(other._selectedHobbies, _selectedHobbies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentStep,nickname,selectedGender,isLoading,error,selectedYear,selectedHeight,selectedJob,selectedLocation,selectedEducation,selectedFirstMbtiLetter,selectedSecondMbtiLetter,selectedThirdMbtiLetter,selectedFourthMbtiLetter,selectedSmoking,selectedDrinking,selectedReligion,const DeepCollectionEquality().hash(_selectedHobbies));

@override
String toString() {
  return 'SignUpProcessState(currentStep: $currentStep, nickname: $nickname, selectedGender: $selectedGender, isLoading: $isLoading, error: $error, selectedYear: $selectedYear, selectedHeight: $selectedHeight, selectedJob: $selectedJob, selectedLocation: $selectedLocation, selectedEducation: $selectedEducation, selectedFirstMbtiLetter: $selectedFirstMbtiLetter, selectedSecondMbtiLetter: $selectedSecondMbtiLetter, selectedThirdMbtiLetter: $selectedThirdMbtiLetter, selectedFourthMbtiLetter: $selectedFourthMbtiLetter, selectedSmoking: $selectedSmoking, selectedDrinking: $selectedDrinking, selectedReligion: $selectedReligion, selectedHobbies: $selectedHobbies)';
}


}

/// @nodoc
abstract mixin class _$SignUpProcessStateCopyWith<$Res> implements $SignUpProcessStateCopyWith<$Res> {
  factory _$SignUpProcessStateCopyWith(_SignUpProcessState value, $Res Function(_SignUpProcessState) _then) = __$SignUpProcessStateCopyWithImpl;
@override @useResult
$Res call({
 int currentStep, String? nickname, Gender selectedGender, bool isLoading, String? error, int? selectedYear, int? selectedHeight, Job? selectedJob, String? selectedLocation, Education? selectedEducation, String? selectedFirstMbtiLetter, String? selectedSecondMbtiLetter, String? selectedThirdMbtiLetter, String? selectedFourthMbtiLetter, SmokingStatus? selectedSmoking, DrinkingStatus? selectedDrinking, Religion? selectedReligion, List<Hobby> selectedHobbies
});




}
/// @nodoc
class __$SignUpProcessStateCopyWithImpl<$Res>
    implements _$SignUpProcessStateCopyWith<$Res> {
  __$SignUpProcessStateCopyWithImpl(this._self, this._then);

  final _SignUpProcessState _self;
  final $Res Function(_SignUpProcessState) _then;

/// Create a copy of SignUpProcessState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentStep = null,Object? nickname = freezed,Object? selectedGender = null,Object? isLoading = null,Object? error = freezed,Object? selectedYear = freezed,Object? selectedHeight = freezed,Object? selectedJob = freezed,Object? selectedLocation = freezed,Object? selectedEducation = freezed,Object? selectedFirstMbtiLetter = freezed,Object? selectedSecondMbtiLetter = freezed,Object? selectedThirdMbtiLetter = freezed,Object? selectedFourthMbtiLetter = freezed,Object? selectedSmoking = freezed,Object? selectedDrinking = freezed,Object? selectedReligion = freezed,Object? selectedHobbies = null,}) {
  return _then(_SignUpProcessState(
currentStep: null == currentStep ? _self.currentStep : currentStep // ignore: cast_nullable_to_non_nullable
as int,nickname: freezed == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String?,selectedGender: null == selectedGender ? _self.selectedGender : selectedGender // ignore: cast_nullable_to_non_nullable
as Gender,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,selectedYear: freezed == selectedYear ? _self.selectedYear : selectedYear // ignore: cast_nullable_to_non_nullable
as int?,selectedHeight: freezed == selectedHeight ? _self.selectedHeight : selectedHeight // ignore: cast_nullable_to_non_nullable
as int?,selectedJob: freezed == selectedJob ? _self.selectedJob : selectedJob // ignore: cast_nullable_to_non_nullable
as Job?,selectedLocation: freezed == selectedLocation ? _self.selectedLocation : selectedLocation // ignore: cast_nullable_to_non_nullable
as String?,selectedEducation: freezed == selectedEducation ? _self.selectedEducation : selectedEducation // ignore: cast_nullable_to_non_nullable
as Education?,selectedFirstMbtiLetter: freezed == selectedFirstMbtiLetter ? _self.selectedFirstMbtiLetter : selectedFirstMbtiLetter // ignore: cast_nullable_to_non_nullable
as String?,selectedSecondMbtiLetter: freezed == selectedSecondMbtiLetter ? _self.selectedSecondMbtiLetter : selectedSecondMbtiLetter // ignore: cast_nullable_to_non_nullable
as String?,selectedThirdMbtiLetter: freezed == selectedThirdMbtiLetter ? _self.selectedThirdMbtiLetter : selectedThirdMbtiLetter // ignore: cast_nullable_to_non_nullable
as String?,selectedFourthMbtiLetter: freezed == selectedFourthMbtiLetter ? _self.selectedFourthMbtiLetter : selectedFourthMbtiLetter // ignore: cast_nullable_to_non_nullable
as String?,selectedSmoking: freezed == selectedSmoking ? _self.selectedSmoking : selectedSmoking // ignore: cast_nullable_to_non_nullable
as SmokingStatus?,selectedDrinking: freezed == selectedDrinking ? _self.selectedDrinking : selectedDrinking // ignore: cast_nullable_to_non_nullable
as DrinkingStatus?,selectedReligion: freezed == selectedReligion ? _self.selectedReligion : selectedReligion // ignore: cast_nullable_to_non_nullable
as Religion?,selectedHobbies: null == selectedHobbies ? _self._selectedHobbies : selectedHobbies // ignore: cast_nullable_to_non_nullable
as List<Hobby>,
  ));
}


}

// dart format on

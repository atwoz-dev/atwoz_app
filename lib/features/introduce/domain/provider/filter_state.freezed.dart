// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterState {
  RangeValues get rangeValues => throw _privateConstructorUsedError;
  List<String> get selectedCitys => throw _privateConstructorUsedError;
  List<String> get selectedGenders => throw _privateConstructorUsedError;

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterStateCopyWith<FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res, FilterState>;
  @useResult
  $Res call(
      {RangeValues rangeValues,
      List<String> selectedCitys,
      List<String> selectedGenders});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res, $Val extends FilterState>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rangeValues = null,
    Object? selectedCitys = null,
    Object? selectedGenders = null,
  }) {
    return _then(_value.copyWith(
      rangeValues: null == rangeValues
          ? _value.rangeValues
          : rangeValues // ignore: cast_nullable_to_non_nullable
              as RangeValues,
      selectedCitys: null == selectedCitys
          ? _value.selectedCitys
          : selectedCitys // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedGenders: null == selectedGenders
          ? _value.selectedGenders
          : selectedGenders // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterStateImplCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$FilterStateImplCopyWith(
          _$FilterStateImpl value, $Res Function(_$FilterStateImpl) then) =
      __$$FilterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RangeValues rangeValues,
      List<String> selectedCitys,
      List<String> selectedGenders});
}

/// @nodoc
class __$$FilterStateImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$FilterStateImpl>
    implements _$$FilterStateImplCopyWith<$Res> {
  __$$FilterStateImplCopyWithImpl(
      _$FilterStateImpl _value, $Res Function(_$FilterStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rangeValues = null,
    Object? selectedCitys = null,
    Object? selectedGenders = null,
  }) {
    return _then(_$FilterStateImpl(
      rangeValues: null == rangeValues
          ? _value.rangeValues
          : rangeValues // ignore: cast_nullable_to_non_nullable
              as RangeValues,
      selectedCitys: null == selectedCitys
          ? _value._selectedCitys
          : selectedCitys // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedGenders: null == selectedGenders
          ? _value._selectedGenders
          : selectedGenders // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$FilterStateImpl extends _FilterState {
  const _$FilterStateImpl(
      {required this.rangeValues,
      required final List<String> selectedCitys,
      required final List<String> selectedGenders})
      : _selectedCitys = selectedCitys,
        _selectedGenders = selectedGenders,
        super._();

  @override
  final RangeValues rangeValues;
  final List<String> _selectedCitys;
  @override
  List<String> get selectedCitys {
    if (_selectedCitys is EqualUnmodifiableListView) return _selectedCitys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCitys);
  }

  final List<String> _selectedGenders;
  @override
  List<String> get selectedGenders {
    if (_selectedGenders is EqualUnmodifiableListView) return _selectedGenders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedGenders);
  }

  @override
  String toString() {
    return 'FilterState(rangeValues: $rangeValues, selectedCitys: $selectedCitys, selectedGenders: $selectedGenders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterStateImpl &&
            (identical(other.rangeValues, rangeValues) ||
                other.rangeValues == rangeValues) &&
            const DeepCollectionEquality()
                .equals(other._selectedCitys, _selectedCitys) &&
            const DeepCollectionEquality()
                .equals(other._selectedGenders, _selectedGenders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      rangeValues,
      const DeepCollectionEquality().hash(_selectedCitys),
      const DeepCollectionEquality().hash(_selectedGenders));

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterStateImplCopyWith<_$FilterStateImpl> get copyWith =>
      __$$FilterStateImplCopyWithImpl<_$FilterStateImpl>(this, _$identity);
}

abstract class _FilterState extends FilterState {
  const factory _FilterState(
      {required final RangeValues rangeValues,
      required final List<String> selectedCitys,
      required final List<String> selectedGenders}) = _$FilterStateImpl;
  const _FilterState._() : super._();

  @override
  RangeValues get rangeValues;
  @override
  List<String> get selectedCitys;
  @override
  List<String> get selectedGenders;

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterStateImplCopyWith<_$FilterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

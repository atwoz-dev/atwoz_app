// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ideal_type_setting_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IdealTypeSettingItem {
  String get label => throw _privateConstructorUsedError;
  String get placeholder => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;
  IdealTypeDialogType get type => throw _privateConstructorUsedError;
  int get maxSelectableCount => throw _privateConstructorUsedError;

  /// Create a copy of IdealTypeSettingItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdealTypeSettingItemCopyWith<IdealTypeSettingItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdealTypeSettingItemCopyWith<$Res> {
  factory $IdealTypeSettingItemCopyWith(IdealTypeSettingItem value,
          $Res Function(IdealTypeSettingItem) then) =
      _$IdealTypeSettingItemCopyWithImpl<$Res, IdealTypeSettingItem>;
  @useResult
  $Res call(
      {String label,
      String placeholder,
      List<String> options,
      IdealTypeDialogType type,
      int maxSelectableCount});
}

/// @nodoc
class _$IdealTypeSettingItemCopyWithImpl<$Res,
        $Val extends IdealTypeSettingItem>
    implements $IdealTypeSettingItemCopyWith<$Res> {
  _$IdealTypeSettingItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdealTypeSettingItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? placeholder = null,
    Object? options = null,
    Object? type = null,
    Object? maxSelectableCount = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: null == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as IdealTypeDialogType,
      maxSelectableCount: null == maxSelectableCount
          ? _value.maxSelectableCount
          : maxSelectableCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdealTypeSettingItemImplCopyWith<$Res>
    implements $IdealTypeSettingItemCopyWith<$Res> {
  factory _$$IdealTypeSettingItemImplCopyWith(_$IdealTypeSettingItemImpl value,
          $Res Function(_$IdealTypeSettingItemImpl) then) =
      __$$IdealTypeSettingItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String label,
      String placeholder,
      List<String> options,
      IdealTypeDialogType type,
      int maxSelectableCount});
}

/// @nodoc
class __$$IdealTypeSettingItemImplCopyWithImpl<$Res>
    extends _$IdealTypeSettingItemCopyWithImpl<$Res, _$IdealTypeSettingItemImpl>
    implements _$$IdealTypeSettingItemImplCopyWith<$Res> {
  __$$IdealTypeSettingItemImplCopyWithImpl(_$IdealTypeSettingItemImpl _value,
      $Res Function(_$IdealTypeSettingItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdealTypeSettingItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? placeholder = null,
    Object? options = null,
    Object? type = null,
    Object? maxSelectableCount = null,
  }) {
    return _then(_$IdealTypeSettingItemImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: null == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as IdealTypeDialogType,
      maxSelectableCount: null == maxSelectableCount
          ? _value.maxSelectableCount
          : maxSelectableCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IdealTypeSettingItemImpl implements _IdealTypeSettingItem {
  const _$IdealTypeSettingItemImpl(
      {required this.label,
      required this.placeholder,
      required final List<String> options,
      this.type = IdealTypeDialogType.single,
      this.maxSelectableCount = 1})
      : _options = options;

  @override
  final String label;
  @override
  final String placeholder;
  final List<String> _options;
  @override
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  @JsonKey()
  final IdealTypeDialogType type;
  @override
  @JsonKey()
  final int maxSelectableCount;

  @override
  String toString() {
    return 'IdealTypeSettingItem(label: $label, placeholder: $placeholder, options: $options, type: $type, maxSelectableCount: $maxSelectableCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdealTypeSettingItemImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.maxSelectableCount, maxSelectableCount) ||
                other.maxSelectableCount == maxSelectableCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, placeholder,
      const DeepCollectionEquality().hash(_options), type, maxSelectableCount);

  /// Create a copy of IdealTypeSettingItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdealTypeSettingItemImplCopyWith<_$IdealTypeSettingItemImpl>
      get copyWith =>
          __$$IdealTypeSettingItemImplCopyWithImpl<_$IdealTypeSettingItemImpl>(
              this, _$identity);
}

abstract class _IdealTypeSettingItem implements IdealTypeSettingItem {
  const factory _IdealTypeSettingItem(
      {required final String label,
      required final String placeholder,
      required final List<String> options,
      final IdealTypeDialogType type,
      final int maxSelectableCount}) = _$IdealTypeSettingItemImpl;

  @override
  String get label;
  @override
  String get placeholder;
  @override
  List<String> get options;
  @override
  IdealTypeDialogType get type;
  @override
  int get maxSelectableCount;

  /// Create a copy of IdealTypeSettingItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdealTypeSettingItemImplCopyWith<_$IdealTypeSettingItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

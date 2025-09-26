// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_image_update_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileImageUpdateState {
  List<EditableProfileImage?> get editableProfileImages =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProfileImageUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileImageUpdateStateCopyWith<ProfileImageUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileImageUpdateStateCopyWith<$Res> {
  factory $ProfileImageUpdateStateCopyWith(ProfileImageUpdateState value,
          $Res Function(ProfileImageUpdateState) then) =
      _$ProfileImageUpdateStateCopyWithImpl<$Res, ProfileImageUpdateState>;
  @useResult
  $Res call({List<EditableProfileImage?> editableProfileImages});
}

/// @nodoc
class _$ProfileImageUpdateStateCopyWithImpl<$Res,
        $Val extends ProfileImageUpdateState>
    implements $ProfileImageUpdateStateCopyWith<$Res> {
  _$ProfileImageUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileImageUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editableProfileImages = null,
  }) {
    return _then(_value.copyWith(
      editableProfileImages: null == editableProfileImages
          ? _value.editableProfileImages
          : editableProfileImages // ignore: cast_nullable_to_non_nullable
              as List<EditableProfileImage?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileImageUpdateStateImplCopyWith<$Res>
    implements $ProfileImageUpdateStateCopyWith<$Res> {
  factory _$$ProfileImageUpdateStateImplCopyWith(
          _$ProfileImageUpdateStateImpl value,
          $Res Function(_$ProfileImageUpdateStateImpl) then) =
      __$$ProfileImageUpdateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EditableProfileImage?> editableProfileImages});
}

/// @nodoc
class __$$ProfileImageUpdateStateImplCopyWithImpl<$Res>
    extends _$ProfileImageUpdateStateCopyWithImpl<$Res,
        _$ProfileImageUpdateStateImpl>
    implements _$$ProfileImageUpdateStateImplCopyWith<$Res> {
  __$$ProfileImageUpdateStateImplCopyWithImpl(
      _$ProfileImageUpdateStateImpl _value,
      $Res Function(_$ProfileImageUpdateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileImageUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editableProfileImages = null,
  }) {
    return _then(_$ProfileImageUpdateStateImpl(
      editableProfileImages: null == editableProfileImages
          ? _value._editableProfileImages
          : editableProfileImages // ignore: cast_nullable_to_non_nullable
              as List<EditableProfileImage?>,
    ));
  }
}

/// @nodoc

class _$ProfileImageUpdateStateImpl extends _ProfileImageUpdateState {
  const _$ProfileImageUpdateStateImpl(
      {required final List<EditableProfileImage?> editableProfileImages})
      : _editableProfileImages = editableProfileImages,
        super._();

  final List<EditableProfileImage?> _editableProfileImages;
  @override
  List<EditableProfileImage?> get editableProfileImages {
    if (_editableProfileImages is EqualUnmodifiableListView)
      return _editableProfileImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_editableProfileImages);
  }

  @override
  String toString() {
    return 'ProfileImageUpdateState(editableProfileImages: $editableProfileImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImageUpdateStateImpl &&
            const DeepCollectionEquality()
                .equals(other._editableProfileImages, _editableProfileImages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_editableProfileImages));

  /// Create a copy of ProfileImageUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImageUpdateStateImplCopyWith<_$ProfileImageUpdateStateImpl>
      get copyWith => __$$ProfileImageUpdateStateImplCopyWithImpl<
          _$ProfileImageUpdateStateImpl>(this, _$identity);
}

abstract class _ProfileImageUpdateState extends ProfileImageUpdateState {
  const factory _ProfileImageUpdateState(
          {required final List<EditableProfileImage?> editableProfileImages}) =
      _$ProfileImageUpdateStateImpl;
  const _ProfileImageUpdateState._() : super._();

  @override
  List<EditableProfileImage?> get editableProfileImages;

  /// Create a copy of ProfileImageUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileImageUpdateStateImplCopyWith<_$ProfileImageUpdateStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

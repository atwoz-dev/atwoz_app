// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editable_profile_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditableProfileImage {
  int? get id => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  XFile? get imageFile => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  bool get isPrimary => throw _privateConstructorUsedError;
  ProfileImageStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of EditableProfileImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditableProfileImageCopyWith<EditableProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditableProfileImageCopyWith<$Res> {
  factory $EditableProfileImageCopyWith(EditableProfileImage value,
          $Res Function(EditableProfileImage) then) =
      _$EditableProfileImageCopyWithImpl<$Res, EditableProfileImage>;
  @useResult
  $Res call(
      {int? id,
      String? imageUrl,
      XFile? imageFile,
      int order,
      bool isPrimary,
      ProfileImageStatus status});
}

/// @nodoc
class _$EditableProfileImageCopyWithImpl<$Res,
        $Val extends EditableProfileImage>
    implements $EditableProfileImageCopyWith<$Res> {
  _$EditableProfileImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditableProfileImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? imageFile = freezed,
    Object? order = null,
    Object? isPrimary = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileImageStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditableProfileImageImplCopyWith<$Res>
    implements $EditableProfileImageCopyWith<$Res> {
  factory _$$EditableProfileImageImplCopyWith(_$EditableProfileImageImpl value,
          $Res Function(_$EditableProfileImageImpl) then) =
      __$$EditableProfileImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? imageUrl,
      XFile? imageFile,
      int order,
      bool isPrimary,
      ProfileImageStatus status});
}

/// @nodoc
class __$$EditableProfileImageImplCopyWithImpl<$Res>
    extends _$EditableProfileImageCopyWithImpl<$Res, _$EditableProfileImageImpl>
    implements _$$EditableProfileImageImplCopyWith<$Res> {
  __$$EditableProfileImageImplCopyWithImpl(_$EditableProfileImageImpl _value,
      $Res Function(_$EditableProfileImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditableProfileImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? imageFile = freezed,
    Object? order = null,
    Object? isPrimary = null,
    Object? status = null,
  }) {
    return _then(_$EditableProfileImageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileImageStatus,
    ));
  }
}

/// @nodoc

class _$EditableProfileImageImpl implements _EditableProfileImage {
  const _$EditableProfileImageImpl(
      {this.id,
      this.imageUrl,
      this.imageFile,
      required this.order,
      required this.isPrimary,
      required this.status});

  @override
  final int? id;
  @override
  final String? imageUrl;
  @override
  final XFile? imageFile;
  @override
  final int order;
  @override
  final bool isPrimary;
  @override
  final ProfileImageStatus status;

  @override
  String toString() {
    return 'EditableProfileImage(id: $id, imageUrl: $imageUrl, imageFile: $imageFile, order: $order, isPrimary: $isPrimary, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditableProfileImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, imageUrl, imageFile, order, isPrimary, status);

  /// Create a copy of EditableProfileImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditableProfileImageImplCopyWith<_$EditableProfileImageImpl>
      get copyWith =>
          __$$EditableProfileImageImplCopyWithImpl<_$EditableProfileImageImpl>(
              this, _$identity);
}

abstract class _EditableProfileImage implements EditableProfileImage {
  const factory _EditableProfileImage(
      {final int? id,
      final String? imageUrl,
      final XFile? imageFile,
      required final int order,
      required final bool isPrimary,
      required final ProfileImageStatus status}) = _$EditableProfileImageImpl;

  @override
  int? get id;
  @override
  String? get imageUrl;
  @override
  XFile? get imageFile;
  @override
  int get order;
  @override
  bool get isPrimary;
  @override
  ProfileImageStatus get status;

  /// Create a copy of EditableProfileImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditableProfileImageImplCopyWith<_$EditableProfileImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_photo_upload_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfilePhotoUploadRequest _$ProfilePhotoUploadRequestFromJson(
    Map<String, dynamic> json) {
  return _ProfilePhotoUploadRequest.fromJson(json);
}

/// @nodoc
mixin _$ProfilePhotoUploadRequest {
  String? get id => throw _privateConstructorUsedError; // 새 이미지면 null
  bool get isPrimary => throw _privateConstructorUsedError; // 대표 이미지 여부
  int get order => throw _privateConstructorUsedError;

  /// Serializes this ProfilePhotoUploadRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfilePhotoUploadRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfilePhotoUploadRequestCopyWith<ProfilePhotoUploadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePhotoUploadRequestCopyWith<$Res> {
  factory $ProfilePhotoUploadRequestCopyWith(ProfilePhotoUploadRequest value,
          $Res Function(ProfilePhotoUploadRequest) then) =
      _$ProfilePhotoUploadRequestCopyWithImpl<$Res, ProfilePhotoUploadRequest>;
  @useResult
  $Res call({String? id, bool isPrimary, int order});
}

/// @nodoc
class _$ProfilePhotoUploadRequestCopyWithImpl<$Res,
        $Val extends ProfilePhotoUploadRequest>
    implements $ProfilePhotoUploadRequestCopyWith<$Res> {
  _$ProfilePhotoUploadRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfilePhotoUploadRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isPrimary = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfilePhotoUploadRequestImplCopyWith<$Res>
    implements $ProfilePhotoUploadRequestCopyWith<$Res> {
  factory _$$ProfilePhotoUploadRequestImplCopyWith(
          _$ProfilePhotoUploadRequestImpl value,
          $Res Function(_$ProfilePhotoUploadRequestImpl) then) =
      __$$ProfilePhotoUploadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, bool isPrimary, int order});
}

/// @nodoc
class __$$ProfilePhotoUploadRequestImplCopyWithImpl<$Res>
    extends _$ProfilePhotoUploadRequestCopyWithImpl<$Res,
        _$ProfilePhotoUploadRequestImpl>
    implements _$$ProfilePhotoUploadRequestImplCopyWith<$Res> {
  __$$ProfilePhotoUploadRequestImplCopyWithImpl(
      _$ProfilePhotoUploadRequestImpl _value,
      $Res Function(_$ProfilePhotoUploadRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfilePhotoUploadRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isPrimary = null,
    Object? order = null,
  }) {
    return _then(_$ProfilePhotoUploadRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: null == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfilePhotoUploadRequestImpl implements _ProfilePhotoUploadRequest {
  const _$ProfilePhotoUploadRequestImpl(
      {this.id, required this.isPrimary, required this.order});

  factory _$ProfilePhotoUploadRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfilePhotoUploadRequestImplFromJson(json);

  @override
  final String? id;
// 새 이미지면 null
  @override
  final bool isPrimary;
// 대표 이미지 여부
  @override
  final int order;

  @override
  String toString() {
    return 'ProfilePhotoUploadRequest(id: $id, isPrimary: $isPrimary, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilePhotoUploadRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, isPrimary, order);

  /// Create a copy of ProfilePhotoUploadRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfilePhotoUploadRequestImplCopyWith<_$ProfilePhotoUploadRequestImpl>
      get copyWith => __$$ProfilePhotoUploadRequestImplCopyWithImpl<
          _$ProfilePhotoUploadRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfilePhotoUploadRequestImplToJson(
      this,
    );
  }
}

abstract class _ProfilePhotoUploadRequest implements ProfilePhotoUploadRequest {
  const factory _ProfilePhotoUploadRequest(
      {final String? id,
      required final bool isPrimary,
      required final int order}) = _$ProfilePhotoUploadRequestImpl;

  factory _ProfilePhotoUploadRequest.fromJson(Map<String, dynamic> json) =
      _$ProfilePhotoUploadRequestImpl.fromJson;

  @override
  String? get id; // 새 이미지면 null
  @override
  bool get isPrimary; // 대표 이미지 여부
  @override
  int get order;

  /// Create a copy of ProfilePhotoUploadRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfilePhotoUploadRequestImplCopyWith<_$ProfilePhotoUploadRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

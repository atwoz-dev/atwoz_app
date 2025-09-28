// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_image_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileImageResponse _$ProfileImageResponseFromJson(Map<String, dynamic> json) {
  return _ProfileImageResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfileImageResponse {
  int get status => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<ProfileImageData> get data => throw _privateConstructorUsedError;

  /// Serializes this ProfileImageResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileImageResponseCopyWith<ProfileImageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileImageResponseCopyWith<$Res> {
  factory $ProfileImageResponseCopyWith(ProfileImageResponse value,
          $Res Function(ProfileImageResponse) then) =
      _$ProfileImageResponseCopyWithImpl<$Res, ProfileImageResponse>;
  @useResult
  $Res call(
      {int status, String code, String message, List<ProfileImageData> data});
}

/// @nodoc
class _$ProfileImageResponseCopyWithImpl<$Res,
        $Val extends ProfileImageResponse>
    implements $ProfileImageResponseCopyWith<$Res> {
  _$ProfileImageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProfileImageData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileImageResponseImplCopyWith<$Res>
    implements $ProfileImageResponseCopyWith<$Res> {
  factory _$$ProfileImageResponseImplCopyWith(_$ProfileImageResponseImpl value,
          $Res Function(_$ProfileImageResponseImpl) then) =
      __$$ProfileImageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status, String code, String message, List<ProfileImageData> data});
}

/// @nodoc
class __$$ProfileImageResponseImplCopyWithImpl<$Res>
    extends _$ProfileImageResponseCopyWithImpl<$Res, _$ProfileImageResponseImpl>
    implements _$$ProfileImageResponseImplCopyWith<$Res> {
  __$$ProfileImageResponseImplCopyWithImpl(_$ProfileImageResponseImpl _value,
      $Res Function(_$ProfileImageResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? code = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$ProfileImageResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProfileImageData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImageResponseImpl implements _ProfileImageResponse {
  const _$ProfileImageResponseImpl(
      {required this.status,
      required this.code,
      required this.message,
      required final List<ProfileImageData> data})
      : _data = data;

  factory _$ProfileImageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImageResponseImplFromJson(json);

  @override
  final int status;
  @override
  final String code;
  @override
  final String message;
  final List<ProfileImageData> _data;
  @override
  List<ProfileImageData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ProfileImageResponse(status: $status, code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImageResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of ProfileImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImageResponseImplCopyWith<_$ProfileImageResponseImpl>
      get copyWith =>
          __$$ProfileImageResponseImplCopyWithImpl<_$ProfileImageResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImageResponseImplToJson(
      this,
    );
  }
}

abstract class _ProfileImageResponse implements ProfileImageResponse {
  const factory _ProfileImageResponse(
      {required final int status,
      required final String code,
      required final String message,
      required final List<ProfileImageData> data}) = _$ProfileImageResponseImpl;

  factory _ProfileImageResponse.fromJson(Map<String, dynamic> json) =
      _$ProfileImageResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get code;
  @override
  String get message;
  @override
  List<ProfileImageData> get data;

  /// Create a copy of ProfileImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileImageResponseImplCopyWith<_$ProfileImageResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileImageData _$ProfileImageDataFromJson(Map<String, dynamic> json) {
  return _ProfileImageData.fromJson(json);
}

/// @nodoc
mixin _$ProfileImageData {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  bool get isPrimary => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  /// Serializes this ProfileImageData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileImageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileImageDataCopyWith<ProfileImageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileImageDataCopyWith<$Res> {
  factory $ProfileImageDataCopyWith(
          ProfileImageData value, $Res Function(ProfileImageData) then) =
      _$ProfileImageDataCopyWithImpl<$Res, ProfileImageData>;
  @useResult
  $Res call({int id, String url, bool isPrimary, int order});
}

/// @nodoc
class _$ProfileImageDataCopyWithImpl<$Res, $Val extends ProfileImageData>
    implements $ProfileImageDataCopyWith<$Res> {
  _$ProfileImageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileImageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? isPrimary = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$ProfileImageDataImplCopyWith<$Res>
    implements $ProfileImageDataCopyWith<$Res> {
  factory _$$ProfileImageDataImplCopyWith(_$ProfileImageDataImpl value,
          $Res Function(_$ProfileImageDataImpl) then) =
      __$$ProfileImageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String url, bool isPrimary, int order});
}

/// @nodoc
class __$$ProfileImageDataImplCopyWithImpl<$Res>
    extends _$ProfileImageDataCopyWithImpl<$Res, _$ProfileImageDataImpl>
    implements _$$ProfileImageDataImplCopyWith<$Res> {
  __$$ProfileImageDataImplCopyWithImpl(_$ProfileImageDataImpl _value,
      $Res Function(_$ProfileImageDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileImageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? isPrimary = null,
    Object? order = null,
  }) {
    return _then(_$ProfileImageDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$ProfileImageDataImpl implements _ProfileImageData {
  const _$ProfileImageDataImpl(
      {required this.id,
      required this.url,
      required this.isPrimary,
      required this.order});

  factory _$ProfileImageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImageDataImplFromJson(json);

  @override
  final int id;
  @override
  final String url;
  @override
  final bool isPrimary;
  @override
  final int order;

  @override
  String toString() {
    return 'ProfileImageData(id: $id, url: $url, isPrimary: $isPrimary, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImageDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url, isPrimary, order);

  /// Create a copy of ProfileImageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImageDataImplCopyWith<_$ProfileImageDataImpl> get copyWith =>
      __$$ProfileImageDataImplCopyWithImpl<_$ProfileImageDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImageDataImplToJson(
      this,
    );
  }
}

abstract class _ProfileImageData implements ProfileImageData {
  const factory _ProfileImageData(
      {required final int id,
      required final String url,
      required final bool isPrimary,
      required final int order}) = _$ProfileImageDataImpl;

  factory _ProfileImageData.fromJson(Map<String, dynamic> json) =
      _$ProfileImageDataImpl.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  bool get isPrimary;
  @override
  int get order;

  /// Create a copy of ProfileImageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileImageDataImplCopyWith<_$ProfileImageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
